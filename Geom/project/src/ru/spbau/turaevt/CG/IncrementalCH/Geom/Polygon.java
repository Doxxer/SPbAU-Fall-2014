package ru.spbau.turaevt.CG.IncrementalCH.Geom;

import java.util.ArrayList;

/**
 * Polygon class
 * <p/>
 * Created by Turaev Timur on 23.10.14.
 */
public class Polygon {
    private final ConvexHull convexHull;
    private final ArrayList<Point> points;

    public Polygon() {
        convexHull = new ConvexHull();
        points = new ArrayList<>();
    }

    public void addPoint(Point p) throws UnlocatablePosition {
        if (!points.contains(p)) {
            convexHull.insertPoint(p);
            points.add(p);
        }
    }

    public ArrayList<Point> getPoints() {
        return points;
    }

    public ArrayList<Point> getUpperChainPoints() {
        return convexHull.getPointsOnChain(convexHull.getUpperTreap());
    }

    public ArrayList<Point> getLowerChainPoints() {
        return convexHull.getPointsOnChain(convexHull.getLowerTreap());
    }

    public void clear() {
        convexHull.clear();
        points.clear();
    }
}
