package treap;

public class Treap<T extends Comparable<T>> {
    private Node<T> root = null;

    private Node<T> merge(Node<T> left, Node<T> right) {
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
        root = merge(merge(splittedNodes.first, new Node<>(key)), splittedNodes.second);
    }

    public Pair<T, T> find(T key) {
        Pair<Node<T>, Node<T>> split = split(root, key);

        Pair<T, T> result = new Pair<>(
                split.first != null ? max(split.first).getData() : null,
                split.second != null ? min(split.second).getData() : null);
        if (result.first != null && result.first.compareTo(key) == 0) result.second = result.first;

        root = merge(split.first, split.second);
        return result;
    }

    private Node<T> max(Node<T> node) {
        if (node.right == null) {
            return node;
        }
        return max(node.right);
    }

    private Node<T> min(Node<T> node) {
        if (node.left == null) {
            return node;
        }
        return min(node.left);
    }

    private Pair<Node<T>, Node<T>> split(T key) {
        Pair<Node<T>, Node<T>> splitted = split(root, key);
        return new Pair<>(splitted.first, splitted.second);
    }
}