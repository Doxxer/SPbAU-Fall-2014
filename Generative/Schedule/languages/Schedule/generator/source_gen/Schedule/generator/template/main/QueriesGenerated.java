package Schedule.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;
  public static Object propertyMacro_GetPropertyValue_7613068837530425863(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530887269(final PropertyMacroContext _context) {
    return String.valueOf(SLinkOperations.getTargets(_context.getNode(), "lectures", true).size() + 1);
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530887282(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530858991(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530860743(final PropertyMacroContext _context) {
    return String.valueOf(SPropertyOperations.getInteger(_context.getNode(), "room"));
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530860753(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "presenter");
  }
  public static Object propertyMacro_GetPropertyValue_7613068837530588372(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "hours") + ":" + SPropertyOperations.getString(_context.getNode(), "minutes");
  }
  public static SNode sourceNodeQuery_7613068837530860725(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "timeStart", true);
  }
  public static SNode sourceNodeQuery_7613068837530860734(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "timeFinish", true);
  }
  public static Iterable<SNode> sourceNodesQuery_7613068837530439399(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "days", true);
  }
  public static Iterable<SNode> sourceNodesQuery_7613068837530456812(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SLinkOperations.getTargets(_context.getNode(), "lectures", true)).sort(new ISelector<SNode, Integer>() {
      public Integer select(SNode it) {
        return Integer.parseInt(SPropertyOperations.getString(SLinkOperations.getTarget(it, "timeStart", true), "hours")) * 60 + Integer.parseInt(SPropertyOperations.getString(SLinkOperations.getTarget(it, "timeStart", true), "minutes"));
      }
    }, true);
  }
}
