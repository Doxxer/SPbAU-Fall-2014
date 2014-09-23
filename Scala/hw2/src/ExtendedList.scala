/**
 * Extended List
 *
 * Created by Turaev Timur on 23.09.14.
 */

class ExtendedList[T](targetList: List[T]) {
  def combWithRepetitions(length: Int) = {
    targetList.map(_ => targetList).flatten.combinations(length).map(_.permutations).flatten.toList
  }
}


