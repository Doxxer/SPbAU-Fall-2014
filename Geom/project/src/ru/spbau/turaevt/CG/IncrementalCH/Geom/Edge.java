package ru.spbau.turaevt.CG.IncrementalCH.Geom;

import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;

/**
 * Edge class
 * Created by Turaev Timur on 22.10.14.
 */
public class Edge extends Pair<Point, Point> {
    public Edge(Point first, Point second) {
        super(first, second);
    }

    public Edge(Pair<Point, Point> pair) {
        super(pair.first, pair.second);
    }

    @Override
    public boolean equals(Object o)
    {
        return this == o || o instanceof Edge && isEqual((Edge) o);
    }

    private boolean isEqual(Edge other) {
        return first.equals(other.first) && second.equals(other.second);
    }
}
