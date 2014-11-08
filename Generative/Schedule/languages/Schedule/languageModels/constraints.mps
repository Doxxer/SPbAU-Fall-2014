<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7293b76b-3463-4495-85f2-5d11d7dddac6(Schedule.constraints)">
  <persistence version="9" />
  <debugInfo>
    <lang id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" />
    <lang id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" />
    <concept id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" />
    <concept id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1153138554286" name="jetbrains.mps.lang.constraints.structure.ConstraintsFunctionParameter_propertyValue" />
    <concept id="f3061a53-9226-4cc5-a443-f952ceaf5816/1153417849900" name="jetbrains.mps.baseLanguage.structure.GreaterThanOrEqualsExpression" />
    <concept id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1212096972063" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyValidator" />
    <concept id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" />
    <property id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580320020/1068580320021" name="value" />
    <refRole id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1147467115080/1147467295099" name="applicableProperty" />
    <refRole id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1213093968558/1213093996982" name="concept" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123155/1068580123156" name="expression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" name="statement" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367579" name="rightExpression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1081773326031/1081773367580" name="leftExpression" />
    <childRole id="f3061a53-9226-4cc5-a443-f952ceaf5816/1137021947720/1137022507850" name="body" />
    <childRole id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1147467115080/1212097481299" name="propertyValidator" />
    <childRole id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1/1213093968558/1213098023997" name="property" />
  </debugInfo>
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" version="-1" index="qzws" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" version="0" implicit="true" index="vg0i" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp1t" ref="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" implicit="true" />
    <import index="y9c6" ref="r:03e2b27a-dd59-4302-abf1-e73a72507f84(Schedule.structure)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="qzws.1213093968558" id="2730820940293512543" info="ng">
      <reference role="qzws.1213093968558.1213093996982" target="y9c6.2730820940293503813" resolveInfo="Time" />
      <node concept="qzws.1147467115080" id="2730820940293513090" role="qzws.1213093968558.1213098023997" info="ng">
        <reference role="qzws.1147467115080.1147467295099" target="y9c6.2730820940293503822" resolveInfo="hh" />
        <node concept="qzws.1212096972063" id="2730820940293513092" role="qzws.1147467115080.1212097481299" info="in">
          <node concept="vg0i.1068580123136" id="2730820940293513093" role="vg0i.1137021947720.1137022507850" info="sn">
            <node concept="vg0i.1068580123155" id="2730820940293617515" role="vg0i.1068580123136.1068581517665" info="nn">
              <node concept="vg0i.1080120340718" id="2730820940293680359" role="vg0i.1068580123155.1068580123156" info="nn">
                <node concept="vg0i.1081506773034" id="2730820940293719841" role="vg0i.1081773326031.1081773367579" info="nn">
                  <node concept="qzws.1153138554286" id="2730820940293681257" role="vg0i.1081773326031.1081773367580" info="nn" />
                  <node concept="vg0i.1068580320020" id="2730820940293684728" role="vg0i.1081773326031.1081773367579" info="nn">
                    <property role="vg0i.1068580320020.1068580320021" value="24" />
                  </node>
                </node>
                <node concept="vg0i.1153417849900" id="2730820940293678127" role="vg0i.1081773326031.1081773367580" info="nn">
                  <node concept="qzws.1153138554286" id="2730820940293675765" role="vg0i.1081773326031.1081773367580" info="nn" />
                  <node concept="vg0i.1068580320020" id="2730820940293678808" role="vg0i.1081773326031.1081773367579" info="nn">
                    <property role="vg0i.1068580320020.1068580320021" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="qzws.1147467115080" id="2730820940293686561" role="qzws.1213093968558.1213098023997" info="ng">
        <reference role="qzws.1147467115080.1147467295099" target="y9c6.2730820940293503824" resolveInfo="mm" />
        <node concept="qzws.1212096972063" id="2730820940293687482" role="qzws.1147467115080.1212097481299" info="in">
          <node concept="vg0i.1068580123136" id="2730820940293687483" role="vg0i.1137021947720.1137022507850" info="sn">
            <node concept="vg0i.1068580123155" id="2730820940293688141" role="vg0i.1068580123136.1068581517665" info="nn">
              <node concept="vg0i.1080120340718" id="2730820940293695448" role="vg0i.1068580123155.1068580123156" info="nn">
                <node concept="vg0i.1081506773034" id="2730820940293724936" role="vg0i.1081773326031.1081773367579" info="nn">
                  <node concept="qzws.1153138554286" id="2730820940293696346" role="vg0i.1081773326031.1081773367580" info="nn" />
                  <node concept="vg0i.1068580320020" id="2730820940293699817" role="vg0i.1081773326031.1081773367579" info="nn">
                    <property role="vg0i.1068580320020.1068580320021" value="60" />
                  </node>
                </node>
                <node concept="vg0i.1153417849900" id="2730820940293693216" role="vg0i.1081773326031.1081773367580" info="nn">
                  <node concept="qzws.1153138554286" id="2730820940293688140" role="vg0i.1081773326031.1081773367580" info="nn" />
                  <node concept="vg0i.1068580320020" id="2730820940293693897" role="vg0i.1081773326031.1081773367579" info="nn">
                    <property role="vg0i.1068580320020.1068580320021" value="0" />
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

