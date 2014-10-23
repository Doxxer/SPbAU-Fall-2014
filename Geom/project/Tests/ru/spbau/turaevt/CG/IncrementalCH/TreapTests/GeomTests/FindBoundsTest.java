package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import org.junit.Assert;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Edge;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;

/**
 * Find support points test
 * <p/>
 * Created by Turaev Timur on 22.10.14.
 */
public class FindBoundsTest extends TestPolygon {
    @Test
    public void testVertices() throws Exception {
        for (int i = 0; i < 1000; i++) {
            init();

            for (Point p : pointList) {
                Pair<Edge, Edge> locate = convexHull.LocateBoundEdges(p);

                if (p.isOnUpperChain())
                    Assert.assertTrue(locate.first.first.equals(p) && locate.first.second.equals(p));
                if (p.isOnBottomChain())
                    Assert.assertTrue(locate.second.first.equals(p) && locate.second.second.equals(p));
            }
        }
    }

    @Test
    public void testBetweenPoints() throws Exception {
        for (int i = 0; i < 1000; i++) {
            init();
            Pair<Edge, Edge> locate = convexHull.LocateBoundEdges(new Point(3, 4, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(1, 7, 1)) && locate.first.second.equals(new Point(6, 9, 2)));
            Assert.assertTrue(locate.second.first.equals(new Point(0, 4, 1)) && locate.second.second.equals(new Point(4, 2, 2)));

            locate = convexHull.LocateBoundEdges(new Point(13, 114, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(12, 8, 3)) && locate.first.second.equals(new Point(14, 5, 4)));
            Assert.assertTrue(locate.second.first.equals(new Point(10, 3, 3)) && locate.second.second.equals(new Point(14, 5, 4)));
        }
    }

    @Test
    public void testMarginPoints() throws Exception {
        for (int i = 0; i < 1000; i++) {
            init();
            Pair<Edge, Edge> locate;
            locate = convexHull.LocateBoundEdges(new Point(0, 7, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(0, 4, 0)) && locate.first.second.equals(new Point(0, 4, 0)));
            Assert.assertTrue(locate.second.first.equals(new Point(0, 4, 0)) && locate.second.second.equals(new Point(0, 4, 0)));

            locate = convexHull.LocateBoundEdges(new Point(0, 2, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(0, 4, 0)) && locate.first.second.equals(new Point(0, 4, 0)));
            Assert.assertTrue(locate.second.first.equals(new Point(0, 4, 0)) && locate.second.second.equals(new Point(0, 4, 0)));

            locate = convexHull.LocateBoundEdges(new Point(14, 7, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(14, 5, 4)) && locate.first.second.equals(new Point(14, 5, 4)));
            Assert.assertTrue(locate.second.first.equals(new Point(14, 5, 4)) && locate.second.second.equals(new Point(14, 5, 4)));

            locate = convexHull.LocateBoundEdges(new Point(14, 2, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(14, 5, 4)) && locate.first.second.equals(new Point(14, 5, 4)));
            Assert.assertTrue(locate.second.first.equals(new Point(14, 5, 4)) && locate.second.second.equals(new Point(14, 5, 4)));
        }
    }

    @Test
    public void testOutPoints() throws Exception {
        for (int i = 0; i < 1000; i++) {
            init();
            Pair<Edge, Edge> locate = convexHull.LocateBoundEdges(new Point(-3, 4, 0));
            Assert.assertTrue(locate.first.first == null && locate.first.second.equals(new Point(0, 4, 0)));
            Assert.assertTrue(locate.second.first == null && locate.second.second.equals(new Point(0, 4, 0)));

            locate = convexHull.LocateBoundEdges(new Point(313, 114, 0));
            Assert.assertTrue(locate.first.first.equals(new Point(14, 5, 4)) && locate.first.second == null);
            Assert.assertTrue(locate.second.first.equals(new Point(14, 5, 4)) && locate.second.second == null);
        }
    }
}
