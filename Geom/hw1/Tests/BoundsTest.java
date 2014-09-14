import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class BoundsTest {
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
        for (int i = 0; i <= SIZE; i++) {
            validatePoint(new Point(i, 0));
            validatePoint(new Point(i, SIZE));
            validatePoint(new Point(0, i));
            validatePoint(new Point(SIZE, i));
        }
    }

    private void validatePoint(Point point) {
        Assert.assertTrue(String.format("point %s must be at bounds of square", point),
                square.getPointLocation(point) == PointInPolygonLocation.Bound);
    }
}