import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class OutsideTest {
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
        for (int i = -1; i <= SIZE  + 1; i++) {
            validatePoint(new Point(i, -1));
            validatePoint(new Point(i, SIZE + 1));
            validatePoint(new Point(-1, i));
            validatePoint(new Point(SIZE + 1, i));
        }
    }

    private void validatePoint(Point point) {
        Assert.assertTrue(String.format("point %s must be outside of square", point),
                square.getPointLocation(point) == PointInPolygonLocation.Outside);
    }
}