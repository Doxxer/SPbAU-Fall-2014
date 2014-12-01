import java.text.MessageFormat;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * Thread pool class
 * <p>
 * Created by Turaev Timur on 09.11.14.
 */
public class ThreadPool {
    private final int hotThreadsCount;
    private final int idleTimeout;

    private final List<Thread> threads;
    private final LinkedBlockingQueue<Task> taskQueue = new LinkedBlockingQueue<>();
    private final Map<Integer, Thread> workersMap = new ConcurrentHashMap<>(); // keys - task ID
    private final Set<Integer> cancelledTasks = new ConcurrentSkipListSet<>(); // keys - task ID

    private final AtomicBoolean threadPoolShutdown = new AtomicBoolean(false);
    private final AtomicInteger lastTaskID = new AtomicInteger(0);

    /**
     * Creates new thread pool
     *
     * @param hotThreadsCount hot thread count
     * @param idleTimeout     shutdown timeout for cold thread
     */
    public ThreadPool(int hotThreadsCount, int idleTimeout) {
        this.hotThreadsCount = hotThreadsCount;
        this.idleTimeout = idleTimeout;

        this.threads = Stream.generate(() -> new Thread(new Worker())).limit(hotThreadsCount).collect(Collectors.toList());
        threads.forEach(Thread::start);
    }

    /**
     * Adds task to queue
     *
     * @param userTask task to be added
     * @return added task ID
     */
    public Integer addTask(UserTask userTask) {
        Task task = new Task(lastTaskID.getAndIncrement(), userTask);

        synchronized (threads) {
            if (threads.size() == workersMap.size()) {
                // add task and create new cold thread for the task
                taskQueue.add(task);
                Thread thread = new Thread(new Worker());
                threads.add(thread);
                thread.start();
            } else {
                // just add task
                taskQueue.add(task);
            }
        }
        return task.ID;
    }

    /**
     * stop and remove task from threadPool by ID
     *
     * @param ID ID task to be removed
     */
    public void removeTask(int ID) {
        synchronized (workersMap) {
            Thread threadToBeInterrupted = workersMap.get(ID);
            if (threadToBeInterrupted != null) {
                threadToBeInterrupted.interrupt();
            } else {
                cancelledTasks.add(ID);
            }
        }
    }

    /**
     * Shutdown thread pool
     */
    public void shutdown() {
        threadPoolShutdown.set(true);
        synchronized (threads) {
            threads.forEach(Thread::interrupt);
        }
    }

    private void print(String message) {
        System.out.println(message);
        System.out.flush();
    }

    private class Worker implements Runnable {
        public static final int INVALID_TASK_ID = -42;

        @Override
        public void run() {
            print("thread started");
            int currentTaskID = INVALID_TASK_ID;

            while (!threadPoolShutdown.get()) {
                try {
                    Task task = taskQueue.poll(idleTimeout, TimeUnit.SECONDS);
                    if (task != null) {
                        // run task
                        // but maybe it has been cancelled in other thread?
                        synchronized (workersMap) {
                            if (cancelledTasks.remove(task.ID)) {
                                continue;
                            }
                            currentTaskID = task.ID;
                            workersMap.put(currentTaskID, Thread.currentThread());
                        }
                        print(MessageFormat.format("task with ID=#{0} started!", currentTaskID));
                        task.run();
                    } else {
                        // no tasks in queue and thread is cold
                        synchronized (threads) {
                            if (threads.size() > hotThreadsCount && taskQueue.isEmpty()) {
                                threads.remove(Thread.currentThread());
                                break;
                            }
                        }
                    }
                } catch (InterruptedException ignored) {
                } finally {
                    // if there is finished task - remove its executor from workersMap
                    if (currentTaskID != INVALID_TASK_ID) {
                        workersMap.remove(currentTaskID);
                        print(MessageFormat.format("task with ID=#{0} finished!", currentTaskID));
                        currentTaskID = INVALID_TASK_ID;
                    }
                }
            }
            print("thread finished");
        }
    }

    private class Task implements Runnable {
        private final Integer ID;
        private final Runnable userTask;

        public Task(Integer ID, Runnable userTask) {
            this.ID = ID;
            this.userTask = userTask;
        }

        @Override
        public void run() {
            userTask.run();
        }
    }
}
