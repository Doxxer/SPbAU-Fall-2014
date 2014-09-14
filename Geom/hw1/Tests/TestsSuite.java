import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
        InsideTest.class,
        BoundsTest.class,
        OutsideTest.class,
        ManualTest.class
})
public class TestsSuite {

}