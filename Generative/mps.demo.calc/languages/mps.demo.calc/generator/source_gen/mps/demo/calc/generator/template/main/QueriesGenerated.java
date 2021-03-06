package mps.demo.calc.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.ClassConcept_Behavior;
import jetbrains.mps.baseLanguage.behavior.Classifier_Behavior;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.openapi.model.SNode;
import org.apache.log4j.Level;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

@Generated
public class QueriesGenerated {
  public final boolean NEEDS_OPCONTEXT = false;

  public static Object propertyMacro_GetPropertyValue_1668115546282232070(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "key");
  }

  public static Object propertyMacro_GetPropertyValue_4359921919825903996(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_3730903359846520526(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "label");
  }

  public static Object propertyMacro_GetPropertyValue_4359921919825897189(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_3730903359846745510(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "key");
  }

  public static Object referenceMacro_GetReferent_5991479566475700934(final ReferenceMacroContext _context) {
    int paramSize = ListSequence.fromList(SLinkOperations.getTargets(SNodeOperations.as(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), "function", true)), "jetbrains.mps.baseLanguage.closures.structure.FunctionType"), "parameterType", true)).count();
    switch (paramSize) {
      case 0:
        return Sequence.fromIterable(ClassConcept_Behavior.call_constructors_5292274854859503373(Sequence.fromIterable(SNodeOperations.ofConcept(Classifier_Behavior.call_members_1465982738252129704(SNodeOperations.getNode("r:bdbe17a1-deb9-4302-8eef-29e52358ba63(mps.demo.calc.runtime)", "4359921919825462078")), "jetbrains.mps.baseLanguage.structure.ClassConcept")).findFirst(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SPropertyOperations.getString(it, "name").equals("NulOp");
          }
        }))).first();
      case 1:
        return Sequence.fromIterable(ClassConcept_Behavior.call_constructors_5292274854859503373(Sequence.fromIterable(SNodeOperations.ofConcept(Classifier_Behavior.call_members_1465982738252129704(SNodeOperations.getNode("r:bdbe17a1-deb9-4302-8eef-29e52358ba63(mps.demo.calc.runtime)", "4359921919825462078")), "jetbrains.mps.baseLanguage.structure.ClassConcept")).findFirst(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SPropertyOperations.getString(it, "name").equals("UnOp");
          }
        }))).first();
      case 2:
        return Sequence.fromIterable(ClassConcept_Behavior.call_constructors_5292274854859503373(Sequence.fromIterable(SNodeOperations.ofConcept(Classifier_Behavior.call_members_1465982738252129704(SNodeOperations.getNode("r:bdbe17a1-deb9-4302-8eef-29e52358ba63(mps.demo.calc.runtime)", "4359921919825462078")), "jetbrains.mps.baseLanguage.structure.ClassConcept")).findFirst(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SPropertyOperations.getString(it, "name").equals("BinOp");
          }
        }))).first();
      default:
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("wrong button function");
        }
    }
    return null;
  }

  public static boolean ifMacro_Condition_4359921919826306933(final IfMacroContext _context) {
    return SPropertyOperations.getBoolean(_context.getNode(), "digits");
  }

  public static boolean ifMacro_Condition_5991479566475383099(final IfMacroContext _context) {
    return SPropertyOperations.getBoolean(_context.getNode(), "stdOps");
  }

  public static SNode sourceNodeQuery_3730903359846534598(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "function", true);
  }

  public static SNode sourceNodeQuery_3730903359846747722(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "value", true);
  }

  public static Iterable<SNode> sourceNodesQuery_5991479566475691762(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getTargets(_context.getNode(), "userFun", true);
  }

  protected static Logger LOG = LogManager.getLogger(QueriesGenerated.class);
}
