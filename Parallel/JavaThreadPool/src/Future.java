/**
 * Future interface
 * <p>
 * Created by Turaev Timur on 09.11.14.
 */
public interface Future<T> {
    public T get() throws InterruptedException;

    public boolean isDone();
}
