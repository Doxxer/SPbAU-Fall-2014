import java.text.MessageFormat;
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
        List<Integer> list = new LockFreeList<>();
        int writersCount = 16;
        int readersCount = 16;
        int maxOperations = 1_000_000;

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
