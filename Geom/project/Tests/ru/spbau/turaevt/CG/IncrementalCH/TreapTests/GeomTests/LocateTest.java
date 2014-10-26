package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.PointToConvexHullPosition;

/**
 * LocatePointPositionToConvexHull test
 * Created by Turaev Timur on 22.10.14.
 */
public class LocateTest extends TestPolygon {
    private int testsCount;

    @Before
    public void setUp() throws Exception {
        testsCount = 1000;
    }

    @Test
    public void testVertices() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            for (Point p : pointList) {
                Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(p) == PointToConvexHullPosition.ON);
                Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(p) != PointToConvexHullPosition.IN);
                Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(p) != PointToConvexHullPosition.OUT);
            }
        }
    }

    @Test
    public void testOutPoints() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            PointToConvexHullPosition expected = PointToConvexHullPosition.OUT;
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(-3, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(33, 14, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(-1, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(110, 0, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(14, 0, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(0, 0, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(0, 7, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(0, 71, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(0, 2, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(0, 0, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(14, 1, 0)) == expected);
        }
    }

    @Test
    public void testInPoints() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            PointToConvexHullPosition expected = PointToConvexHullPosition.IN;
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(3, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(4, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(10, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(6, 7, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(1, 4, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(6, 6, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(6, 12, 0)) != expected);
        }
    }

    @Test
    public void testAbovePoints() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            PointToConvexHullPosition expected = PointToConvexHullPosition.ABOVE;
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(1, 9, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(2, 10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(6, 10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(10, 10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(12, 9, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(112, 10, 0)) != expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(10, 8, 0)) != expected);
        }
    }

    @Test
    public void testBelowPoints() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            PointToConvexHullPosition expected = PointToConvexHullPosition.BELOW;
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(4, 1, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(2, -10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(6, -10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(10, -10, 0)) == expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(112, -10, 0)) != expected);
            Assert.assertTrue(convexHull.LocatePointPositionToConvexHull(new Point(10, 8, 0)) != expected);
        }
    }
}
