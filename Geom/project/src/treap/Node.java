package treap;

import java.util.Random;

public class Node<T> {
    private static final Random random = new Random();
    private final int priority;
    private final T data;
    public Node<T> left, right;

    Node(T data) {
        this.data = data;
        this.priority = random.nextInt();
    }

    public T getData() {
        return data;
    }

    public int getPriority() {
        return priority;
    }
}
