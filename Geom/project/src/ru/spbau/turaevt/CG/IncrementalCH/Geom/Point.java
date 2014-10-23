package ru.spbau.turaevt.CG.IncrementalCH.Geom;

/**
 * ru.spbau.turaevt.CG.IncrementalConvexHull.Point class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
public class Point implements Cloneable, Comparable<Point> {
    public static final int LOWER_CHAIN = 1;
    public static final int UPPER_CHAIN = 2;

    private final long x;
    private final long y;
    private final int index;
    public int chain;

    public Point(long x, long y, int index) {
        this.x = x;
        this.y = y;
        this.index = index;
        chain = 0;
    }

    public Point(long x, long y, int index, int chain) {
        this.x = x;
        this.y = y;
        this.index = index;
        this.chain = chain;

    }

    public Point(Point p) {
        x = p.x;
        y = p.y;
        index = p.index;
        chain = p.chain;
    }

    public PointToLinePosition classify(Edge edge) {
        Point p = this;
        if (edge.first.equals(p))
            return PointToLinePosition.Origin;
        if (edge.second.equals(p))
            return PointToLinePosition.Destination;

        Point a = edge.second.minus(edge.first);
        Point b = p.minus(edge.first);
        long det = a.x * b.y - b.x * a.y;
        if (det > 0)
            return PointToLinePosition.Left;
        if (det < 0)
            return PointToLinePosition.Right;
        if ((a.x * b.x < 0) || (a.y * b.y < 0))
            return PointToLinePosition.Behind;
        if ((a.x * a.x + a.y * a.y) < (b.x * b.x + b.y * b.y))
            return PointToLinePosition.Beyond;
        return PointToLinePosition.Between;
    }

    public VerticalPosition classifyVerticalPosition(Edge edge) throws UnlocatablePosition {
        if (edge.first == null || edge.second == null) {
            return VerticalPosition.OUT;
        }

        long max = Math.max(edge.first.y, edge.second.y);
        long min = Math.min(edge.first.y, edge.second.y);

        if (y > max) {
            return VerticalPosition.ABOVE;
        }
        if (y < min) {
            return VerticalPosition.BELOW;
        }
        if (max == min) {
            return VerticalPosition.ON;
        }

        PointToLinePosition classify = this.classify(edge);
        switch (classify) {
            case Left:
            case Beyond:
                return VerticalPosition.ABOVE;
            case Right:
            case Behind:
                return VerticalPosition.BELOW;
            case Between:
            case Origin:
            case Destination:
                return VerticalPosition.ON;
        }
        throw new UnlocatablePosition(String.format("Point: %s and edge.a = %s, edge.b = %s", this, edge.first, edge.second));
    }

    private Point minus(Point other) {
        return new Point(x - other.x, y - other.y, index);
    }

    @Override
    public String toString() {
        return String.format("{x = %d, y = %d, #%d}", x, y, index);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Point)) return false;

        Point point = (Point) o;

        return isEqual(point);
    }

    private boolean isEqual(Point point) {
        if (x != point.x) return false;
        if (y != point.y) return false;

        return true;
    }

    @Override
    public int hashCode() {
        long result = x;
        result = 31 * result + y;
        return (int) result;
    }

    @Override
    public Point clone() {
        return new Point(this.x, this.y, this.index);
    }

    @Override
    public int compareTo(Point other) {
        if (chain != other.chain && other.chain == 0) {
            throw new IllegalStateException("Other point must have chain");
        }
        if (x == other.x) {
            if (other.isOnUpperChain())
                return (int) (y - other.y);
            else
                return (int) (other.y - y);
        } else return (int) (x - other.x);
    }

    public boolean isOnUpperChain() {
        return (chain & UPPER_CHAIN) != 0;
    }

    public boolean isOnBottomChain() {
        return (chain & LOWER_CHAIN) != 0;
    }

    public boolean isOnBothChains() {
        return isOnUpperChain() && isOnBottomChain();
    }

    public long getX() {
        return x;
    }

    public int getIndex() {
        return index;
    }

    public long getY() {
        return y;
    }
}
