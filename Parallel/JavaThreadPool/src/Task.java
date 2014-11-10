import java.util.Optional;
import java.util.function.Supplier;

/**
 * Task class
 * <p>
 * Created by Turaev Timur on 09.11.14.
 */
public class Task<T> implements Runnable {
    private final int ID;
    private final Supplier<T> function;
    private final Future<T> future;
    private Optional<T> futureResult = Optional.empty();

    public Task(int ID, Supplier<T> function) {
        this.ID = ID;
        this.function = function;

        future = new Future<T>() {
            @Override
            public T get() throws InterruptedException {
                synchronized (this) {
                    while (!futureResult.isPresent()) {
                        this.wait();
                    }
                }
                return futureResult.get();
            }

            @Override
            public boolean isDone() {
                return futureResult.isPresent();
            }
        };
    }

    public int getID() {
        return ID;
    }

    public Future<T> getFuture() {
        return future;
    }

    @Override
    public void run() {
        T result = function.get();
        synchronized (future) {
            futureResult = Optional.of(result);
            future.notifyAll();
        }
    }
}
