package ru.spbau.turaevt.CG.IncrementalCH.Geom;

import ru.spbau.turaevt.CG.IncrementalCH.Treap.Node;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Pair;
import ru.spbau.turaevt.CG.IncrementalCH.Treap.Treap;

import java.util.ArrayList;

/**
 * Convex Hull
 * Created by Turaev Timur on 22.10.14.
 */
public class ConvexHull {
    private Treap<Point> upperTreap;
    private Treap<Point> lowerTreap;

    private Point lastAddedToUpperTreap;
    private Point lastAddedToLowerTreap;

    public ConvexHull() {
        upperTreap = new Treap<>();
        lowerTreap = new Treap<>();
    }

    public ArrayList<Point> getPointsOnChain(Treap<Point> treap) {
        ArrayList<Point> result = new ArrayList<>();
        Node<Point> current = treap.getRoot().min();
        while (current != null) {
            result.add(current.getData());
            current = current.getNext();
        }
        return result;
    }

    /**
     * Inserts point into convex hull
     *
     * @param p point to be inserted
     * @throws UnlocatablePosition if point position is unlocatable
     */
    public void insertPoint(Point p) throws UnlocatablePosition {
        PointToConvexHullPosition position = LocatePointPositionToConvexHull(p);
        switch (position) {
            case IN:
            case ON:
                break;
            case ABOVE:
                insertToUpperChain(p);
                break;
            case BELOW:
                insertToLowerChain(p);
                break;
            case OUT:
                insertToUpperChain(p);
                insertToLowerChain(p);
                break;
        }
    }

    private void insertToLowerChain(Point p) throws UnlocatablePosition {
        if (lastAddedToLowerTreap != null)
            lastAddedToLowerTreap.setMargin(false);
        Point pointToInsert = new Point(p, Point.LOWER_CHAIN);
        insertPointToTreap(lowerTreap, pointToInsert, PointToLinePosition.Left);
        lastAddedToLowerTreap = pointToInsert;
    }

    private void insertToUpperChain(Point p) throws UnlocatablePosition {
        if (lastAddedToUpperTreap != null)
            lastAddedToLowerTreap.setMargin(false);
        Point pointToInsert = new Point(p, Point.UPPER_CHAIN);
        insertPointToTreap(upperTreap, pointToInsert, PointToLinePosition.Right);
        lastAddedToUpperTreap = pointToInsert;
    }

    public ArrayList<Point> insertPointToTreap(Treap<Point> treap, Point p, PointToLinePosition insidePosition) throws UnlocatablePosition {
        Pair<Point, Point> supportPoints = findSupportPoints(treap, p, insidePosition);
        Point left = supportPoints.first;
        Point right = supportPoints.second;
        ArrayList<Point> result = new ArrayList<>();

        if (right != null && left != null) {
            Pair<Node<Point>, Node<Point>> splitLeft = treap.split(left);
            Node<Point> L = splitLeft.first;
            L = treap.remove(L, left);

            Pair<Node<Point>, Node<Point>> splitRight = new Treap<>(splitLeft.second).split(right);
            Node<Point> removedWithRight = splitRight.first;
            Node<Point> R = splitRight.second;

            result = convertToArray(removedWithRight, right);

            treap.setRoot(treap.merge(L, R));
            if (p.compareTo(right) < 0) {
                treap.add(right);
            } else {
                result.add(right);
            }
            treap.add(p);
            if (left.compareTo(p) < 0) {
                treap.add(left);
            } else {
                result.add(0, left);
            }
        } else if (left != null || right != null || treap.size() < 2) {
            treap.add(p);
        }
        treap.getRoot().min().getData().setMargin(true);
        treap.getRoot().max().getData().setMargin(true);
        return result;
    }

    private ArrayList<Point> convertToArray(Node<Point> removedWithRight, Point right) {
        ArrayList<Point> result = new ArrayList<>();
        Node<Point> current = removedWithRight.min();
        while (current != null && !current.getData().equals(right)) {
            result.add(current.getData());
            current = current.getNext();
        }
        return result;
    }

    /**
     * Locates position of point P in convex hull
     *
     * @param p located point
     * @return Pair of edges: in upper chain and bottom chain respectively
     */
    public Pair<Edge, Edge> LocateBoundEdges(Point p) {
        Edge upperEdge = new Edge(upperTreap.findBounds(p));
        Edge bottomEdge = new Edge(lowerTreap.findBounds(p));

        return new Pair<>(convertEdgeBoundingPointToPointIfNeeded(upperEdge, p), convertEdgeBoundingPointToPointIfNeeded(bottomEdge, p));
    }

