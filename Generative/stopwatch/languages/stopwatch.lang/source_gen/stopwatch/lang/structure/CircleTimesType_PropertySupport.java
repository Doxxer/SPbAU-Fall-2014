package stopwatch.lang.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class CircleTimesType_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<CircleTimesType> constants = ListSequence.fromList(CircleTimesType.getConstants()).iterator();
    while (constants.hasNext()) {
      CircleTimesType constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }

  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<CircleTimesType> constants = ListSequence.fromList(CircleTimesType.getConstants()).iterator();
    while (constants.hasNext()) {
      CircleTimesType constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }

  public String fromInternalValue(String value) {
    CircleTimesType constant = CircleTimesType.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}