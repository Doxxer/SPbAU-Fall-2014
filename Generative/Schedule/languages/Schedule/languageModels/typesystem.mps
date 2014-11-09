<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:31ad67ca-5d67-4380-a174-190491594ddd(Schedule.typesystem)">
  <persistence version="9" />
  <debugInfo>
    <lang id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <lang id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" />
    <lang id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" />
    <concept id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" />
    <concept id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" />
    <concept id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" />
    <concept id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1188811367543" name="jetbrains.mps.lang.typesystem.structure.ComparisonRule" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141037" name="baseMethodDeclaration" />
    <refRole id="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056022639/1138056395725" name="property" />
    <refRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081236700937/1144433194310" name="classConcept" />
    <refRole id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174642788531/1174642800329" name="concept" />
    <refRole id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174650418652/1174650432090" name="applicableNode" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1204053956946/1068499141038" name="actualArgument" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155/1068580123156" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" name="statement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367579" name="rightExpression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367580" name="leftExpression" />
    <childRole id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1174648085619/1174648101952" name="applicableNode" />
    <childRole id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1175147569072/1175147624276" name="body" />
    <childRole id="7a5dda62-9140-4668-ab76-d5ed1746f2b2/1188811367543/1188820750135" name="anotherNode" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027771414" name="operand" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1197027756228/1197027833540" name="operation" />
  </debugInfo>
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" version="-1" index="swut" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" version="0" implicit="true" index="vg0i" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="0" implicit="true" index="asn4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" version="0" implicit="true" index="4ia1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpd4" ref="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" implicit="true" />
    <import index="y9c6" ref="r:03e2b27a-dd59-4302-abf1-e73a72507f84(Schedule.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" implicit="true" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <contents>
    <node concept="swut.1188811367543" id="7613068837531089202" info="ig">
      <property role="asn4.1169194658468.1169194664001" value="TimeCompare" />
      <node concept="vg0i.1068580123136" id="7613068837531089554" role="swut.1175147569072.1175147624276" info="sn">
        <node concept="vg0i.1068580123155" id="7613068837531091372" role="vg0i.1068580123136.1068581517665" info="nn">
          <node concept="vg0i.1081506773034" id="7613068837531098669" role="vg0i.1068580123155.1068580123156" info="nn">
            <node concept="vg0i.1081236700937" id="7613068837531099258" role="vg0i.1081773326031.1081773367579" info="nn">
              <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~Integer" resolveInfo="Integer" />
              <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~Integer%dvalueOf(java%dlang%dString)%cjava%dlang%dInteger" resolveInfo="valueOf" />
              <node concept="vg0i.1197027756228" id="7613068837531101106" role="vg0i.1204053956946.1068499141038" info="nn">
                <node concept="swut.1174650418652" id="7613068837531100813" role="vg0i.1197027756228.1197027771414" info="nn">
                  <reference role="swut.1174650418652.1174650432090" target="7613068837531095346" resolveInfo="time2" />
                </node>
                <node concept="4ia1.1138056022639" id="7613068837531104843" role="vg0i.1197027756228.1197027833540" info="nn">
                  <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503822" resolveInfo="hours" />
                </node>
              </node>
            </node>
            <node concept="vg0i.1081236700937" id="7613068837531096391" role="vg0i.1081773326031.1081773367580" info="nn">
              <reference role="vg0i.1204053956946.1068499141037" target="e2lb.~Integer%dvalueOf(java%dlang%dString)%cjava%dlang%dInteger" resolveInfo="valueOf" />
              <reference role="vg0i.1081236700937.1144433194310" target="e2lb.~Integer" resolveInfo="Integer" />
              <node concept="vg0i.1197027756228" id="7613068837531096564" role="vg0i.1204053956946.1068499141038" info="nn">
                <node concept="swut.1174650418652" id="7613068837531096428" role="vg0i.1197027756228.1197027771414" info="nn">
                  <reference role="swut.1174650418652.1174650432090" target="7613068837531089557" resolveInfo="time" />
                </node>
                <node concept="4ia1.1138056022639" id="7613068837531097086" role="vg0i.1197027756228.1197027833540" info="nn">
                  <reference role="4ia1.1138056022639.1138056395725" target="y9c6.2730820940293503822" resolveInfo="hours" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="swut.1174642788531" id="7613068837531089557" role="swut.1174648085619.1174648101952" info="ig">
        <property role="asn4.1169194658468.1169194664001" value="time" />
        <reference role="swut.1174642788531.1174642800329" target="y9c6.2730820940293503813" resolveInfo="Time" />
      </node>
      <node concept="swut.1174642788531" id="7613068837531095346" role="swut.1188811367543.1188820750135" info="ig">
        <property role="asn4.1169194658468.1169194664001" value="time2" />
        <reference role="swut.1174642788531.1174642800329" target="y9c6.2730820940293503813" resolveInfo="Time" />
      </node>
    </node>
  </contents>
</model>

