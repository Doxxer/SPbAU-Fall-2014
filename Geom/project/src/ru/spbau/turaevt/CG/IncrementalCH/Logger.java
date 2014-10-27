package ru.spbau.turaevt.CG.IncrementalCH;

import java.io.PrintStream;

/**
 * Logger
 *
 * Created by Turaev Timur on 27.10.14.
 */
public class Logger {
    private final PrintStream out;

    public Logger(PrintStream out) {
        this.out = out;
    }

    public void info(String message) {
        out.println(message);
    }

    public void error(String message) {
        out.println("!!! " + message);
    }
}
