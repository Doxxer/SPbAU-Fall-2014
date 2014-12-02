import org.jetbrains.annotations.NotNull;

/**
 * Our list interface
 * See https://code.google.com/p/hpcource/wiki/Universities_Tasks_2014#2._Lock-free
 *
 * @param <T> Type of list element
 * @author Turaev Timur
 */
public interface List<T> {
    /**
     * Inserts new element to list.
     *
     * @param element item to be inserted
     * @return true if list changed. Returns false if there was element with the same key
     */
    boolean insert(@NotNull T element);

    /**
     * Seek for the given element
     *
     * @param element item to be found
     * @return true if there is given element
     */
    boolean contains(@NotNull T element);

    /**
     * Removes given element (seek by its key)
     *
     * @param element element to be removed
     * @return true of list changed. False of there wasn't such element.
     */
    boolean remove(@NotNull T element);
}
