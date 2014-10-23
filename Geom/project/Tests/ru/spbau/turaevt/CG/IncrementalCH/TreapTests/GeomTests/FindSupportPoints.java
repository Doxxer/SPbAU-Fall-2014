package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.PointToLinePosition;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;

/**
 * FindSupportPoints
 * <p/>
 * Created by Turaev Timur on 23.10.14.
 */
public class FindSupportPoints extends TestPolygon {
    private int testsCount;

    @Before
    public void setUp() throws Exception {
        testsCount = 1000;
    }

    @Test
    public void testFindSupportPointOnUpperChain() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            Pair<Point, Point> supportUpper;

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(6, 10, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(1, 7, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(12, 8, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(4, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(1, 7, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(10, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(6, 9, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(12, 8, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(0, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(0, 8, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(0, 7, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(1, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(1, 8, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(1, 12, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(12, 8, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(1, 1000, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(6, 1000, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(12, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(6, 9, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(14, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(6, 9, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(10, 11, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(1, 7, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(11, 11, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(1, 7, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            // out left

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(-1, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(6, 9, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(-1, 15, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(12, 8, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(-1, 4, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(1, 7, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(-1, 2, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(1, 7, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(-1, 0, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportUpper.second == null);

            // out right

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 9, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(6, 9, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 15, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(1, 7, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 5, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(12, 8, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 4, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first.equals(new Point(12, 8, 0)));
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 2, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first == null);
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));

            supportUpper = convexHull.findSupportPoints(convexHull.getUpperTreap(), new Point(15, 0, 0), PointToLinePosition.Right);
            Assert.assertTrue(supportUpper.first == null);
            Assert.assertTrue(supportUpper.second.equals(new Point(14, 5, 0)));
        }
    }

    @Test
    public void testFindSupportPointOnLowerChain() throws Exception {
        for (int i = 0; i < testsCount; i++) {
            init();
            Pair<Point, Point> supportLower;

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(4, 1, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(10, 3, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(2, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(4, 2, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(6, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(4, 2, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(10, 3, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(0, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(4, 2, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(0, 3, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(4, 2, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(0, 1, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(10, 3, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(0, 0, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(10, 3, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(12, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(4, 2, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(14, 0, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(4, 2, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(6, 1, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            // out left
            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(-1, 9, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second == null);

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(-1, 15, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second == null);

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(-1, 4, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(4, 2, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(-1, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(4, 2, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(-1, 0, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(0, 4, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(10, 3, 0)));

            // out right
            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 9, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first == null);
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 15, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first == null);
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 5, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(10, 3, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 4, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(10, 3, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 2, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(4, 2, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));

            supportLower = convexHull.findSupportPoints(convexHull.getLowerTreap(), new Point(15, 0, 0), PointToLinePosition.Left);
            Assert.assertTrue(supportLower.first.equals(new Point(4, 2, 0)));
            Assert.assertTrue(supportLower.second.equals(new Point(14, 5, 0)));
        }
    }
}
