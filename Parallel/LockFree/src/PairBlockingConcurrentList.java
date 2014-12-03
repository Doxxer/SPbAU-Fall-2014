import org.jetbrains.annotations.NotNull;

/**
 * Pair blocking list
 *
 * @author Turaev Timur
 */
public class PairBlockingConcurrentList<T> extends AbstractList<T> {

    public PairBlockingConcurrentList() {
        super();
    }

    @Override
    public boolean insert(@NotNull T element) {
        int key = element.hashCode();

        head.lock();
        ListEntry pred = head;
        try {
            ListEntry curr = pred.next;
            curr.lock();
            try {
                while (curr.key < key) {
                    pred.unlock();
                    pred = curr;
                    curr = curr.next;
                    curr.lock();
                }
                if (curr.key == key) {
                    // there was such element
                    return false;
                }
                ListEntry entry = new ListEntry(element);
                entry.next = curr;
                pred.next = entry;
                return true;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }

    @Override
    public boolean contains(@NotNull T element) {
        int key = element.hashCode();

        head.lock();
        ListEntry pred = head;
        try {
            ListEntry curr = head.next;
            curr.lock();
            try {
                while (curr.key < key) {
                    pred.unlock();
                    pred = curr;
                    curr = curr.next;
                    curr.lock();
                }
                return curr.key == key;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }

    @Override
    public boolean remove(@NotNull T element) {
        int key = element.hashCode();

        head.lock();
        ListEntry pred = head;
        try {
            ListEntry curr = head.next;
            curr.lock();
            try {
                while (curr.key < key) {
                    pred.unlock();
                    pred = curr;
                    curr = curr.next;
                    curr.lock();
                }
                if (curr.key != key) {
                    return false;
                }
                // remove entry curr
                pred.next = curr.next;
                return true;
            } finally {
                curr.unlock();
            }
        } finally {
            pred.unlock();
        }
    }
}
