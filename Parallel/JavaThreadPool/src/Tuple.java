/**
 * Tuple class
 *
 * Created by Turaev Timur on 09.11.14.
 */
public class Tuple<T, U> {
    final T _1;
    final U _2;

    public Tuple(T arg1, U arg2) {
        this._1 = arg1;
        this._2 = arg2;
    }

    @Override
    public String toString() {
        return String.format("(%s, %s)", _1, _2);
    }
}