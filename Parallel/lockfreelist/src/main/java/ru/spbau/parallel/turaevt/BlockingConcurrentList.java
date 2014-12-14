package ru.spbau.parallel.turaevt;

/**
 * Blocking list
 *
 * @author Turaev Timur
 */
public class BlockingConcurrentList<T> implements List<T> {

    private final Object lock = new Object();
    private final ListEntry head;

    public BlockingConcurrentList() {
        head = new ListEntry(Integer.MIN_VALUE);
        head.next = new ListEntry(Integer.MAX_VALUE);
    }

    @Override
    public boolean insert(T element) {
        ListEntry pred, curr;
        int key = element.hashCode();

        // lock all list
        synchronized (lock) {
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
        }
    }

    @Override
    public boolean remove(T element) {
        ListEntry pred, curr;
        int key = element.hashCode();

        // lock all list
        synchronized (lock) {
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
        }
    }

    @Override
    public boolean contains(T element) {
        ListEntry curr;
        int key = element.hashCode();

        // lock all list
        synchronized (lock) {
            curr = head.next;
            while (curr.key < key) {
                curr = curr.next;
            }
            return curr.key == key;
        }
    }

    private class ListEntry {
        private ListEntry(int key) {
            this(null, key, null);
        }

        private ListEntry(T object) {
            this(object, object.hashCode(), null);
        }

        private ListEntry(T object, int key, ListEntry next) {
            this.object = object;
            this.key = key;
            this.next = next;
        }

        private final T object;
        private final int key;
        private ListEntry next;
    }
}
