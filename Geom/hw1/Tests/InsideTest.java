import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class InsideTest {
    private Polygon square;
    private static final int SIZE = 10;

    @Before
    public void setUp() throws Exception {
        square = new Polygon();

        square.addPoint(new Point(0, 0));
        square.addPoint(new Point(SIZE, 0));
        square.addPoint(new Point(SIZE, SIZE));
        square.addPoint(new Point(0, SIZE));
    }

    @Test
    public void testCheckPointLocation() {
        for (int i = 1; i < SIZE; i++) {
            for (int j = 1; j < SIZE; j++) {
                Point point = new Point(i, j);
                PointInPolygonLocation location = square.getPointLocation(point);
                Assert.assertTrue(String.format("point %s must be inside square", point), location == PointInPolygonLocation.Inside);
            }
        }
    }
}