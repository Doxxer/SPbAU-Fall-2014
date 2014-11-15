package Schedule.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import java.util.Map;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class Time_Constraints extends BaseConstraintsDescriptor {
  public Time_Constraints() {
    super("Schedule.structure.Time");
  }
  @Override
  protected Map<String, PropertyConstraintsDescriptor> getNotDefaultProperties() {
    Map<String, PropertyConstraintsDescriptor> properties = new HashMap();
    properties.put("hours", new BasePropertyConstraintsDescriptor("hours", this) {
      @Override
      public boolean hasOwnValidator() {
        return true;
      }
      @Override
      public boolean validateValue(SNode node, String propertyValue) {
        String propertyName = "hours";
        return Integer.valueOf((SPropertyOperations.getString(propertyValue))) >= 0 && Integer.valueOf((SPropertyOperations.getString(propertyValue))) < 24;
      }
    });
    properties.put("minutes", new BasePropertyConstraintsDescriptor("minutes", this) {
      @Override
      public boolean hasOwnValidator() {
        return true;
      }
      @Override
      public boolean validateValue(SNode node, String propertyValue) {
        String propertyName = "minutes";
        return Integer.valueOf((SPropertyOperations.getString(propertyValue))) >= 0 && Integer.valueOf((SPropertyOperations.getString(propertyValue))) < 60;
      }
    });
    return properties;
  }
}