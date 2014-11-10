import java.text.MessageFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Supplier;
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
    private final HashSet<Integer> cancelledTaskIDs;
    private final HashMap<Integer, Thread> runningTasks;
    private final LinkedBlockingQueue<Task> newTasks;
    private final AtomicBoolean threadPoolShutdown = new AtomicBoolean();
    private final AtomicInteger lastTaskID = new AtomicInteger();

    public ThreadPool(int hotThreadsCount, int idleTimeout) {
        this.hotThreadsCount = hotThreadsCount;
        this.idleTimeout = idleTimeout;
        this.threadPoolShutdown.set(false);
        this.lastTaskID.set(0);
        this.cancelledTaskIDs = new HashSet<>();
        this.runningTasks = new HashMap<>();
        this.newTasks = new LinkedBlockingQueue<>();
        this.threads = Stream.generate(() -> new Thread(new Worker())).limit(hotThreadsCount).collect(Collectors.toList());

        synchronized (threads) {
            threads.forEach(Thread::start);
        }
    }

    public <T> Tuple<Integer, Future<T>> add(Supplier<T> function) {
        Task<T> task = new Task<>(lastTaskID.getAndIncrement(), function);

        try {
            synchronized (threads) {
                if (threads.size() == runningTasks.size()) {
                    newTasks.put(task);
                    Thread thread = new Thread(new Worker());
                    threads.add(thread);
                    thread.start();
                } else {
                    newTasks.put(task);
                }
            }
        } catch (InterruptedException ignored) {
        }
        return new Tuple<>(task.getID(), task.getFuture());
    }

    public void shutdown() {
        threadPoolShutdown.set(true);
        synchronized (threads) {
            threads.forEach(Thread::interrupt);
        }
    }

    public void remove(int ID) {
        synchronized (cancelledTaskIDs) {
            cancelledTaskIDs.add(ID);
        }
        synchronized (runningTasks) {
            if (runningTasks.containsKey(ID)) {
                runningTasks.get(ID).interrupt();
            }
        }
    }

    private class Worker implements Runnable {
        public static final int INVALID_TASK_ID = -42;

        private int currentTaskID = INVALID_TASK_ID;

        @Override
        public void run() {
            System.out.println("^^^ thread started");

            while (!threadPoolShutdown.get()) {
                try {
                    Task task = newTasks.poll(idleTimeout, TimeUnit.SECONDS);
                    if (task != null) {
                        runTask(task);
                    } else {
                        synchronized (threads) {
                            if (threads.size() > hotThreadsCount && newTasks.isEmpty()) {
                                threads.remove(Thread.currentThread());
                                System.out.println("- thread");
                                return;
                            }
                        }
                    }
                } catch (InterruptedException ignored) {
                } finally {
                    if (currentTaskID != INVALID_TASK_ID) {
                        synchronized (runningTasks) {
                            runningTasks.remove(currentTaskID);
                        }
                        System.out.println(MessageFormat.format("--- task #{0}", currentTaskID));
                        currentTaskID = INVALID_TASK_ID;
                    }
                }
            }
            System.out.println("^^^ thread finished");
        }

        private void runTask(Task task) {
            synchronized (runningTasks) {
                if (isNotCancelled(task)) {
                    currentTaskID = task.getID();
                    runningTasks.put(currentTaskID, Thread.currentThread());
                } else {
                    return;
                }
            }
            System.out.println(MessageFormat.format("+++ task #{0}", currentTaskID));
            task.run();
        }

        private boolean isNotCancelled(Task task) {
            synchronized (cancelledTaskIDs) {
                return !cancelledTaskIDs.remove(task.getID());
            }
        }
    }
}
