/**
 * Point class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
class Point {
    static final int BOTTOM_CHAIN = 1;
    static final int UPPER_CHAIN = 2;

    private final int x;
    private final int y;
    private final int index;
    public int chain;

    public Point(int x, int y, int index) {
        this.x = x;
        this.y = y;
        this.index = index;
    }

    public int getIndex() {
        return index;
    }

    public PointToLinePosition classify(Point p0, Point p1) {
        Point p2 = this;
        if (p0.equals(p2))
            return PointToLinePosition.Origin;
        if (p1.equals(p2))
            return PointToLinePosition.Destination;

        Point a = p1.minus(p0);
        Point b = p2.minus(p0);
        int det = a.x * b.y - b.x * a.y;
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
    public String toString()
    {
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
        int result = x;
        result = 31 * result + y;
        return result;
    }

    public int compareX(Point other) {
        return this.x == other.x ? this.y - other.y : this.x - other.x;
    }
}
