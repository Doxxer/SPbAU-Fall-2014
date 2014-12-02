import org.jetbrains.annotations.NotNull;

/**
 * Blocking list
 *
 * @author Turaev Timur
 */
public class WholeBlockingConcurrentList<T> extends AbstractBlockingConcurrentList<T> {

    public WholeBlockingConcurrentList() {
        super();
    }

    @Override
    public boolean insert(@NotNull T element) {
        ListEntry pred, curr;
        int key = element.hashCode();

        // lock all list
        lock.lock();
        try {
            pred = head;
            curr = head.next;
            while (curr.key < key) {
                pred = curr;
                curr = curr.next;
            }
            if (curr.key == key) {
                // there was such element
                return false;
            }

            // insert new entry between pred and curr
            ListEntry entry = new ListEntry(element);
            entry.next = curr;
            pred.next = entry;
            return true;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public boolean remove(@NotNull T element) {
        ListEntry pred, curr;
        int key = element.hashCode();

        // lock all list
        lock.lock();
        try {
            pred = head;
            curr = head.next;
            while (curr.key < key) {
                pred = curr;
                curr = curr.next;
            }
            if (curr.key != key) {
                return false;
            }
            // remove entry curr
            pred.next = curr.next;
            return true;
        } finally {
            lock.unlock();
        }
    }

    @Override
    public boolean contains(@NotNull T element) {
        ListEntry curr;
        int key = element.hashCode();

        // lock all list
        lock.lock();
        try {
            curr = head.next;
            while (curr.key < key) {
                curr = curr.next;
            }
            return curr.key == key;
        } finally {
            lock.unlock();
        }
    }
}
