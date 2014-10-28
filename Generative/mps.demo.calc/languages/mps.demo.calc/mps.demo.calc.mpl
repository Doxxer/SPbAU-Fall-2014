<?xml version="1.0" encoding="UTF-8"?>
<language namespace="mps.demo.calc" uuid="471ef0ac-c7b2-4ee3-86a1-12b20e46ca39">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot path="${module}/languageModels" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator name="" generatorUID="mps.demo.calc#3541037617674586680" uuid="027055fb-d4b6-44ba-bf0d-4dcf53312089">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot path="${module}/generator/template" />
        </modelRoot>
      </models>
      <external-templates>
        <generator generatorUID="857d0a79-6f44-4f46-84ed-9c5b42632011(jetbrains.mps.baseLanguage.closures#1199623535494)" />
      </external-templates>
      <dependencies>
        <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
        <dependency reexport="false">f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</dependency>
        <dependency reexport="false">fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</dependency>
        <dependency reexport="false">471ef0ac-c7b2-4ee3-86a1-12b20e46ca39(mps.demo.calc)</dependency>
      </dependencies>
      <usedLanguages>
        <usedLanguage>ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)</usedLanguage>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)</usedLanguage>
        <usedLanguage>9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)</usedLanguage>
        <usedLanguage>7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)</usedLanguage>
        <usedLanguage>471ef0ac-c7b2-4ee3-86a1-12b20e46ca39(mps.demo.calc)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">83ec2dc4-1ca4-44bc-87d0-0ec8cb99f062(mps.demo.calc.runtime)</dependency>
  </runtime>
  <extendedLanguages>
    <extendedLanguage>4caf0310-491e-41f5-8a9b-2006b3a94898(jetbrains.mps.execution.util)</extendedLanguage>
    <extendedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</extendedLanguage>
    <extendedLanguage>fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)</extendedLanguage>
    <extendedLanguage>83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)</extendedLanguage>
  </extendedLanguages>
</language>

