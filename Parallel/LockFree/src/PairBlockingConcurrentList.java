import org.jetbrains.annotations.NotNull;

/**
 * Pair blocking list
 *
 * @author Turaev Timur
 */
public class PairBlockingConcurrentList<T> extends AbstractBlockingConcurrentList<T> {

    public PairBlockingConcurrentList() {
        super();
    }

    @Override
    public boolean insert(@NotNull T element) {
        return false;
    }

    @Override
    public boolean contains(@NotNull T element) {
        return false;
    }

    @Override
    public boolean remove(@NotNull T element) {
        return false;
    }
}
