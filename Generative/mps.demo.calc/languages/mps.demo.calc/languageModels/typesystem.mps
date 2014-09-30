<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:ba7d966d-d046-4b3c-9907-9611d36e2f74(mps.demo.calc.typesystem)">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="7" implicit="yes" />
  <import index="r6ks" modelUID="r:70c7fae2-0691-4621-8b70-f7cad69fc505(mps.demo.calc.structure)" version="1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="2009888184782499323" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_UserFunction" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="2009888184782500026" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="4069628166919881496" nodeInfo="nn">
        <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="4069628166919881499" nodeInfo="nr">
          <property name="name" nameId="tpck.1169194664001" value="calc" />
          <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="4069628166919881495" nodeInfo="in">
            <link role="concept" roleId="tp25.1138405853777" targetNodeId="r6ks.2009888184782043095" resolveInfo="Calculator" />
          </node>
          <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4069628166919922809" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="4069628166919922686" nodeInfo="nn">
              <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="2009888184782500028" resolveInfo="userFunction" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="4069628166919923781" nodeInfo="nn">
              <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="4069628166919923783" nodeInfo="ng">
                <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="4069628166919923836" nodeInfo="nn">
                  <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="r6ks.2009888184782043095" resolveInfo="Calculator" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="4069628166919923959" nodeInfo="nn">
        <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919923962" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="4069628166919955649" nodeInfo="nn">
            <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
            <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4069628166919955677" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="4069628166919955673" nodeInfo="nn">
                <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4069628166919955808" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="4069628166919955706" nodeInfo="nn">
                    <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="2009888184782500028" resolveInfo="userFunction" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="4069628166919956937" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="r6ks.2009888184782378641" />
                  </node>
                </node>
              </node>
            </node>
            <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4069628166919957195" nodeInfo="ng">
              <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="4069628166919957196" nodeInfo="nn">
                <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="4069628166919957197" nodeInfo="ng">
                  <node role="argument" roleId="tpd4.1179479418730" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957198" nodeInfo="in" />
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957199" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957200" nodeInfo="in" />
                  </node>
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957201" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957202" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957203" nodeInfo="in" />
                  </node>
                  <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957204" nodeInfo="in">
                    <node role="resultType" roleId="tp2c.1199542457201" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957205" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957206" nodeInfo="in" />
                    <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4069628166919957207" nodeInfo="in" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4069628166919926617" nodeInfo="nn">
          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4069628166919924234" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919924084" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919881499" resolveInfo="calc" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="4069628166919925306" nodeInfo="nn">
              <link role="property" roleId="tp25.1138056395725" targetNodeId="r6ks.2009888184782341442" resolveInfo="datatype" />
            </node>
          </node>
          <node role="operation" roleId="tpee.1197027833540" type="tp25.Property_HasValue_Enum" typeId="tp25.1146171026731" id="4069628166919930885" nodeInfo="nn">
            <node role="value" roleId="tp25.1146171026732" type="tp25.EnumMemberReference" typeId="tp25.1138676077309" id="4069628166919930887" nodeInfo="nn">
              <link role="enumMember" roleId="tp25.1138676095763" targetNodeId="r6ks.2009888184782341413" />
            </node>
          </node>
        </node>
        <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="4069628166919933637" nodeInfo="nn">
          <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919933638" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="4069628166919957634" nodeInfo="nn">
              <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
              <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4069628166919957673" nodeInfo="ng">
                <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="4069628166919957674" nodeInfo="nn">
                  <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4069628166919957675" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="4069628166919957676" nodeInfo="nn">
                      <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="2009888184782500028" resolveInfo="userFunction" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="4069628166919957677" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="r6ks.2009888184782378641" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4069628166919957936" nodeInfo="ng">
                <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="4069628166919957937" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="4069628166919957938" nodeInfo="ng">
                    <node role="argument" roleId="tpd4.1179479418730" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957939" nodeInfo="in" />
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957940" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957941" nodeInfo="in" />
                    </node>
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957942" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957943" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957944" nodeInfo="in" />
                    </node>
                    <node role="argument" roleId="tpd4.1179479418730" type="tp2c.FunctionType" typeId="tp2c.1199542442495" id="4069628166919957945" nodeInfo="in">
                      <node role="resultType" roleId="tp2c.1199542457201" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957946" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957947" nodeInfo="in" />
                      <node role="parameterType" roleId="tp2c.1199542501692" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919957948" nodeInfo="in" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="2009888184782500028" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="userFunction" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="r6ks.2009888184782378585" resolveInfo="UserFunction" />
    </node>
  </root>
</model>

