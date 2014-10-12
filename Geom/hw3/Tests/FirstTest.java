import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class FirstTest {
    private Polygon polygon;
    @Before
    public void setUp() throws Exception {
        polygon = new Polygon();
        polygon.addPoint(new Point(0, 0, 0));
        polygon.addPoint(new Point(1, 0, 1));
        polygon.addPoint(new Point(1, 1, 2));
        polygon.addPoint(new Point(0, 1, 3));
        polygon.addPoint(new Point(0, 0, 0));
    }

    @Test
    public void testTangent() {
        Assert.assertEquals(String.format("should be ok 1"), "0 2", getTangentPoints(new Point(2, -1, 0)));
        Assert.assertEquals(String.format("should be ok 2"), "3 0", getTangentPoints(new Point(-2, 0, 0)));

    }

    private String getTangentPoints(Point p) {
        return String.format("%d %d", polygon.leftmostTangentPoint(p), polygon.rightmostTangentPoint(p));
    }
}