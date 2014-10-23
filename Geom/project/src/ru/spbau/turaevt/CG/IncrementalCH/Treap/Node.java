package ru.spbau.turaevt.CG.IncrementalCH.Treap;

import java.util.Random;

public class Node<T> {
    private static final Random random = new Random();
    private final int priority;
    private final T data;
    public Node<T> left, right;
    private Node<T> prev;
    private Node<T> next;

    public Node(T data) {
        this.data = data;
        this.priority = random.nextInt();
    }

    public Node<T> max() {
        return max(this);
    }

    public Node<T> min() {
        return min(this);
    }

    private Node<T> max(Node<T> node) {
        if (node == null) return null;
        if (node.right == null) {
            return node;
        }
        return max(node.right);
    }

    private Node<T> min(Node<T> node) {
        if (node == null) return null;
        if (node.left == null) {
            return node;
        }
        return min(node.left);
    }

    public Node<T> getPrev() {
        return prev;
    }

    public void setPrev(Node<T> prev) {
        this.prev = prev;
    }

    public Node<T> getNext() {
        return next;
    }

    public void setNext(Node<T> next) {
        this.next = next;
    }

    public T getData() {
        return data;
    }

    public int getPriority() {
        return priority;
    }
}
