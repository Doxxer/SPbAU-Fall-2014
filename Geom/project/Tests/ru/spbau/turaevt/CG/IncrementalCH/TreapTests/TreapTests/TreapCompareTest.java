package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests;

import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Node;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

import java.util.ArrayList;

/**
 * Test left subtree in lessOrEqual, right -- is greater then root
 * Created by Turaev Timur on 22.10.14.
 */
public class TreapCompareTest extends TreapCompareBase {
    private Treap<Point> treap;
    private ArrayList<Point> pointsList;

    public void setUp() throws Exception {
        treap = new Treap<>();
        pointsList = new ArrayList<>();
        pointsList.add(new Point(0, 0, 0));
        pointsList.add(new Point(2, 2, 1));
        pointsList.add(new Point(2, 0, 2));
        pointsList.add(new Point(0, 4, 3));
        pointsList.add(new Point(0, 2, 4));
        pointsList.add(new Point(1, 5, 5));
        pointsList.add(new Point(2, 6, 6));

        for (Point p : pointsList) {
            treap.add(p);
        }
    }

    @Test
    public void test() throws Exception {
        for (int i = 0; i < 1000; i++) {
            setUp();
            checkLessEqualAndGreaterSubTrees();
        }
    }

    private void checkLessEqualAndGreaterSubTrees() {
        for (Point p : pointsList) {
            Pair<Node<Point>, Node<Point>> split = treap.split(p);

            checkLessEqual(split.first, p);
            checkGreater(split.second, p);

            checkLessEqual(treap.getRoot().left, treap.getRoot().getData());
            checkGreater(treap.getRoot().right, treap.getRoot().getData());
        }
    }
}
