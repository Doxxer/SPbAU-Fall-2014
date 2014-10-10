package mps.demo.calc.runtime;

/*Generated by MPS */

import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;

public class CalcStatus {
  private static CalcStatus ourStatus = new CalcStatus();

  private CalcStatus() {
  }

  public CalcStatus getCalcStatus() {
    return ourStatus;
  }

  private Map<String, Object> myMap = MapSequence.fromMap(new HashMap<String, Object>());

  public Object getStatus(String key) {
    return MapSequence.fromMap(myMap).get(key);
  }

  public void setStatus(String key, Object value) {
    MapSequence.fromMap(myMap).put(key, value);
  }
}