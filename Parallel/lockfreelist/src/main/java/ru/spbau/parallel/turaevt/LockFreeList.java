package ru.spbau.parallel.turaevt;

import java.util.concurrent.atomic.AtomicMarkableReference;

/**
 * Lock-free list
 *
 * @author Turaev Timur
 */
public class LockFreeList<T> implements List<T> {
    private final ListEntry head;

    public LockFreeList() {
        head = new ListEntry(Integer.MIN_VALUE);
        head.next = new AtomicMarkableReference<>(new ListEntry(Integer.MAX_VALUE), false);
    }

    @Override
    public boolean insert(T element) {
        int key = element.hashCode();

        while (true) {
            Pair<ListEntry, ListEntry> pair = find(head, key);
            ListEntry pred = pair.fst, curr = pair.snd;
            if (curr.key == key) {
                return false;
            } else {
                ListEntry node = new ListEntry(element);
                node.next = new AtomicMarkableReference<>(curr, false);
                if (pred.next.compareAndSet(curr, node, false, false)) {
                    return true;
                }
            }
        }
    }

    @Override
    public boolean contains(T element) {
        int key = element.hashCode();
        boolean[] marked = {false};

        ListEntry curr = head;
        while (curr.key < key) {
            curr = curr.next.get(marked);
        }
        return curr.key == key && !marked[0];
    }

    @Override
    public boolean remove(T element) {
        int key = element.hashCode();

        while (true) {
            Pair<ListEntry, ListEntry> pair = find(head, key);
            ListEntry pred = pair.fst, curr = pair.snd;
            if (curr.key != key) {
                return false;
            } else {
                ListEntry succ = curr.next.getReference();
                if (!curr.next.attemptMark(succ, true)) {
                    continue;
                }
                pred.next.compareAndSet(curr, succ, false, false);
                return true;
            }
        }
    }

    private Pair<ListEntry, ListEntry> find(ListEntry head, int key) {
        ListEntry pred, curr, succ;
        boolean[] marked = {false};

        again:
        while (true) {
            pred = head;
            curr = pred.next.getReference();

            while (true) {
                succ = curr.next.get(marked);
                while (marked[0]) {
                    if (!pred.next.compareAndSet(curr, succ, false, false)) {
                        continue again;
                    }
                    curr = succ;
                    succ = curr.next.get(marked);
                }
                if (curr.key >= key) {
                    return new Pair<>(pred, curr);
                }
                pred = curr;
                curr = succ;
            }
        }
    }

    private class ListEntry {
        private ListEntry(int key) {
            this(null, key, new AtomicMarkableReference<>(null, false));
        }

        private ListEntry(T object) {
            this(object, object.hashCode(), new AtomicMarkableReference<>(null, false));
        }

        private ListEntry(T object, int key, AtomicMarkableReference<ListEntry> next) {
            this.object = object;
            this.key = key;
            this.next = next;
        }

        private final T object;
        private final int key;
        private AtomicMarkableReference<ListEntry> next;
    }

    private final class Pair<A, B> {
        public final A fst;
        public final B snd;

        public Pair(A var1, B var2) {
            this.fst = var1;
            this.snd = var2;
        }
    }
}
