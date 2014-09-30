package Shapes.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.runtime.interpreted.StructureAspectInterpreted;

public class StructureAspectDescriptor implements jetbrains.mps.smodel.runtime.StructureAspectDescriptor {
  public StructureAspectDescriptor() {
  }

  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0b, conceptFqName)) {
      case 0:
        return new ConceptDescriptorBuilder("Shapes.structure.Canvas").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept", "jetbrains.mps.execution.util.structure.IMainClass").children(new String[]{"shapes"}, new boolean[]{true}).create();
      case 1:
        return new ConceptDescriptorBuilder("Shapes.structure.Circle").super_("Shapes.structure.Shape").parents("Shapes.structure.Shape").properties("x", "y", "radius").alias("circle", "").create();
      case 2:
        return new ConceptDescriptorBuilder("Shapes.structure.ColorReference").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").references("color").create();
      case 3:
        return new ConceptDescriptorBuilder("Shapes.structure.Shape").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"color"}, new boolean[]{false}).abstract_().create();
      case 4:
        return new ConceptDescriptorBuilder("Shapes.structure.Square").super_("Shapes.structure.Shape").parents("Shapes.structure.Shape").properties("upperLeftX", "upperLeftY", "size").alias("square", "").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"Shapes.structure.Canvas", "Shapes.structure.Circle", "Shapes.structure.ColorReference", "Shapes.structure.Shape", "Shapes.structure.Square"};
}
