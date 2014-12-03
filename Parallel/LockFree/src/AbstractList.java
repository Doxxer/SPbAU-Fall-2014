import org.jetbrains.annotations.NotNull;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Base class for list
 *
 * @author Turaev Timur
 */
public abstract class AbstractList<T> implements List<T> {
    protected final ListEntry head;

    protected AbstractList() {
        head = new ListEntry(Integer.MIN_VALUE);
        head.next = new ListEntry(Integer.MAX_VALUE);
    }

    protected class ListEntry {
        protected ListEntry(int key) {
            this(null, key, null);
        }

        protected ListEntry(@NotNull T object) {
            this(object, object.hashCode(), null);
        }

        private ListEntry(T object, int key, ListEntry next) {
            this.object = object;
            this.key = key;
            this.next = next;
            this.lock = new ReentrantLock();
        }

        protected void lock() {
            lock.lock();
        }

        protected void unlock() {
            lock.unlock();
        }

        protected final T object;
        protected final int key;
        protected ListEntry next;
        private Lock lock;
    }
}
