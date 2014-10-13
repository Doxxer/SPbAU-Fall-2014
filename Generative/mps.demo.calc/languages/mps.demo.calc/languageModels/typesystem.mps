<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:bfe389b5-6770-43ab-99bd-893965a9fd3e(mps.demo.calc.typesystem)">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="zqqo" modelUID="r:c2c61bec-e8f3-4009-a1a5-a9a48977fc61(mps.demo.calc.structure)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="7" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="3541037617674591973" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_UserFunction" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674591974" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3541037617674678270" nodeInfo="nn">
        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3541037617674678273" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="calc" />
          <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="3541037617674678269" nodeInfo="in">
            <link role="concept" roleId="tp25.1138405853777" targetNodeId="zqqo.3541037617674586790" resolveInfo="Calculator" />
          </node>
          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3541037617674682345" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="3541037617674682222" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="3541037617674591976" resolveInfo="userFunction" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="3541037617674683317" nodeInfo="nn">
              <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="3541037617674683319" nodeInfo="ng">
                <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="3541037617674683372" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="zqqo.3541037617674586790" resolveInfo="Calculator" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="3541037617674683580" nodeInfo="nn">
        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674683583" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="3541037617674718411" nodeInfo="nn">
            <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="3541037617674718439" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="3541037617674718435" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3541037617674718594" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="3541037617674718484" nodeInfo="nn">
                    <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="3541037617674591976" resolveInfo="userFunction" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3541037617674719184" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="zqqo.3541037617674591946" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="3541037617674719382" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="3541037617674719383" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="3541037617674719384" nodeInfo="ng">
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="1668115546281635646" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="1668115546281635704" nodeInfo="in" />
                  </node>
                  <node role="argument" roleId="tpd4.1179479418730" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719385" nodeInfo="in" />
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674719386" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719387" nodeInfo="in" />
                  </node>
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674719388" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719389" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719390" nodeInfo="in" />
                  </node>
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674719391" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719392" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719393" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="3541037617674719394" nodeInfo="in" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3541037617674686142" nodeInfo="nn">
          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3541037617674683760" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3541037617674683610" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3541037617674678273" resolveInfo="calc" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="3541037617674684832" nodeInfo="nn">
              <link role="property" roleId="tp25.1138056395725" targetNodeId="zqqo.3541037617674586880" resolveInfo="datatype" />
            </node>
          </node>
          <node role="operation" roleId="tpee.1197027833540" type="tp25.Property_HasValue_Enum" typeId="tp25.1146171026731" id="3541037617674690410" nodeInfo="nn">
            <node role="value" roleId="tp25.1146171026732" type="tp25.EnumMemberReference" typeId="tp25.1138676077309" id="3541037617674690412" nodeInfo="nn">
              <link role="enumMember" roleId="tp25.1138676095763" targetNodeId="zqqo.3541037617674586866" />
            </node>
          </node>
        </node>
        <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="3541037617674692431" nodeInfo="nn">
          <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674692432" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="3541037617674719625" nodeInfo="nn">
              <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
              <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="3541037617674719653" nodeInfo="ng">
                <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="3541037617674719649" nodeInfo="nn">
                  <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3541037617674719792" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="3541037617674719682" nodeInfo="nn">
                      <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="3541037617674591976" resolveInfo="userFunction" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="3541037617674720360" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="zqqo.3541037617674591946" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="3541037617674720580" nodeInfo="ng">
                <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="3541037617674720581" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="3541037617674720582" nodeInfo="ng">
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="1668115546281635774" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.VoidType" typeId="tpee.1068581517677" id="1668115546281635845" nodeInfo="in" />
                    </node>
                    <node role="argument" roleId="tpd4.1179479418730" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633437" nodeInfo="in" />
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674720584" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633438" nodeInfo="in" />
                    </node>
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674720586" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633439" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633440" nodeInfo="in" />
                    </node>
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="3541037617674720589" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633441" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633442" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="1668115546281633443" nodeInfo="in" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="3541037617674591976" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="userFunction" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="zqqo.3541037617674591945" resolveInfo="UserFunction" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1668115546281658842" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_GetStatusExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="status" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1668115546281658843" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1668115546282216197" nodeInfo="nn">
        <property name="checkOnly" nameId="tpd4.1206359757216" value="false" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546282216199" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1668115546282216200" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1668115546282216201" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1668115546281658845" resolveInfo="getStatusExpression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546282216202" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1668115546282216203" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1668115546282216204" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1668115546281658845" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="getStatusExpression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="zqqo.1668115546281636612" resolveInfo="GetStatusExpression" />
    </node>
  </root>
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="1668115546281945028" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_SetStatusExpression" />
    <property name="virtualPackage" nameId="tpck.1193676396447" value="status" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="1668115546281945029" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="1668115546281945089" nodeInfo="nn">
        <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546281945099" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1668115546281945095" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1668115546281945262" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1668115546281945128" nodeInfo="nn">
                <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1668115546281945031" resolveInfo="setStatusExpression" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="1668115546281946450" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="zqqo.1668115546281658722" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546281946581" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1668115546281946577" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1668115546281946683" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateEquationStatement" typeId="tpd4.1174658326157" id="1668115546282216580" nodeInfo="nn">
        <property name="checkOnly" nameId="tpd4.1206359757216" value="false" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546282216582" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="1668115546282216583" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="1668115546282216584" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="1668115546281945031" resolveInfo="setStatusExpression" />
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="1668115546282216585" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="1668115546282216586" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1668115546282216587" nodeInfo="in">
              <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Object" resolveInfo="Object" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="1668115546281945031" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="setStatusExpression" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="zqqo.1668115546281658719" resolveInfo="SetStatusExpression" />
    </node>
  </root>
</model>

