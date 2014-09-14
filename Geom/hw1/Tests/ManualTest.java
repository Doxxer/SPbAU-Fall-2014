import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class ManualTest {

    private Polygon polygon;

    @Before
    public void setUp() throws Exception {
        polygon = new Polygon();

        polygon.addPoint(new Point(0, 2));
        polygon.addPoint(new Point(6, 0));
        polygon.addPoint(new Point(4, 2));
        polygon.addPoint(new Point(6, 4));
    }

    @Test
    public void testCheckPointLocation() {
        Assert.assertTrue(polygon.getPointLocation(new Point(0, 2)) == PointInPolygonLocation.Bound);
        Assert.assertTrue(polygon.getPointLocation(new Point(6, 0)) == PointInPolygonLocation.Bound);
        Assert.assertTrue(polygon.getPointLocation(new Point(4, 2)) == PointInPolygonLocation.Bound);
        Assert.assertTrue(polygon.getPointLocation(new Point(6, 4)) == PointInPolygonLocation.Bound);

        Assert.assertTrue(polygon.getPointLocation(new Point(5, 2)) == PointInPolygonLocation.Outside);
        Assert.assertTrue(polygon.getPointLocation(new Point(6, 1)) == PointInPolygonLocation.Outside);
        Assert.assertTrue(polygon.getPointLocation(new Point(6, 2)) == PointInPolygonLocation.Outside);
        Assert.assertTrue(polygon.getPointLocation(new Point(6, 3)) == PointInPolygonLocation.Outside);
        Assert.assertTrue(polygon.getPointLocation(new Point(2, 1)) == PointInPolygonLocation.Outside);
        Assert.assertTrue(polygon.getPointLocation(new Point(2, 3)) == PointInPolygonLocation.Outside);

        Assert.assertTrue(polygon.getPointLocation(new Point(2, 2)) == PointInPolygonLocation.Inside);
        Assert.assertTrue(polygon.getPointLocation(new Point(4, 1)) == PointInPolygonLocation.Inside);
    }
}