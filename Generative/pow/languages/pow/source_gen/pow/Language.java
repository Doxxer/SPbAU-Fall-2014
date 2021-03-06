package pow;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import pow.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import pow.typesystem.TypesystemDescriptor;
import jetbrains.mps.ide.findusages.BaseFindUsagesDescriptor;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "7f5a1476-5dd5-4609-97c1-959b5513514d(pow)";
  private static String[] EXTENDED_LANGUAGE_IDS = new String[]{"jetbrains.mps.execution.util"};
  private EditorAspectDescriptorImpl myEditorAspectDescriptor;

  public Language() {

  }

  @Override
  public String getNamespace() {
    return "pow";
  }

  @Override
  protected String[] getExtendedLanguageIDs() {
    return EXTENDED_LANGUAGE_IDS;
  }

  @Override
  public IHelginsDescriptor getTypesystem() {
    return new TypesystemDescriptor();
  }

  @Override
  public BaseFindUsagesDescriptor getFindUsages() {
    return null;
  }

  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "e78f6201-fabb-4c7f-aa80-8fc6193099d6(pow#229046873499830768)"));
  }

  @Override
  public <T extends LanguageAspectDescriptor> T getAspectDescriptor(Class<T> descriptorClass) {
    if (descriptorClass == EditorAspectDescriptor.class) {
      if (myEditorAspectDescriptor == null) {
        myEditorAspectDescriptor = new EditorAspectDescriptorImpl();
      }
      return (T) myEditorAspectDescriptor;
    }
    return null;
  }
}
