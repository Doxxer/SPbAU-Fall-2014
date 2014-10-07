import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Stack;

/**
 * Polygon class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
class Polygon {
    private final ArrayList<Point> points;
    private Stack<Point> triangulateStack;
    private int trianglesDoubleArea;

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
        trianglesDoubleArea = 0;

        ArrayList<Point> sortedPoints = mergeSortPoints(points);
        sortedPoints.get(0).chain = Point.BOTTOM_CHAIN | Point.UPPER_CHAIN;
        sortedPoints.get(sortedPoints.size() - 1).chain = Point.BOTTOM_CHAIN | Point.UPPER_CHAIN;

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

        checkArea();
    }

    private ArrayList<Point> mergeSortPoints(ArrayList<Point> points) {
        ArrayList<Point> result = new ArrayList<>();
        int i = 0;
        int j = points.size() - 1;
        while (i <= j) {
            if (points.get(i).getX() <= points.get(j).getX()) {
                result.add(points.get(i));
                i++;
            } else {
                result.add(points.get(j));
                j--;
            }
        }

        if (points.size() != result.size()) {
            throw new IllegalStateException("Merge failed");
        }

        return result;
    }

    private void checkArea() {
        if (doubleArea() != trianglesDoubleArea) {
            throw new IllegalStateException(String.format("Doubled polygon area = %d, triangles area = %d", doubleArea(), trianglesDoubleArea));
        }
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
        ArrayList<Point> t = new ArrayList<>(Arrays.asList(p1.clone(), p2.clone(), p3.clone()));

        if (p3.classify(p1, p2) == PointToLinePosition.Right) {
            Collections.reverse(t);
        }

        while (t.get(0).getIndex() >= t.get(1).getIndex() || t.get(0).getIndex() >= t.get(2).getIndex()) {
            Collections.rotate(t, -1);
        }

        Polygon triangle = new Polygon();
        triangle.addPoint(t.get(0));
        triangle.addPoint(t.get(1));
        triangle.addPoint(t.get(2));

        trianglesDoubleArea += triangle.doubleArea();

        System.out.printf("(%d, %d, %d)\n", t.get(0).getIndex(), t.get(1).getIndex(), t.get(2).getIndex());
    }

    private int doubleArea() {
        int result = 0;

        for (int i = 0; i < points.size(); i++) {
            int j = (i + 1) % points.size();
            result += points.get(i).getX() * points.get(j).getY() - points.get(j).getX() * points.get(i).getY();
        }

        return result;
    }
}
