import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Base class for concurrent list
 *
 * @author Turaev Timur
 */
public abstract class AbstractBlockingConcurrentList<T> extends AbstractList<T> {
    protected final Lock lock = new ReentrantLock();

    protected AbstractBlockingConcurrentList() {
        super();
    }
}
