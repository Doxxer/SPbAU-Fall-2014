package ru.spbau.turaevt.CG.IncrementalCH;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.Point;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.Polygon;
import ru.spbau.turaevt.CG.IncrementalCH.Geom.UnlocatablePosition;

import java.awt.*;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.text.MessageFormat;

class Main implements GUIDelegate {
    private final Polygon polygon;
    private final GUI gui;
    private Logger logger;
    private int index;

    private Main() {
        index = 0;
        gui = new GUI(this, 800, 600);
        polygon = new Polygon();
        try {
            logger = new Logger(new PrintStream(new FileOutputStream("log.txt")));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        new Main();
    }

    @Override
    public void mouseClicked(int x, int y) throws UnlocatablePosition {
        index += 1;
        polygon.addPoint(new Point(x, y, index));
        redrawPolygon();
        logger.info(MessageFormat.format("Mouse clicked in: {0} {1}", x, y));
    }

    @Override
    public void errorOccurred(String message) {
        logger.error(message);
    }

    @Override
    public void keyPressed(int keyCode) {
        logger.info(MessageFormat.format("Key pressed: {0}", keyCode));

        if (keyCode == 27) {
            reset();
        }
    }

    @Override
    public void mouseMovedTo(int x, int y)
    {
        // do nothing
        // logger.info(MessageFormat.format("X = {0}, Y = {1}", x, y));
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
