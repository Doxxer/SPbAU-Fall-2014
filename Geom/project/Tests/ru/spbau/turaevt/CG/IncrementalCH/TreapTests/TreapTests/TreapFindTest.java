package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests;

import org.junit.Assert;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;

public class TreapFindTest extends TestTreap {

    @Test
    public void testFind() throws Exception {
        for (int i = 0; i < 1000; i++) {
            setUp();
            Pair<Point, Point> pair = treap.findBounds(new Point(-1, 3, 0));
            Assert.assertTrue(pair.first == null && pair.second.equals(new Point(0, 4, 0)));

            pair = treap.findBounds(new Point(0, 4, 0));
            Assert.assertTrue(pair.first.equals(new Point(0, 4, 0)) && pair.second.equals(new Point(0, 4, 0)));
            pair = treap.findBounds(new Point(0, 2, 0));
            Assert.assertTrue(pair.first == null && pair.second.equals(new Point(0, 4, 0)));
            pair = treap.findBounds(new Point(0, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(0, 4, 0)) && pair.second.equals(new Point(1, 7, 0)));

            pair = treap.findBounds(new Point(1, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(1, 7, 0)));

            pair = treap.findBounds(new Point(2, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
            pair = treap.findBounds(new Point(3, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
            pair = treap.findBounds(new Point(4, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
            pair = treap.findBounds(new Point(5, 7, 0));
            Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));

            pair = treap.findBounds(new Point(6, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(6, 9, 0)));

            pair = treap.findBounds(new Point(7, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
            pair = treap.findBounds(new Point(8, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
            pair = treap.findBounds(new Point(9, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
            pair = treap.findBounds(new Point(10, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
            pair = treap.findBounds(new Point(11, 9, 0));
            Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));

            pair = treap.findBounds(new Point(12, 8, 0));
            Assert.assertTrue(pair.first.equals(new Point(12, 8, 0)) && pair.second.equals(new Point(12, 8, 0)));

            pair = treap.findBounds(new Point(13, 8, 0));
            Assert.assertTrue(pair.first.equals(new Point(12, 8, 0)) && pair.second.equals(new Point(14, 5, 0)));

            pair = treap.findBounds(new Point(14, 5, 0));
            Assert.assertTrue(pair.first.equals(new Point(14, 5, 0)) && pair.second.equals(new Point(14, 5, 0)));

            pair = treap.findBounds(new Point(15, 5, 0));
            Assert.assertTrue(pair.first.equals(new Point(14, 5, 0)) && pair.second == null);
        }
    }
}
