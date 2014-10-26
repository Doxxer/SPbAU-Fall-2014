package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

/**
 * Test treap
 *
 * Created by Turaev Timur on 23.10.14.
 */
public class TestTreap {
    Treap<Point> treap;

    void setUp() {
        treap = new Treap<>();
        Point point = new Point(0, 4, 0, Point.UPPER_CHAIN);
        point.setMargin(true);
        treap.add(point);
        treap.add(new Point(1, 7, 1, Point.UPPER_CHAIN));
        Point p1 = new Point(14, 5, 4, Point.UPPER_CHAIN);
        p1.setMargin(true);
        treap.add(p1);
        treap.add(new Point(6, 9, 2, Point.UPPER_CHAIN));
        treap.add(new Point(12, 8, 3, Point.UPPER_CHAIN));
    }
}
