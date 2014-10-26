package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.PointToLinePosition;

import java.util.ArrayList;

/**
 * Insert points test
 * Created by Turaev Timur on 23.10.14.
 */
public class InsertPointsTest extends TestPolygon {
    private int testsCount;

    @Before
    public void setUp() throws Exception {
        testsCount = 1000;
    }

    @Test
    public void testInsertToUpperTreap() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();

            ArrayList<Point> deletedPoints;
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(6, 10, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 2), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(4, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 0), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(10, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 0), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(0, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(0, 8, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(0, 7, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(1, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(1, 8, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(1, 12, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 2), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(1, 1000, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 3), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(6, 1000, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 3), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(12, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(3, 3), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(14, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(3, 4), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(10, 11, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 3), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(11, 11, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 3), deletedPoints.toArray());

            // out left

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(-1, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(0, 1), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(-1, 15, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(0, 2), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(-1, 4, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(0, 0), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(-1, 2, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(0, 0), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(-1, 0, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 0), deletedPoints.toArray());

            // out right

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 9, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(3, 4), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 15, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(2, 4), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 5, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(4, 4), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 4, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(4, 4), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 2, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 0), deletedPoints.toArray());

            init();
            deletedPoints = convexHull.insertPointToTreap(convexHull.getUpperTreap(), new Point(15, 0, 5, Point.UPPER_CHAIN), PointToLinePosition.Right);
            Assert.assertArrayEquals(getPointsFromIndexToIndex(1, 0), deletedPoints.toArray());
        }
    }

    @Test
    public void testInsertToLowerTreap() throws Exception {
        ArrayList<Point> deletedPoints;

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(4, 1, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 6), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(2, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(6, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(0, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 5), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(0, 3, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 5), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(0, 1, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 6), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(0, 0, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 6), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(12, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(7, 7), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(14, 0, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(7, 7), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(6, 1, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 7), deletedPoints.toArray());

        // out left
        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(-1, 9, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(-1, 15, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(-1, 4, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 5), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(-1, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 5), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(-1, 0, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(5, 6), deletedPoints.toArray());

        // out right
        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 9, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 15, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(6, 0), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 5, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(8, 8), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 4, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(8, 8), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 2, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(7, 8), deletedPoints.toArray());

        init();
        deletedPoints = convexHull.insertPointToTreap(convexHull.getLowerTreap(), new Point(15, 0, 10, Point.LOWER_CHAIN), PointToLinePosition.Left);
        Assert.assertArrayEquals(getPointsFromIndexToIndex(7, 8), deletedPoints.toArray());

    }

    private Object[] getPointsFromIndexToIndex(int begin, int end) {
        ArrayList<Point> result = new ArrayList<>();
        for (Point p : pointList) {
            if (p.getIndex() >= begin && p.getIndex() <= end) {
                result.add(p);
            }
        }
        return result.toArray();
    }
}
