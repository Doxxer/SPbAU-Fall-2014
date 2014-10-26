package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.ConvexHull;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

import java.util.ArrayList;

/**
 * Test Polygon
 * <p/>
 * Created by Turaev Timur on 22.10.14.
 */
public class TestPolygon {
    ConvexHull convexHull;
    ArrayList<Point> pointList;

    void init() {
        convexHull = new ConvexHull();

        Treap<Point> upper = new Treap<>();
        Treap<Point> lower = new Treap<>();

        pointList = new ArrayList<>();
        pointList.add(new Point(0, 4, 0, Point.UPPER_CHAIN));
        pointList.add(new Point(1, 7, 1, Point.UPPER_CHAIN));
        pointList.add(new Point(6, 9, 2, Point.UPPER_CHAIN));
        pointList.add(new Point(12, 8, 3, Point.UPPER_CHAIN));
        pointList.add(new Point(14, 5, 4, Point.UPPER_CHAIN));

        pointList.add(new Point(0, 4, 5, Point.LOWER_CHAIN));
        pointList.add(new Point(4, 2, 6, Point.LOWER_CHAIN));
        pointList.add(new Point(10, 3, 7, Point.LOWER_CHAIN));
        pointList.add(new Point(14, 5, 8, Point.LOWER_CHAIN));

        for (Point p : pointList) {
            if (p.getIndex() == 0 ||
                    p.getIndex() == 4 ||
                    p.getIndex() == 14) {
                p.setMargin(true);
            }
            if (p.getIndex() <= 4) {
                upper.add(p);
            } else {
                lower.add(p);
            }
        }

        convexHull.setUpperTreap(upper);
        convexHull.setLowerTreap(lower);
    }
}
