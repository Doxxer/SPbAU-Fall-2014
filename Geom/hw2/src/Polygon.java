import java.util.*;

/**
 * Polygon class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
class Polygon {
    private final ArrayList<Point> points;
    private Stack<Point> triangulateStack;

    public Polygon() {
        points = new ArrayList<>();
    }

    public void addPoint(Point point) {
        if (points.size() > 0) {
            if (point.compareX(points.get(points.size() - 1)) > 0) {
                point.chain = Point.BOTTOM_CHAIN;
            } else {
                point.chain = Point.UPPER_CHAIN;
            }
        }
        points.add(point);
    }

    public void triangulate() {
        Comparator<Point> comparator = new Comparator<Point>() {
            @Override
            public int compare(Point o1, Point o2) {
                return o1.compareX(o2);
            }
        };
        Collections.max(points, comparator).chain = Point.BOTTOM_CHAIN | Point.UPPER_CHAIN;
        Collections.min(points, comparator).chain = Point.BOTTOM_CHAIN | Point.UPPER_CHAIN;

        ArrayList<Point> sortedPoints = new ArrayList<>(points);
        Collections.sort(sortedPoints, comparator);

        triangulateStack = new Stack<>();
        triangulateStack.push(sortedPoints.get(0));

        for (int i = 1; i < sortedPoints.size(); i++) {
            Point currentPoint = sortedPoints.get(i);
            boolean same_chain = (currentPoint.chain & triangulateStack.peek().chain) != 0;
            if (same_chain) {
                while (triangulateStack.size() >= 2 && concave(currentPoint)) {
                    addTriangle(currentPoint);
                }
            } else {
                Point last = triangulateStack.peek();
                while (triangulateStack.size() > 1) {
                    addTriangle(currentPoint);
                }
                triangulateStack.pop();
                last.chain = Point.BOTTOM_CHAIN | Point.UPPER_CHAIN;
                triangulateStack.push(last);
            }

            triangulateStack.push(currentPoint);
        }
//        System.out.println("---------");
    }

    private boolean concave(Point currentPoint) {
        PointToLinePosition pointPosition = currentPoint.classify(triangulateStack.get(triangulateStack.size() - 2), triangulateStack.peek());
        return ((pointPosition == PointToLinePosition.Left) && (currentPoint.chain & Point.BOTTOM_CHAIN) != 0)
                || ((pointPosition == PointToLinePosition.Right) && (currentPoint.chain & Point.UPPER_CHAIN) != 0);
    }

    private void addTriangle(Point currentPoint) {
        printTriangle(currentPoint, triangulateStack.peek(), triangulateStack.get(triangulateStack.size() - 2));
        triangulateStack.pop();
    }

    private void printTriangle(Point p1, Point p2, Point p3) {
        ArrayList<Point> t = new ArrayList<>(Arrays.asList(p1, p2, p3));

        if (p3.classify(p1, p2) == PointToLinePosition.Right) {
            Collections.reverse(t);
        }

        while (t.get(0).getIndex() >= t.get(1).getIndex() || t.get(0).getIndex() >= t.get(2).getIndex()) {
            Collections.rotate(t, -1);
        }

        System.out.printf("(%d, %d, %d)\n", t.get(0).getIndex(), t.get(1).getIndex(), t.get(2).getIndex());
    }
}
