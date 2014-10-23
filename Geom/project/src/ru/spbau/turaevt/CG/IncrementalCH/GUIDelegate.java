package ru.spbau.turaevt.CG.IncrementalCH;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.UnlocatablePosition;

/**
 * GUIDelegate
 *
 * Created by Turaev Timur on 23.10.14.
 */
public interface GUIDelegate {
    void mouseMoved(int x, int y);
    void mouseClicked(int x, int y) throws UnlocatablePosition;

    void errorOccurred(String message);

    void keyPressed(int keyCode);
}
