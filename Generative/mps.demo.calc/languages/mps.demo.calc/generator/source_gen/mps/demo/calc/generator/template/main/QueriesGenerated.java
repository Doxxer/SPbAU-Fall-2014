package mps.demo.calc.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.template.IfMacroContext;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;

  public static Object propertyMacro_GetPropertyValue_1668115546282232070(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "key");
  }

  public static Object propertyMacro_GetPropertyValue_4359921919825903996(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_4359921919825897189(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static boolean ifMacro_Condition_4359921919826306933(final IfMacroContext _context) {
    return SPropertyOperations.getBoolean(_context.getNode(), "digits");
  }

  public static boolean ifMacro_Condition_5991479566475383099(final IfMacroContext _context) {
    return SPropertyOperations.getBoolean(_context.getNode(), "stdOps");
  }
}
