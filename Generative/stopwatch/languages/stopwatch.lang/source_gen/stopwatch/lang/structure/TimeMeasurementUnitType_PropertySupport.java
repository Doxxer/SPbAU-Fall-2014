package stopwatch.lang.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class TimeMeasurementUnitType_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<TimeMeasurementUnitType> constants = ListSequence.fromList(TimeMeasurementUnitType.getConstants()).iterator();
    while (constants.hasNext()) {
      TimeMeasurementUnitType constant = constants.next();
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
    Iterator<TimeMeasurementUnitType> constants = ListSequence.fromList(TimeMeasurementUnitType.getConstants()).iterator();
    while (constants.hasNext()) {
      TimeMeasurementUnitType constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }

  public String fromInternalValue(String value) {
    TimeMeasurementUnitType constant = TimeMeasurementUnitType.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}
