package ru.spbau.turaevt.CG.IncrementalCH;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Polygon;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.UnlocatablePosition;

import java.awt.*;

class Main implements GUIDelegate {
    private final Polygon polygon;
    private int index;
    private GUI gui;

    public Main() {
        index = 0;
        gui = new GUI(this, 800, 600);
        polygon = new Polygon();
    }

    public static void main(String[] args) {
        new Main();
    }

    @Override
    public void mouseMoved(int x, int y) {
    }

    @Override
    public void mouseClicked(int x, int y) throws UnlocatablePosition {
        index += 1;
        polygon.addPoint(new Point(x, y, index));
        redrawPolygon();
        System.out.printf("Mouse clicked in: %d %d%n", x, y);
    }

    @Override
    public void errorOccurred(String message) {
        System.out.println(message);
    }

    @Override
    public void keyPressed(int keyCode) {
        System.out.printf("Key pressed: %d%n", keyCode);

        if (keyCode == 27) {
            reset();

        }
    }

    private void reset() {
        gui.clear();
        polygon.clear();
        index = 0;
    }

    private void redrawPolygon() {
        gui.clear();
        gui.drawPoints(polygon.getPoints(), Color.BLACK);
        gui.drawLines(polygon.getUpperChainPoints(), Color.BLUE);
        gui.drawLines(polygon.getLowerChainPoints(), Color.RED);
    }
}