    public PointToConvexHullPosition LocatePointPositionToConvexHull(Point p) throws UnlocatablePosition {
        Pair<Edge, Edge> bounds = LocateBoundEdges(p);

        VerticalPosition up = p.classifyVerticalPosition(bounds.first);
        VerticalPosition down = p.classifyVerticalPosition(bounds.second);
        if (up == VerticalPosition.ON || down == VerticalPosition.ON) {
            return PointToConvexHullPosition.ON;
        }
        if (up != down) {
            return PointToConvexHullPosition.IN;
        }
        if (isOnMargin(p, bounds.first) || isOnMargin(p, bounds.second)) {
            return PointToConvexHullPosition.OUT;
        }

        if (up == VerticalPosition.OUT) {
            return PointToConvexHullPosition.OUT;
        }
        if (up == VerticalPosition.ABOVE) {
            return PointToConvexHullPosition.ABOVE;
        }
        if (up == VerticalPosition.BELOW) {
            return PointToConvexHullPosition.BELOW;
        }
        throw new UnlocatablePosition("wat");
    }

    private boolean isOnMargin(Point p, Edge edge) {
        if (edge == null) {
            return false;
        }
        if (edge.first != null && edge.first.isMargin() && p.getX() == edge.first.getX())
            return true;
        if (edge.second != null && edge.second.isMargin() && p.getX() == edge.second.getX())
            return true;
        return false;
    }

    public Pair<Point, Point> findSupportPoints(Treap<Point> treap, Point p, PointToLinePosition insidePosition) {
        Pair<Edge, Edge> boundEdges = LocateBoundEdges(p);
        Edge edge = insidePosition == PointToLinePosition.Right ? boundEdges.first : boundEdges.second;

        if (edge.first == null) {
            return new Pair<>(edge.second, findRightSupportPoint(treap.getRoot(), p, insidePosition));
        }
        if (edge.second == null) {
            return new Pair<>(findLeftSupportPoint(treap.getRoot(), p, insidePosition), edge.first);
        }
        Pair<Node<Point>, Node<Point>> split = treap.split(edge.first);
        Point rightSupport = split.second == null ? edge.first : findRightSupportPoint(split.second, p, insidePosition);
        Point leftSupport = findLeftSupportPoint(split.first, p, insidePosition);

        Pair<Point, Point> pointPointPair = new Pair<>(leftSupport, rightSupport);
        treap.setRoot(treap.merge(split.first, split.second));
        return pointPointPair;
    }

    private Point findRightSupportPoint(Node<Point> root, Point p, PointToLinePosition insidePosition) {
        PointToLinePosition a, b;
        boolean cw1 = false, cw2 = false;
        if (root == null) {
            return null;
        }
        if (root.getNext() != null) {
            b = p.classify(new Edge(root.getData(), root.getNext().getData()));
            cw2 = b == insidePosition;
            if (root.getPrev() == null && cw2) {
                return findRightSupportPoint(root.right, p, insidePosition);
            }
        }
        if (root.getPrev() != null) {
            a = p.classify(new Edge(root.getPrev().getData(), root.getData()));
            cw1 = a == insidePosition;
            if (root.getNext() == null) {
                return cw1 ? findRightSupportPoint(root.left, p, insidePosition) : root.getData();
            }
        }
        if (cw1 != cw2) return root.getData();
        return cw1 ? findRightSupportPoint(root.left, p, insidePosition) : findRightSupportPoint(root.right, p, insidePosition);
    }

    private Point findLeftSupportPoint(Node<Point> root, Point p, PointToLinePosition insidePosition) {
        PointToLinePosition a, b;
        boolean cw1 = false, cw2 = false;
        if (root == null) {
            return null;
        }
        if (root.getNext() != null) {
            b = p.classify(new Edge(root.getData(), root.getNext().getData()));
            cw2 = b == insidePosition;
            if (root.getPrev() == null) {
                return cw2 ? findLeftSupportPoint(root.right, p, insidePosition) : root.getData();
            }
        }
        if (root.getPrev() != null) {
            a = p.classify(new Edge(root.getPrev().getData(), root.getData()));
            cw1 = a == insidePosition;
            if (root.getNext() == null && cw1) {
                return findLeftSupportPoint(root.left, p, insidePosition);
            }
        }
        if (cw1 != cw2) return root.getData();
        return cw1 ? findLeftSupportPoint(root.right, p, insidePosition) : findLeftSupportPoint(root.left, p, insidePosition);
    }

    private Edge convertEdgeBoundingPointToPointIfNeeded(Edge edge, Point p) {
        if (edge.first != null && edge.first.getX() == p.getX()) {
            edge.second = edge.first;
        }
        if (edge.second != null && edge.second.getX() == p.getX()) {
            edge.first = edge.second;
        }
        return edge;
    }

    public Treap<Point> getUpperTreap() {
        return upperTreap;
    }

    public void setUpperTreap(Treap<Point> upperTreap) {
        this.upperTreap = upperTreap;
    }

    public Treap<Point> getLowerTreap() {
        return lowerTreap;
    }

    public void setLowerTreap(Treap<Point> lowerTreap) {
        this.lowerTreap = lowerTreap;
    }

    public void clear() {
        upperTreap = new Treap<>();
        lowerTreap = new Treap<>();
    }
}
