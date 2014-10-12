import java.util.ArrayList;

/**
 * Polygon class
 * <p/>
 * Created by Turaev Timur on 13.09.14.
 */
class Polygon {
    private final ArrayList<Point> points;

    public Polygon() {
        points = new ArrayList<>();
    }

    public void addPoint(Point point) {
        points.add(point);
    }

    public int rightmostTangentPoint(Point p) {
        int n = points.size() - 1;
        if (below(p, points.get(1), points.get(0), true) && !above(p, points.get(n - 1), points.get(0), true)) {
            return 0;
        }
        for (int a = 0, b = n; ; ) {
            int c = (a + b) / 2;
            boolean decreaseFromPointC = below(p, points.get((c + 1) % n), points.get(c % n), true);
            if (decreaseFromPointC && !above(p, points.get((c - 1 + n) % n), points.get(c % n), true)) {
                return c;
            }

            boolean increaseFromPointA = above(p, points.get((a + 1) % n), points.get(a % n), true);
            if (increaseFromPointA) {
                if (decreaseFromPointC)
                    b = c;
                else {
                    if (above(p, points.get(a % n), points.get(c % n), true))
                        b = c;
                    else
                        a = c;
                }
            } else {
                if (!decreaseFromPointC)
                    a = c;
                else {
                    if (below(p, points.get(a % n), points.get(c % n), true))
                        b = c;
                    else
                        a = c;
                }
            }
        }
    }

    public int leftmostTangentPoint(Point p) {
        int n = points.size() - 1;
        if (above(p, points.get(n - 1), points.get(0), false) && !below(p, points.get(1), points.get(0), false)) {
            return 0;
        }
        for (int a = 0, b = n; ; ) {
            int c = (a + b) / 2;
            boolean decreaseFromPointC = below(p, points.get((c + 1) % n), points.get(c % n), false);
            if (above(p, points.get((c - 1) % n), points.get(c % n), false) && !decreaseFromPointC) {
                return c;
            }

            boolean decreaseFromPointA = below(p, points.get((a + 1) % n), points.get(a % n), false);
            if (decreaseFromPointA) {
                if (!decreaseFromPointC)
                    b = c;
                else {
                    if (below(p, points.get(a % n), points.get(c % n), false))
                        b = c;
                    else
                        a = c;
                }
            } else {
                if (decreaseFromPointC)
                    a = c;
                else {
                    if (above(p, points.get(a % n), points.get(c % n), false))
                        b = c;
                    else
                        a = c;
                }
            }
        }
    }

    private boolean below(Point p, Point a, Point b, boolean isRightMost) {
        PointToLinePosition classify = b.classify(p, a);
        return classify == PointToLinePosition.Right || (isRightMost ? classify == PointToLinePosition.Between : classify == PointToLinePosition.Beyond);
    }

    private boolean above(Point p, Point a, Point b, boolean isRightMost) {
        PointToLinePosition classify = b.classify(p, a);
        return classify == PointToLinePosition.Left || (isRightMost ? classify == PointToLinePosition.Beyond : classify == PointToLinePosition.Between);
    }

    public Point getPoint(int i) {
        return points.get(i);
    }
}
