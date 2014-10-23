package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

/**
 * Test treap
 *
 * Created by Turaev Timur on 23.10.14.
 */
public class TestTreap {
    protected Treap<Point> treap;

    protected void setUp() throws Exception {
        treap = new Treap<>();
        treap.add(new Point(0, 4, 0, Point.UPPER_CHAIN));
        treap.add(new Point(1, 7, 1, Point.UPPER_CHAIN));
        treap.add(new Point(14, 5, 4, Point.UPPER_CHAIN));
        treap.add(new Point(6, 9, 2, Point.UPPER_CHAIN));
        treap.add(new Point(12, 8, 3, Point.UPPER_CHAIN));
    }
}
