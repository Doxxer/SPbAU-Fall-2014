/**
 * Point class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
class Point implements Cloneable {
    static final int BOTTOM_CHAIN = 1;
    static final int UPPER_CHAIN = 2;

    private final long x;
    private final long y;
    private final int index;
    public int chain;

    public Point(long x, long y, int index) {
        this.x = x;
        this.y = y;
        this.index = index;
    }

    public Point(Point other) {
        this.x = other.x;
        this.y = other.y;
        this.index = other.index;
        this.chain = other.chain;
    }

    public int getIndex() {
        return index;
    }

    public long getX() {
        return x;
    }

    public long getY() {
        return y;
    }

    public PointToLinePosition classify(Point p0, Point p1) {
        Point p2 = this;
        if (p0.equals(p2))
            return PointToLinePosition.Origin;
        if (p1.equals(p2))
            return PointToLinePosition.Destination;

        Point a = p1.minus(p0);
        Point b = p2.minus(p0);
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

    private Point minus(Point other) {
        return new Point(x - other.x, y - other.y, index);
    }

    @Override
    public String toString() {
//        return String.format("{x = %d, y = %d, #%d, chain=%d}", x, y, index, chain);
        return String.format("{#%d}", index);
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

    public long compareX(Point other) {
        return this.x == other.x ? this.y - other.y : this.x - other.x;
    }

    @Override
    public Point clone() {
        return new Point(this.x, this.y, this.index);
    }
}
