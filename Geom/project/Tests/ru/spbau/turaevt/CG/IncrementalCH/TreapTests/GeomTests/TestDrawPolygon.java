package ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests;

import org.junit.Before;
import org.junit.Test;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Polygon;

/**
 * Test polygon
 * Created by Turaev Timur on 24.10.14.
 */
public class TestDrawPolygon {
    private Polygon polygon;

    @Before
    public void setUp() throws Exception {
        polygon = new Polygon();
    }

    @Test
    public void testQuad() throws Exception {
        polygon.addPoint(new Point(0, 0, 0));
        System.out.println(polygon.getUpperChainPoints());
        System.out.println(polygon.getLowerChainPoints());
        System.out.println("------------");

        polygon.addPoint(new Point(100, 0, 1));
        System.out.println(polygon.getUpperChainPoints());
        System.out.println(polygon.getLowerChainPoints());
        System.out.println("------------");

        polygon.addPoint(new Point(100, 100, 2));
        System.out.println(polygon.getUpperChainPoints());
        System.out.println(polygon.getLowerChainPoints());
        System.out.println("------------");

        polygon.addPoint(new Point(0, 100, 3));
        System.out.println(polygon.getUpperChainPoints());
        System.out.println(polygon.getLowerChainPoints());
        System.out.println("------------");
    }
}
