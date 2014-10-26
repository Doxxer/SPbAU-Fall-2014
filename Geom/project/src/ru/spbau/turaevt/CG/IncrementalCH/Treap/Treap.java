package ru.spbau.turaevt.CG.IncrementalCH.Treap;

public class Treap<T extends Comparable<T>> {
    private Node<T> root = null;

    public Treap(Node<T> root) {
        this.root = root;
    }

    public Treap() {

    }

    public void setRoot(Node<T> root) {
        this.root = root;
    }

    public Node<T> remove(Node<T> node, T element) {
        if (node == null) {
            return null;
        }
        if (node.getData().equals(element)) {
            return merge(node.left, node.right);
        } else if (element.compareTo(node.getData()) < 0) {
            node.left = remove(node.left, element);
        } else {
            node.right = remove(node.right, element);
        }
        return node;
    }

    public Node<T> merge(Node<T> left, Node<T> right) {
        if (right == null) return left;
        if (left == null) return right;

        if (left.getPriority() < right.getPriority()) {
            right.left = merge(left, right.left);
            return right;
        } else {
            left.right = merge(left.right, right);
            return left;
        }
    }

    private Pair<Node<T>, Node<T>> split(Node<T> node, T key) {
        if (node == null) {
            return new Pair<>(null, null);
        }

        Pair<Node<T>, Node<T>> splitResult = new Pair<>(null, null);
        if (key.compareTo(node.getData()) >= 0) {
            Pair<Node<T>, Node<T>> splittedNodes = split(node.right, key);
            node.right = null;
            splitResult.first = merge(node, splittedNodes.first);
            splitResult.second = splittedNodes.second;
        } else {
            Pair<Node<T>, Node<T>> splittedNodes = split(node.left, key);
            node.left = null;
            splitResult.first = splittedNodes.first;
            splitResult.second = merge(splittedNodes.second, node);
        }
        return splitResult;
    }

    public void add(T key) {
        Pair<Node<T>, Node<T>> splittedNodes = split(key);
        Node<T> node = new Node<>(key);

        Node<T> max = splittedNodes.first != null ? splittedNodes.first.max() : null;
        Node<T> min = splittedNodes.second != null ? splittedNodes.second.min() : null;

        if (max != null) {
            max.setNext(node);
            node.setPrev(max);
        }
        if (min != null) {
            node.setNext(min);
            min.setPrev(node);
        }
        root = merge(merge(splittedNodes.first, node), splittedNodes.second);
    }

    public Pair<T, T> findBounds(T key) {
        Pair<Node<T>, Node<T>> split = split(root, key);

        Pair<T, T> result = new Pair<>(
                split.first != null ? split.first.max().getData() : null,
                split.second != null ? split.second.min().getData() : null);
        if (result.first != null && key.equals(result.first)) result.second = result.first;

        root = merge(split.first, split.second);
        return result;
    }

    public Node<T> getRoot() {
        return root;
    }

    public Pair<Node<T>, Node<T>> split(T key) {
        Pair<Node<T>, Node<T>> splitted = split(root, key);
        return new Pair<>(splitted.first, splitted.second);
    }

    public int size()
    {
        return root == null ? 0 : root.size();
    }
}