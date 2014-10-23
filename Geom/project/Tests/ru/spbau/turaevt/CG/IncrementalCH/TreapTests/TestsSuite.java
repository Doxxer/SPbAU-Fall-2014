package ru.spbau.turaevt.CG.IncrementalCH.TreapTests;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import ru.spbau.turaevt.CG.IncrementalCH.TreapTests.GeomTests.*;
import ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests.TreapCompareTest;
import ru.spbau.turaevt.CG.IncrementalCH.TreapTests.TreapTests.TreapFindTest;

@RunWith(Suite.class)
@Suite.SuiteClasses({
        TreapFindTest.class,
        TreapCompareTest.class,
        FindBoundsTest.class,
        LocateTest.class,
        FindSupportPoints.class,
        InsertPointsTest.class,
})
public class TestsSuite {

}