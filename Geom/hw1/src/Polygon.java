import java.util.ArrayList;

/**
 * Polygon class
 * Created by Turaev Timur on 13.09.14.
 */
public class Polygon {
    private final ArrayList<Point> points;

    public Polygon() {
        points = new ArrayList<>();
    }

    public void addPoint(Point point) {
        points.add(point);
    }

    public PointInPolygonLocation getPointLocation(Point point) {
        boolean parity = true;
        for (int i = 0; i < size(); i++) {
            Edge edge = getEdge(i);
            switch (point.edgeType(edge.a, edge.b)) {
                case Touching:
                    return PointInPolygonLocation.Bound;
                case Crossing:
                    parity = !parity;
                    break;
                case Noninteracting:
                    break;
            }
        }
        return parity ? PointInPolygonLocation.Outside : PointInPolygonLocation.Inside;
    }

    private Edge getEdge(int index) {
        return new Edge(points.get(index), points.get((index + 1) % size()));
    }

    private int size() {
        return points.size();
    }

    private class Edge {
        public final Point a;
        public final Point b;

        private Edge(Point a, Point b) {
            this.a = a;
            this.b = b;
        }
    }
}
