package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.ConvexHull;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

import java.util.ArrayList;

/**
 * Test Polygon
 *
 * Created by Turaev Timur on 22.10.14.
 */
public class TestPolygon {
    protected ConvexHull convexHull;
    protected ArrayList<Point> pointList;

    protected void init() {
        convexHull = new ConvexHull();

        Treap<Point> upper = new Treap<>();
        Treap<Point> lower = new Treap<>();

        pointList = new ArrayList<>();
        pointList.add(new Point(0, 4, 0));
        pointList.add(new Point(1, 7, 1));
        pointList.add(new Point(6, 9, 2));
        pointList.add(new Point(12, 8, 3));
        pointList.add(new Point(14, 5, 4));

        pointList.add(new Point(0, 4, 5));
        pointList.add(new Point(4, 2, 6));
        pointList.add(new Point(10, 3, 7));
        pointList.add(new Point(14, 5, 8));

        for (Point p : pointList) {
            if (p.getIndex() <= 4) {
                p.chain += Point.UPPER_CHAIN;
                upper.add(p);                
            } else {
                p.chain += Point.LOWER_CHAIN;
                lower.add(p);
            }
        }

        convexHull.setUpperTreap(upper);
        convexHull.setLowerTreap(lower);
    }
}
