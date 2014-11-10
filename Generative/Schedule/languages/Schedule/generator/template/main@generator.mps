<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7743fdcb-8cf0-49bb-b6aa-911a567d216b(Schedule.generator.template.main@generator)">
  <persistence version="9" />
  <debugInfo>
    <lang id="a2c55519-5234-4e83-b8f8-06b09652be8e" name="Schedule" />
    <lang id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" />
    <lang id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" />
    <lang id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" />
    <lang id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <lang id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" />
    <lang id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" />
    <lang id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" />
    <lang id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068431790191" name="jetbrains.mps.baseLanguage.structure.Expression" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" />
    <concept id="b401a680-8325-4110-8fd3-84331ff25bef/1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" />
    <concept id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1178286324487" name="jetbrains.mps.baseLanguage.collections.structure.SortDirection" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" />
    <concept id="fd392034-7849-419d-9071-12563d152375/1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" />
    <concept id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" />
    <concept id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1205679737078" name="jetbrains.mps.baseLanguage.collections.structure.SortOperation" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/2133624044437898907" name="jetbrains.mps.core.xml.structure.XmlDoctypeDeclaration" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681299057" name="jetbrains.mps.core.xml.structure.XmlProlog" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" />
    <concept id="479c7a8c-02f9-43b5-9139-d910cb22f298/6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" />
    <property id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123137/1068580123138" name="value" />
    <property id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" name="value" />
    <property id="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" name="value" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <property id="b401a680-8325-4110-8fd3-84331ff25bef/1095416546421/1184950341882" name="topPriorityGroup" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/1622293396948952339/1622293396948953704" name="value" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/3364660638048049750/1757699476691236117" name="propertyName" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/2133624044437898907/2133624044437898910" name="doctypeName" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858/6666499814681415862" name="tagName" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681447923/6666499814681447926" name="attrName" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681541919/6666499814681541920" name="text" />
    <property id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858/6999033275467544021" name="shortEmptyNotation" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" name="baseMethodDeclaration" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068498886296/1068581517664" name="variableDeclaration" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" name="property" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056143562/1138056516764" name="link" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393/1138056546658" name="link" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" name="classConcept" />
    <refRole id="b401a680-8325-4110-8fd3-84331ff25bef/1167169308231/1167169349424" name="applicableConcept" />
    <refRole id="b401a680-8325-4110-8fd3-84331ff25bef/1167514355419/1167514355421" name="template" />
    <refRole id="b401a680-8325-4110-8fd3-84331ff25bef/1092059087312/1168285871518" name="applicableConcept" />
    <refRole id="b401a680-8325-4110-8fd3-84331ff25bef/1168619357332/1168619429071" name="applicableConcept" />
    <refRole id="b401a680-8325-4110-8fd3-84331ff25bef/1722980698497626400/1722980698497626483" name="template" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141038" name="actualArgument" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155/1068580123156" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" name="statement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367579" name="rightExpression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367580" name="leftExpression" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1092059087312/1092060348987" name="contentNode" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720/1137022507850" name="body" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1095416546421/1167328349397" name="reductionMappingRule" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1095416546421/1167514678247" name="rootMappingRule" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1087833241328/1167756362303" name="propertyValueFunction" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1118786554307/1167952069335" name="sourceNodesQuery" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1114706874351/1168024447342" name="sourceNodeQuery" />
    <childRole id="b401a680-8325-4110-8fd3-84331ff25bef/1167327847730/1169672767469" name="ruleConsequence" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027771414" name="operand" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027833540" name="operation" />
    <childRole id="fd392034-7849-419d-9071-12563d152375/1199569711397/1199569906740" name="parameter" />
    <childRole id="fd392034-7849-419d-9071-12563d152375/1199569711397/1199569916463" name="body" />
    <childRole id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1204796164442/1204796294226" name="closure" />
    <childRole id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1205679737078/1205679819055" name="toComparable" />
    <childRole id="83888646-71ce-4f1c-9c53-c54016f6ad4f/1205679737078/1205679832066" name="ascending" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858/1622293396948928802" name="content" />
    <childRole id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1133920641626/5169995583184591170" name="smodelAttribute" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/4972933694980447171/5680397130376446158" name="type" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6786756355279841993/6666499814681299055" name="rootElement" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6786756355279841993/6666499814681299060" name="prolog" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681415858/6666499814681415861" name="attributes" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681515200/6666499814681515201" name="document" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681447923/6666499814681541918" name="value" />
    <childRole id="479c7a8c-02f9-43b5-9139-d910cb22f298/6666499814681299057/7604553062773674214" name="elements" />
  </debugInfo>
  <languages>
    <use id="a2c55519-5234-4e83-b8f8-06b09652be8e" version="-1" index="yizo" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" version="0" index="ki41" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="-1" index="asn4" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" version="-1" index="7gwc" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" version="-1" index="o248" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" version="0" index="laik" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" version="0" implicit="true" index="vg0i" />
    <use id="fd392034-7849-419d-9071-12563d152375" version="0" implicit="true" index="cakq" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" version="0" implicit="true" index="j0ph" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" version="0" implicit="true" index="4ia1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpf8" ref="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" implicit="true" />
    <import index="y9c6" ref="r:03e2b27a-dd59-4302-abf1-e73a72507f84(Schedule.structure)" implicit="true" />
    <import index="iuxj" ref="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
    <import index="k7g3" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" implicit="true" />
    <import index="tp2c" ref="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" implicit="true" />
    <import index="tp2q" ref="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="7gwc.1095416546421" id="2730820940293113741" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="main" />
      <property role="7gwc.1095416546421.1184950341882" value="true" />
      <node concept="7gwc.1167514355419" id="7613068837530214239" role="7gwc.1095416546421.1167514678247" info="lg">
        <reference role="7gwc.1167169308231.1167169349424" target="y9c6.2730820940293372535" resolveInfo="Schedule" />
        <reference role="7gwc.1167514355419.1167514355421" target="7613068837530215592" resolveInfo="map_Schedule" />
      </node>
      <node concept="7gwc.1167327847730" id="7613068837530343551" role="7gwc.1095416546421.1167328349397" info="lg">
        <reference role="7gwc.1167169308231.1167169349424" target="y9c6.2730820940293498013" resolveInfo="EducationalDay" />
        <node concept="7gwc.1168559333462" id="7613068837530343557" role="7gwc.1167327847730.1169672767469" info="ln">
          <reference role="7gwc.1722980698497626400.1722980698497626483" target="7613068837530343555" resolveInfo="reduce_EducationalDay" />
        </node>
      </node>
      <node concept="7gwc.1167327847730" id="7613068837530397908" role="7gwc.1095416546421.1167328349397" info="lg">
        <reference role="7gwc.1167169308231.1167169349424" target="y9c6.2730820940293501673" resolveInfo="Lecture" />
        <node concept="7gwc.1168559333462" id="7613068837530397916" role="7gwc.1167327847730.1169672767469" info="ln">
          <reference role="7gwc.1722980698497626400.1722980698497626483" target="7613068837530397914" resolveInfo="reduce_Lecture" />
        </node>
      </node>
      <node concept="7gwc.1167327847730" id="7613068837530584045" role="7gwc.1095416546421.1167328349397" info="lg">
        <reference role="7gwc.1167169308231.1167169349424" target="y9c6.2730820940293503813" resolveInfo="Time" />
        <node concept="7gwc.1168559333462" id="7613068837530584055" role="7gwc.1167327847730.1169672767469" info="ln">
          <reference role="7gwc.1722980698497626400.1722980698497626483" target="7613068837530584053" resolveInfo="reduce_Time" />
        </node>
      </node>
    </node>
    <node concept="ki41.6666499814681515200" id="7613068837530215592" info="ng">
      <property role="asn4.1169194658468.1169194664001" value="map_Schedule" />
      <node concept="ki41.6786756355279841993" id="7613068837530215593" role="ki41.6666499814681515200.6666499814681515201" info="ng">
        <node concept="ki41.6666499814681299057" id="7613068837530217040" role="ki41.6786756355279841993.6666499814681299060" info="ng">
          <node concept="ki41.2133624044437898907" id="7613068837530421701" role="ki41.6666499814681299057.7604553062773674214" info="ng">
            <property role="ki41.2133624044437898907.2133624044437898910" value="html" />
          </node>
        </node>
        <node concept="ki41.6666499814681415858" id="7613068837530421811" role="ki41.6786756355279841993.6666499814681299055" info="ng">
          <property role="ki41.6666499814681415858.6666499814681415862" value="html" />
          <node concept="ki41.6666499814681415858" id="7613068837530421857" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="head" />
            <node concept="ki41.6666499814681415858" id="7613068837530421983" role="ki41.6666499814681415858.1622293396948928802" info="ng">
              <property role="ki41.6666499814681415858.6666499814681415862" value="meta" />
              <property role="ki41.6666499814681415858.6999033275467544021" value="true" />
              <node concept="ki41.6666499814681447923" id="7613068837530421990" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                <property role="ki41.6666499814681447923.6666499814681447926" value="charset" />
                <node concept="ki41.6666499814681541919" id="7613068837530421992" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                  <property role="ki41.6666499814681541919.6666499814681541920" value="utf-8" />
                </node>
              </node>
            </node>
            <node concept="ki41.6666499814681415858" id="7613068837530422155" role="ki41.6666499814681415858.1622293396948928802" info="ng">
              <property role="ki41.6666499814681415858.6666499814681415862" value="title" />
              <node concept="ki41.1622293396948952339" id="7613068837530422204" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                <property role="ki41.1622293396948952339.1622293396948953704" value="Schedule MPS task" />
              </node>
            </node>
            <node concept="ki41.6666499814681415858" id="7613068837530423829" role="ki41.6666499814681415858.1622293396948928802" info="ng">
              <property role="ki41.6666499814681415858.6666499814681415862" value="style" />
              <node concept="ki41.1622293396948952339" id="7613068837530423839" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                <property role="ki41.1622293396948952339.1622293396948953704" value=".tg { border-collapse: collapse; } .tg td, th { font-family: Arial, sans-serif; font-size: 14px; padding: 10px 5px; border: 1px solid; overflow: hidden; word-break: normal; } .tg .tg-head, .tg-title { font-weight: bold; background-color: #cbcefb; }" />
              </node>
              <node concept="ki41.1622293396948952339" id="7613068837530423892" role="ki41.6666499814681415858.1622293396948928802" info="nn" />
            </node>
          </node>
          <node concept="ki41.6666499814681415858" id="7613068837530422250" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="body" />
            <node concept="ki41.6666499814681415858" id="7613068837530425382" role="ki41.6666499814681415858.1622293396948928802" info="ng">
              <property role="ki41.6666499814681415858.6666499814681415862" value="table" />
              <node concept="ki41.6666499814681447923" id="7613068837530425439" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                <node concept="ki41.6666499814681541919" id="7613068837530425493" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                  <property role="ki41.6666499814681541919.6666499814681541920" value="tg" />
                </node>
              </node>
              <node concept="ki41.6666499814681415858" id="7613068837530425551" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                <property role="ki41.6666499814681415858.6666499814681415862" value="tr" />
                <node concept="ki41.6666499814681415858" id="7613068837530425613" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="th" />
                  <node concept="ki41.6666499814681447923" id="7613068837530425672" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530425674" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-title" />
                    </node>
                  </node>
                  <node concept="ki41.6666499814681447923" id="7613068837530425792" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="colspan" />
                    <node concept="ki41.6666499814681541919" id="7613068837530425796" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="6" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530425858" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="name" />
                    <node concept="7gwc.1087833241328" id="7613068837530425860" role="asn4.1133920641626.5169995583184591170" info="ln">
                      <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
                      <node concept="7gwc.1167756080639" id="7613068837530425863" role="7gwc.1087833241328.1167756362303" info="in">
                        <node concept="vg0i.1068580123136" id="7613068837530425864" role="vg0i.1137021947720.1137022507850" info="sn">
                          <node concept="vg0i.1068580123155" id="7613068837530425870" role="vg0i.1068580123136.1068581517665" info="nn">
                            <node concept="vg0i.1197027756228" id="7613068837530425865" role="vg0i.1068580123155.1068580123156" info="nn">
                              <node concept="4ia1.1138056022639" id="7613068837530425868" role="vg0i.1197027756228.1197027833540" info="nn">
                                <reference role="4ia1.1138056022639.1138056395725" target="tpck.1169194664001" resolveInfo="name" />
                              </node>
                              <node concept="7gwc.1167169188348" id="7613068837530425869" role="vg0i.1197027756228.1197027771414" info="nn" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ki41.6666499814681415858" id="7613068837530430156" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                <property role="ki41.6666499814681415858.6666499814681415862" value="tr" />
                <node concept="ki41.6666499814681415858" id="7613068837530431014" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530431090" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530431165" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530431088" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Day" />
                  </node>
                </node>
                <node concept="ki41.6666499814681415858" id="7613068837530431268" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530431269" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530431270" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530431271" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Lecture" />
                  </node>
                </node>
                <node concept="ki41.6666499814681415858" id="7613068837530431306" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530431307" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530431308" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530431309" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Start time" />
                  </node>
                </node>
                <node concept="ki41.6666499814681415858" id="7613068837530579856" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530579857" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530579858" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530579859" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Finish time" />
                  </node>
                </node>
                <node concept="ki41.6666499814681415858" id="7613068837530431354" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530431355" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530431356" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530431357" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Where" />
                  </node>
                </node>
                <node concept="ki41.6666499814681415858" id="7613068837530431412" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                  <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
                  <node concept="ki41.6666499814681447923" id="7613068837530431413" role="ki41.6666499814681415858.6666499814681415861" info="ng">
                    <property role="ki41.6666499814681447923.6666499814681447926" value="class" />
                    <node concept="ki41.6666499814681541919" id="7613068837530431414" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                      <property role="ki41.6666499814681541919.6666499814681541920" value="tg-head" />
                    </node>
                  </node>
                  <node concept="ki41.1622293396948952339" id="7613068837530431415" role="ki41.6666499814681415858.1622293396948928802" info="nn">
                    <property role="ki41.1622293396948952339.1622293396948953704" value="Teacher" />
                  </node>
                </node>
              </node>
              <node concept="ki41.6666499814681415858" id="7613068837530438508" role="ki41.6666499814681415858.1622293396948928802" info="ng">
                <property role="ki41.6666499814681415858.6666499814681415862" value="day" />
                <node concept="7gwc.1118786554307" id="7613068837530439396" role="asn4.1133920641626.5169995583184591170" info="ln">
                  <node concept="7gwc.1167951910403" id="7613068837530439399" role="7gwc.1118786554307.1167952069335" info="in">
                    <node concept="vg0i.1068580123136" id="7613068837530439400" role="vg0i.1137021947720.1137022507850" info="sn">
                      <node concept="vg0i.1068580123155" id="7613068837530439406" role="vg0i.1068580123136.1068581517665" info="nn">
                        <node concept="vg0i.1197027756228" id="7613068837530439401" role="vg0i.1068580123155.1068580123156" info="nn">
                          <node concept="4ia1.1138056282393" id="7613068837530439404" role="vg0i.1197027756228.1197027833540" info="nn">
                            <reference role="4ia1.1138056282393.1138056546658" target="y9c6.2730820940293498023" />
                          </node>
                          <node concept="7gwc.1167169188348" id="7613068837530439405" role="vg0i.1197027756228.1197027771414" info="nn" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="7gwc.1114706874351" id="7613068837530441919" role="asn4.1133920641626.5169995583184591170" info="ln" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="7gwc.1168619357332" id="7613068837530215595" role="asn4.1133920641626.5169995583184591170" info="lg">
        <reference role="7gwc.1168619357332.1168619429071" target="y9c6.2730820940293372535" resolveInfo="Schedule" />
      </node>
    </node>
    <node concept="7gwc.1092059087312" id="7613068837530343555" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="reduce_EducationalDay" />
      <reference role="7gwc.1092059087312.1168285871518" target="y9c6.2730820940293498013" resolveInfo="EducationalDay" />
      <node concept="ki41.6666499814681415858" id="7613068837530452932" role="7gwc.1092059087312.1092060348987" info="ng">
        <property role="ki41.6666499814681415858.6666499814681415862" value="div" />
        <node concept="ki41.6666499814681415858" id="7613068837530884429" role="ki41.6666499814681415858.1622293396948928802" info="ng">
          <property role="ki41.6666499814681415858.6666499814681415862" value="tr" />
          <node concept="ki41.6666499814681415858" id="7613068837530887265" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.6666499814681447923" id="7613068837530887266" role="ki41.6666499814681415858.6666499814681415861" info="ng">
              <property role="ki41.6666499814681447923.6666499814681447926" value="rowspan" />
              <node concept="ki41.6666499814681541919" id="7613068837530887267" role="ki41.6666499814681447923.6666499814681541918" info="ng">
                <property role="ki41.6666499814681541919.6666499814681541920" value="lecturesCountPlus1" />
                <node concept="7gwc.1087833241328" id="7613068837530887268" role="asn4.1133920641626.5169995583184591170" info="ln">
                  <property role="asn4.3364660638048049750.1757699476691236117" value="text" />
                  <node concept="7gwc.1167756080639" id="7613068837530887269" role="7gwc.1087833241328.1167756362303" info="in">
                    <node concept="vg0i.1068580123136" id="7613068837530887270" role="vg0i.1137021947720.1137022507850" info="sn">
                      <node concept="vg0i.1068580123155" id="7613068837530887271" role="vg0i.1068580123136.1068581517665" info="nn">
                        <node concept="vg0i.1081236700937" id="7613068837530887272" role="vg0i.1068580123155.1068580123156" info="nn">
                          <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~String%dvalueOf(int)%cjava%dlang%dString" resolveInfo="valueOf" />
                          <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~String" resolveInfo="String" />
                          <node concept="vg0i.1068581242875" id="7613068837530887273" role="vg0i.1204053956946.1068499141038" info="nn">
                            <node concept="vg0i.1068580320020" id="7613068837530887274" role="vg0i.1081773326031.1081773367579" info="nn">
                              <property role="vg0i.1068580320020.1068580320021" value="1" />
                            </node>
                            <node concept="vg0i.1197027756228" id="7613068837530887275" role="vg0i.1081773326031.1081773367580" info="nn">
                              <node concept="vg0i.1197027756228" id="7613068837530887276" role="vg0i.1197027756228.1197027771414" info="nn">
                                <node concept="7gwc.1167169188348" id="7613068837530887277" role="vg0i.1197027756228.1197027771414" info="nn" />
                                <node concept="4ia1.1138056282393" id="7613068837530887278" role="vg0i.1197027756228.1197027833540" info="nn">
                                  <reference role="4ia1.1138056282393.1138056546658" target="y9c6.2730820940293503804" />
                                </node>
                              </node>
                              <node concept="vg0i.1202948039474" id="7613068837530887279" role="vg0i.1197027756228.1197027833540" info="nn">
                                <reference role="vg0i.1204053956946.1068499141037" target="k7g3.~List%dsize()%cint" resolveInfo="size" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="ki41.1622293396948952339" id="7613068837530887280" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="day" />
              <node concept="7gwc.1087833241328" id="7613068837530887281" role="asn4.1133920641626.5169995583184591170" info="ln">
                <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
                <node concept="7gwc.1167756080639" id="7613068837530887282" role="7gwc.1087833241328.1167756362303" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530887283" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530887284" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1197027756228" id="7613068837530887285" role="vg0i.1068580123155.1068580123156" info="nn">
                        <node concept="4ia1.1138056022639" id="7613068837530887286" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056022639.1138056395725" target="tpck.1169194664001" resolveInfo="name" />
                        </node>
                        <node concept="7gwc.1167169188348" id="7613068837530887287" role="vg0i.1197027756228.1197027771414" info="nn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="ki41.6666499814681415858" id="7613068837530455940" role="ki41.6666499814681415858.1622293396948928802" info="ng">
          <property role="ki41.6666499814681415858.6666499814681415862" value="lecture" />
          <node concept="7gwc.1118786554307" id="7613068837530456809" role="asn4.1133920641626.5169995583184591170" info="ln">
            <node concept="7gwc.1167951910403" id="7613068837530456812" role="7gwc.1118786554307.1167952069335" info="in">
              <node concept="vg0i.1068580123136" id="7613068837530456813" role="vg0i.1137021947720.1137022507850" info="sn">
                <node concept="vg0i.1068580123155" id="7613068837530456819" role="vg0i.1068580123136.1068581517665" info="nn">
                  <node concept="vg0i.1197027756228" id="5166396601843345399" role="vg0i.1068580123155.1068580123156" info="nn">
                    <node concept="vg0i.1197027756228" id="7613068837530456814" role="vg0i.1197027756228.1197027771414" info="nn">
                      <node concept="4ia1.1138056282393" id="7613068837530456817" role="vg0i.1197027756228.1197027833540" info="nn">
                        <reference role="4ia1.1138056282393.1138056546658" target="y9c6.2730820940293503804" />
                      </node>
                      <node concept="7gwc.1167169188348" id="7613068837530456818" role="vg0i.1197027756228.1197027771414" info="nn" />
                    </node>
                    <node concept="j0ph.1205679737078" id="5166396601843357653" role="vg0i.1197027756228.1197027833540" info="nn">
                      <node concept="cakq.1199569711397" id="5166396601843357655" role="j0ph.1204796164442.1204796294226" info="nn">
                        <node concept="vg0i.1068580123136" id="5166396601843357656" role="cakq.1199569711397.1199569916463" info="sn">
                          <node concept="vg0i.1068580123155" id="5166396601843359477" role="vg0i.1068580123136.1068581517665" info="nn">
                            <node concept="vg0i.1068581242875" id="5166396601843980197" role="vg0i.1068580123155.1068580123156" info="nn">
                              <node concept="vg0i.1081236700937" id="5166396601843983710" role="vg0i.1081773326031.1081773367579" info="nn">
                                <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                                <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~Integer" resolveInfo="Integer" />
                                <node concept="vg0i.1197027756228" id="5166396601843993917" role="vg0i.1204053956946.1068499141038" info="nn">
                                  <node concept="vg0i.1197027756228" id="5166396601843987080" role="vg0i.1197027756228.1197027771414" info="nn">
                                    <node concept="vg0i.1068498886296" id="5166396601843986028" role="vg0i.1197027756228.1197027771414" info="nn">
                                      <reference role="vg0i.1068498886296.1068581517664" target="5166396601843357657" resolveInfo="it" />
                                    </node>
                                    <node concept="4ia1.1138056143562" id="5166396601843990718" role="vg0i.1197027756228.1197027833540" info="nn">
                                      <reference role="4ia1.1138056143562.1138056516764" target="y9c6.2730820940293503839" />
                                    </node>
                                  </node>
                                  <node concept="4ia1.1138056022639" id="5166396601843997164" role="vg0i.1197027756228.1197027833540" info="nn">
                                    <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503824" resolveInfo="minutes" />
                                  </node>
                                </node>
                              </node>
                              <node concept="vg0i.1092119917967" id="5166396601843975795" role="vg0i.1081773326031.1081773367580" info="nn">
                                <node concept="vg0i.1081236700937" id="5166396601843758925" role="vg0i.1081773326031.1081773367580" info="nn">
                                  <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~Integer%dparseInt(java%dlang%dString)%cint" resolveInfo="parseInt" />
                                  <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~Integer" resolveInfo="Integer" />
                                  <node concept="vg0i.1197027756228" id="5166396601843765646" role="vg0i.1204053956946.1068499141038" info="nn">
                                    <node concept="vg0i.1197027756228" id="5166396601843760810" role="vg0i.1197027756228.1197027771414" info="nn">
                                      <node concept="vg0i.1068498886296" id="5166396601843760207" role="vg0i.1197027756228.1197027771414" info="nn">
                                        <reference role="vg0i.1068498886296.1068581517664" target="5166396601843357657" resolveInfo="it" />
                                      </node>
                                      <node concept="4ia1.1138056143562" id="5166396601843763413" role="vg0i.1197027756228.1197027833540" info="nn">
                                        <reference role="4ia1.1138056143562.1138056516764" target="y9c6.2730820940293503839" />
                                      </node>
                                    </node>
                                    <node concept="4ia1.1138056022639" id="5166396601843768790" role="vg0i.1197027756228.1197027833540" info="nn">
                                      <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503822" resolveInfo="hours" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="vg0i.1068580320020" id="5166396601843977030" role="vg0i.1081773326031.1081773367579" info="nn">
                                  <property role="vg0i.1068580320020.1068580320021" value="100" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="j0ph.1203518072036" id="5166396601843357657" role="cakq.1199569711397.1199569906740" info="ig">
                          <property role="asn4.1169194658468.1169194664001" value="it" />
                          <node concept="vg0i.4836112446988635817" id="5166396601843357658" role="vg0i.4972933694980447171.5680397130376446158" info="in" />
                        </node>
                      </node>
                      <node concept="j0ph.1178286324487" id="5166396601843357659" role="j0ph.1205679737078.1205679832066" info="nn">
                        <property role="vg0i.1068580123137.1068580123138" value="true" />
                      </node>
                      <node concept="vg0i.1068431790191" id="5166396601843357660" role="j0ph.1205679737078.1205679819055" info="nn" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="7gwc.1114706874351" id="7613068837530457897" role="asn4.1133920641626.5169995583184591170" info="ln" />
        </node>
        <node concept="7gwc.1095672379244" id="7613068837530452935" role="asn4.1133920641626.5169995583184591170" info="ng" />
      </node>
    </node>
    <node concept="7gwc.1092059087312" id="7613068837530397914" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="reduce_Lecture" />
      <reference role="7gwc.1092059087312.1168285871518" target="y9c6.2730820940293501673" resolveInfo="Lecture" />
      <node concept="ki41.6666499814681415858" id="7613068837530449986" role="7gwc.1092059087312.1092060348987" info="ng">
        <property role="ki41.6666499814681415858.6666499814681415862" value="tr" />
        <node concept="ki41.6666499814681415858" id="7613068837530855436" role="ki41.6666499814681415858.1622293396948928802" info="ng">
          <property role="ki41.6666499814681415858.6666499814681415862" value="div" />
          <node concept="ki41.6666499814681415858" id="7613068837530858988" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.1622293396948952339" id="7613068837530858989" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="title" />
              <node concept="7gwc.1087833241328" id="7613068837530858990" role="asn4.1133920641626.5169995583184591170" info="ln">
                <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
                <node concept="7gwc.1167756080639" id="7613068837530858991" role="7gwc.1087833241328.1167756362303" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530858992" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530858993" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1197027756228" id="7613068837530858994" role="vg0i.1068580123155.1068580123156" info="nn">
                        <node concept="7gwc.1167169188348" id="7613068837530858995" role="vg0i.1197027756228.1197027771414" info="nn" />
                        <node concept="4ia1.1138056022639" id="7613068837530858996" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056022639.1138056395725" target="tpck.1169194664001" resolveInfo="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ki41.6666499814681415858" id="7613068837530860722" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.1622293396948952339" id="7613068837530860723" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="from" />
              <node concept="7gwc.1114706874351" id="7613068837530860724" role="asn4.1133920641626.5169995583184591170" info="ln">
                <node concept="7gwc.1168024337012" id="7613068837530860725" role="7gwc.1114706874351.1168024447342" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530860726" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530860727" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1197027756228" id="7613068837530860728" role="vg0i.1068580123155.1068580123156" info="nn">
                        <node concept="4ia1.1138056143562" id="7613068837530860729" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056143562.1138056516764" target="y9c6.2730820940293503839" />
                        </node>
                        <node concept="7gwc.1167169188348" id="7613068837530860730" role="vg0i.1197027756228.1197027771414" info="nn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ki41.6666499814681415858" id="7613068837530860731" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.1622293396948952339" id="7613068837530860732" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="to" />
              <node concept="7gwc.1114706874351" id="7613068837530860733" role="asn4.1133920641626.5169995583184591170" info="ln">
                <node concept="7gwc.1168024337012" id="7613068837530860734" role="7gwc.1114706874351.1168024447342" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530860735" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530860736" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1197027756228" id="7613068837530860737" role="vg0i.1068580123155.1068580123156" info="nn">
                        <node concept="4ia1.1138056143562" id="7613068837530860738" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056143562.1138056516764" target="y9c6.2730820940293503841" />
                        </node>
                        <node concept="7gwc.1167169188348" id="7613068837530860739" role="vg0i.1197027756228.1197027771414" info="nn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ki41.6666499814681415858" id="7613068837530860740" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.1622293396948952339" id="7613068837530860741" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="room" />
              <node concept="7gwc.1087833241328" id="7613068837530860742" role="asn4.1133920641626.5169995583184591170" info="ln">
                <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
                <node concept="7gwc.1167756080639" id="7613068837530860743" role="7gwc.1087833241328.1167756362303" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530860744" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530860745" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1081236700937" id="7613068837530860746" role="vg0i.1068580123155.1068580123156" info="nn">
                        <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~String" resolveInfo="String" />
                        <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~String%dvalueOf(int)%cjava%dlang%dString" resolveInfo="valueOf" />
                        <node concept="vg0i.1197027756228" id="7613068837530860747" role="vg0i.1204053956946.1068499141038" info="nn">
                          <node concept="7gwc.1167169188348" id="7613068837530860748" role="vg0i.1197027756228.1197027771414" info="nn" />
                          <node concept="4ia1.1138056022639" id="7613068837530860749" role="vg0i.1197027756228.1197027833540" info="nn">
                            <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503881" resolveInfo="room" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="ki41.6666499814681415858" id="7613068837530860750" role="ki41.6666499814681415858.1622293396948928802" info="ng">
            <property role="ki41.6666499814681415858.6666499814681415862" value="td" />
            <node concept="ki41.1622293396948952339" id="7613068837530860751" role="ki41.6666499814681415858.1622293396948928802" info="nn">
              <property role="ki41.1622293396948952339.1622293396948953704" value="teacher" />
              <node concept="7gwc.1087833241328" id="7613068837530860752" role="asn4.1133920641626.5169995583184591170" info="ln">
                <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
                <node concept="7gwc.1167756080639" id="7613068837530860753" role="7gwc.1087833241328.1167756362303" info="in">
                  <node concept="vg0i.1068580123136" id="7613068837530860754" role="vg0i.1137021947720.1137022507850" info="sn">
                    <node concept="vg0i.1068580123155" id="7613068837530860755" role="vg0i.1068580123136.1068581517665" info="nn">
                      <node concept="vg0i.1197027756228" id="7613068837530860756" role="vg0i.1068580123155.1068580123156" info="nn">
                        <node concept="7gwc.1167169188348" id="7613068837530860757" role="vg0i.1197027756228.1197027771414" info="nn" />
                        <node concept="4ia1.1138056022639" id="7613068837530860758" role="vg0i.1197027756228.1197027833540" info="nn">
                          <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503896" resolveInfo="presenter" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="7gwc.1095672379244" id="7613068837530449989" role="asn4.1133920641626.5169995583184591170" info="ng" />
      </node>
    </node>
    <node concept="7gwc.1092059087312" id="7613068837530584053" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="reduce_Time" />
      <reference role="7gwc.1092059087312.1168285871518" target="y9c6.2730820940293503813" resolveInfo="Time" />
      <node concept="ki41.1622293396948952339" id="7613068837530584061" role="7gwc.1092059087312.1092060348987" info="nn">
        <property role="ki41.1622293396948952339.1622293396948953704" value="time" />
        <node concept="7gwc.1095672379244" id="7613068837530584063" role="asn4.1133920641626.5169995583184591170" info="ng" />
        <node concept="7gwc.1087833241328" id="7613068837530588371" role="asn4.1133920641626.5169995583184591170" info="ln">
          <property role="asn4.3364660638048049750.1757699476691236117" value="value" />
          <node concept="7gwc.1167756080639" id="7613068837530588372" role="7gwc.1087833241328.1167756362303" info="in">
            <node concept="vg0i.1068580123136" id="7613068837530588373" role="vg0i.1137021947720.1137022507850" info="sn">
              <node concept="vg0i.1068580123155" id="7613068837530589200" role="vg0i.1068580123136.1068581517665" info="nn">
                <node concept="vg0i.1068581242875" id="7613068837530646792" role="vg0i.1068580123155.1068580123156" info="nn">
                  <node concept="vg0i.1197027756228" id="7613068837530649443" role="vg0i.1081773326031.1081773367579" info="nn">
                    <node concept="7gwc.1167169188348" id="7613068837530648622" role="vg0i.1197027756228.1197027771414" info="nn" />
                    <node concept="4ia1.1138056022639" id="7613068837530651770" role="vg0i.1197027756228.1197027833540" info="nn">
                      <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503824" resolveInfo="minutes" />
                    </node>
                  </node>
                  <node concept="vg0i.1068581242875" id="7613068837530641735" role="vg0i.1081773326031.1081773367580" info="nn">
                    <node concept="vg0i.1197027756228" id="7613068837530638107" role="vg0i.1081773326031.1081773367580" info="nn">
                      <node concept="7gwc.1167169188348" id="7613068837530637847" role="vg0i.1197027756228.1197027771414" info="nn" />
                      <node concept="4ia1.1138056022639" id="7613068837530639289" role="vg0i.1197027756228.1197027833540" info="nn">
                        <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503822" resolveInfo="hours" />
                      </node>
                    </node>
                    <node concept="vg0i.1070475926800" id="7613068837530642506" role="vg0i.1081773326031.1081773367579" info="nn">
                      <property role="vg0i.1070475926800.1070475926801" value=":" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>

