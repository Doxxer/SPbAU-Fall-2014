import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import treap.Pair;
import treap.Treap;

public class TreapTest {
    private Treap<Point> treap;

    @Before
    public void setUp() throws Exception {
        treap = new Treap<>();
        treap.add(new Point(0, 4, 0));
        treap.add(new Point(1, 7, 1));
        treap.add(new Point(14, 5, 4));
        treap.add(new Point(6, 9, 2));
        treap.add(new Point(12, 8, 3));
    }

    @Test
    public void testAll() throws Exception {
        for (int i = 0; i < 10000; i++) {
            testFind();
        }
    }

    public void testFind() throws Exception {
        Pair<Point, Point> pair = treap.find(new Point(-1, 3, 0));
        Assert.assertTrue(pair.first == null && pair.second.equals(new Point(0, 4, 0)));

        pair = treap.find(new Point(0, 4, 0));
        Assert.assertTrue(pair.first.equals(new Point(0, 4, 0)) && pair.second.equals(new Point(0, 4, 0)));

        pair = treap.find(new Point(1, 7, 0));
        Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(1, 7, 0)));

        pair = treap.find(new Point(2, 7, 0));
        Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
        pair = treap.find(new Point(3, 7, 0));
        Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
        pair = treap.find(new Point(4, 7, 0));
        Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));
        pair = treap.find(new Point(5, 7, 0));
        Assert.assertTrue(pair.first.equals(new Point(1, 7, 0)) && pair.second.equals(new Point(6, 9, 0)));

        pair = treap.find(new Point(6, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(6, 9, 0)));

        pair = treap.find(new Point(7, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
        pair = treap.find(new Point(8, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
        pair = treap.find(new Point(9, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
        pair = treap.find(new Point(10, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));
        pair = treap.find(new Point(11, 9, 0));
        Assert.assertTrue(pair.first.equals(new Point(6, 9, 0)) && pair.second.equals(new Point(12, 8, 0)));

        pair = treap.find(new Point(12, 8, 0));
        Assert.assertTrue(pair.first.equals(new Point(12, 8, 0)) && pair.second.equals(new Point(12, 8, 0)));

        pair = treap.find(new Point(13, 8, 0));
        Assert.assertTrue(pair.first.equals(new Point(12, 8, 0)) && pair.second.equals(new Point(14, 5, 0)));

        pair = treap.find(new Point(14, 5, 0));
        Assert.assertTrue(pair.first.equals(new Point(14, 5, 0)) && pair.second.equals(new Point(14, 5, 0)));

        pair = treap.find(new Point(15, 5, 0));
        Assert.assertTrue(pair.first.equals(new Point(14, 5, 0)) && pair.second == null);
    }
}
