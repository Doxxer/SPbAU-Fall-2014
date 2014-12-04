import java.text.MessageFormat;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.stream.Stream;

/**
 * Main class
 * <p>
 * Created by Turaev Timur on 01.12.14.
 */
public class Main {
    private static final Random randomGenerator = new Random();
    private static final int MAX_VALUE_IN_LIST = 100;

    public static void main(String[] args) throws InterruptedException {
        if (args.length != 4) {
            System.out.println("Usage: program <readers count> <writers count> <operations count> <list type>");
            System.out.println("where list type = 0 if it's (whole) blocking list ");
            System.out.println("where list type = 1 if it's lock-free list ");
            return;
        }

        int readersCount = Integer.parseInt(args[0]);
        int writersCount = Integer.parseInt(args[1]);
        int maxOperations = Integer.parseInt(args[2]);
        List<Integer> list = Objects.equals(args[3], "0") ? new BlockingConcurrentList<>() : new LockFreeList<>();

        ExecutorService executorService = Executors.newCachedThreadPool();
        Stream.generate(() -> executorService.submit(() -> writerFunction(list, maxOperations))).limit(writersCount).count();
        Stream.generate(() -> executorService.submit(() -> readerFunction(list, maxOperations))).limit(readersCount).count();
        executorService.shutdown();
        executorService.awaitTermination(Long.MAX_VALUE, TimeUnit.DAYS);
    }

    private static void readerFunction(List<Integer> blockingList, int maxOperations) {
        int percent = maxOperations / 100;
        for (int steps = 0; steps < maxOperations; steps++) {
            blockingList.contains(randomGenerator.nextInt(MAX_VALUE_IN_LIST));
            if (steps % percent == 0) {
                System.out.println(MessageFormat.format("thread #{0} - reader {1}% completed", Thread.currentThread().getId(), steps / percent));
            }
        }
    }

    private static void writerFunction(List<Integer> list, int maxOperations) {
        int percent = maxOperations / 100;
        for (int steps = 0; steps < maxOperations; steps++) {
            if (randomGenerator.nextBoolean()) {
                list.insert(randomGenerator.nextInt(MAX_VALUE_IN_LIST));
            } else {
                list.remove(randomGenerator.nextInt(MAX_VALUE_IN_LIST));
            }
            if (steps % percent == 0) {
                System.out.println(MessageFormat.format("thread #{0} - writer {1}% completed", Thread.currentThread().getId(), steps / percent));
            }
        }
    }
}
