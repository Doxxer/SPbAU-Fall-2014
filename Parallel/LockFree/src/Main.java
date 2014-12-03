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
        List<Integer> blockingList = new PairBlockingConcurrentList<>();
        int writersCount = 16;
        int readersCount = 16;
        int maxOperations = 1_000_000;

        ExecutorService executorService = Executors.newCachedThreadPool();
        Stream.generate(() -> executorService.submit(() -> writerFunction(blockingList, maxOperations))).limit(writersCount).count();
        Stream.generate(() -> executorService.submit(() -> readerFunction(blockingList, maxOperations))).limit(readersCount).count();
        executorService.shutdown();
        executorService.awaitTermination(Long.MAX_VALUE, TimeUnit.DAYS);
    }

    private static void readerFunction(List<Integer> blockingList, int maxOperations) {
        int percent = maxOperations / 10;
        for (int steps = 0; steps < maxOperations; steps++) {
            blockingList.remove(randomGenerator.nextInt(MAX_VALUE_IN_LIST));
            if (steps % percent == 0) {
                System.out.println(MessageFormat.format("{0} - read at {1}0%", Thread.currentThread(), steps / percent));
            }
        }
    }

    private static void writerFunction(List<Integer> blockingList, int maxOperations) {
        int percent = maxOperations / 10;
        for (int steps = 0; steps < maxOperations; steps++) {
            blockingList.insert(randomGenerator.nextInt(MAX_VALUE_IN_LIST));
            if (steps % percent == 0) {
                System.out.println(MessageFormat.format("{0} - write at {1}0%", Thread.currentThread(), steps / percent));
            }
        }
    }
}
