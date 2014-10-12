import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TangentTest {
    private Polygon polygon;
    @Before
    public void setUp() throws Exception {
        polygon = new Polygon();
        polygon.addPoint(new Point(0, 0, 0));
        polygon.addPoint(new Point(2, 0, 1));
        polygon.addPoint(new Point(2, 2, 2));
        polygon.addPoint(new Point(0, 2, 3));
        polygon.addPoint(new Point(0, 0, 0));
    }

    @Test
    public void testBottom() {
        Assert.assertEquals(String.format("should be ok 1"), "3 1", getTangentPoints(new Point(-1, -1, 0)));
        Assert.assertEquals(String.format("should be ok 2"), "0 1", getTangentPoints(new Point(0, -1, 0)));
        Assert.assertEquals(String.format("should be ok 3"), "0 1", getTangentPoints(new Point(1, -1, 0)));
        Assert.assertEquals(String.format("should be ok 4"), "0 1", getTangentPoints(new Point(2, -1, 0)));
        Assert.assertEquals(String.format("should be ok 5"), "0 2", getTangentPoints(new Point(3, -1, 0)));
    }

    @Test
    public void testRight() {
        Assert.assertEquals(String.format("should be ok 1"), "0 2", getTangentPoints(new Point(3, -1, 0)));
        Assert.assertEquals(String.format("should be ok 2"), "1 2", getTangentPoints(new Point(3, 0, 0)));
        Assert.assertEquals(String.format("should be ok 3"), "1 2", getTangentPoints(new Point(3, 1, 0)));
        Assert.assertEquals(String.format("should be ok 4"), "1 2", getTangentPoints(new Point(3, 2, 0)));
        Assert.assertEquals(String.format("should be ok 5"), "1 3", getTangentPoints(new Point(3, 3, 0)));
    }

    @Test
    public void testUpper() {
        Assert.assertEquals(String.format("should be ok 1"), "1 3", getTangentPoints(new Point(3, 3, 0)));
        Assert.assertEquals(String.format("should be ok 2"), "2 3", getTangentPoints(new Point(2, 3, 0)));
        Assert.assertEquals(String.format("should be ok 3"), "2 3", getTangentPoints(new Point(1, 3, 0)));
        Assert.assertEquals(String.format("should be ok 4"), "2 3", getTangentPoints(new Point(0, 3, 0)));
        Assert.assertEquals(String.format("should be ok 5"), "2 0", getTangentPoints(new Point(-1, 3, 0)));
    }

    @Test
    public void testLeft() {
        Assert.assertEquals(String.format("should be ok 1"), "2 0", getTangentPoints(new Point(-1, 3, 0)));
        Assert.assertEquals(String.format("should be ok 2"), "3 0", getTangentPoints(new Point(-1, 2, 0)));
        Assert.assertEquals(String.format("should be ok 3"), "3 0", getTangentPoints(new Point(-1, 1, 0)));
        Assert.assertEquals(String.format("should be ok 4"), "3 0", getTangentPoints(new Point(-1, 0, 0)));
        Assert.assertEquals(String.format("should be ok 5"), "3 1", getTangentPoints(new Point(-1, -1, 0)));
    }

    private String getTangentPoints(Point p) {
        return String.format("%d %d", polygon.leftmostTangentPoint(p), polygon.rightmostTangentPoint(p));
    }
}