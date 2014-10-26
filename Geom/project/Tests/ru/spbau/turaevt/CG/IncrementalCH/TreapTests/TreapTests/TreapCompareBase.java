package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests;

import org.junit.Assert;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Node;

/**
 *
 * Created by Turaev Timur on 22.10.14.
 */
public class TreapCompareBase {
    void checkLessEqual(Node<Point> node, Point key) {
        if (node == null) {
            return;
        }
        Assert.assertTrue(node.getData().compareTo(key) <= 0);
        checkLessEqual(node.left, key);
        checkLessEqual(node.right, key);
    }

    void checkGreater(Node<Point> node, Point key) {
        if (node == null) {
            return;
        }
        Assert.assertTrue(node.getData().compareTo(key) > 0);
        checkGreater(node.left, key);
        checkGreater(node.right, key);
    }
}
