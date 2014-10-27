package ru.spbau.turaevt.CG.IncrementalCH;

import ru.spbau.turaevt.CG.IncrementalCH.Geom.UnlocatablePosition;

/**
 * GUIDelegate
 *
 * Created by Turaev Timur on 23.10.14.
 */
interface GUIDelegate {
    void mouseClicked(int x, int y) throws UnlocatablePosition;

    void errorOccurred(String message);

    void keyPressed(int keyCode);

    void mouseMovedTo(int x, int y);
}
