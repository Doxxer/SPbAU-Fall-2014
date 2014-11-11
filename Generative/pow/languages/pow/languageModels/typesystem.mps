<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:a45a6b95-af7a-4e71-b2ac-74e54f692341(pow.typesystem)">
  <persistence version="8" />
  <language namespace="7a5dda62-9140-4668-ab76-d5ed1746f2b2(jetbrains.mps.lang.typesystem)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpd4" modelUID="r:00000000-0000-4000-0000-011c895902b4(jetbrains.mps.lang.typesystem.structure)" version="7" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="jla4" modelUID="r:c69350ad-d75a-4bf8-a0e0-c98822c768a1(pow.structure)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <root type="tpd4.InferenceRule" typeId="tpd4.1174643105530" id="229046873500411042" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="typeof_Pow" />
    <node role="body" roleId="tpd4.1195213635060" type="tpee.StatementList" typeId="tpee.1068580123136" id="229046873500411745" nodeInfo="sn">
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="4231759001348001913" nodeInfo="nn">
        <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4231759001348001932" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="4231759001348001928" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4231759001348002099" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="4231759001348001964" nodeInfo="nn">
                <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="229046873500411747" resolveInfo="pow" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="4231759001348003292" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="jla4.229046873500366649" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4231759001348584151" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="4231759001348584147" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="4231759001348584603" nodeInfo="ng">
              <node role="argument" roleId="tpd4.1179479418730" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4231759001348584773" nodeInfo="in" />
              <node role="argument" roleId="tpd4.1179479418730" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4231759001348599426" nodeInfo="in" />
            </node>
          </node>
        </node>
      </node>
      <node role="statement" roleId="tpee.1068581517665" type="tpd4.CreateLessThanInequationStatement" typeId="tpd4.1174663118805" id="4231759001348318881" nodeInfo="nn">
        <property name="checkOnly" nameId="tpd4.1206359757216" value="true" />
        <node role="leftExpression" roleId="tpd4.1174660783413" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4231759001348318882" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tpd4.TypeOfExpression" typeId="tpd4.1174657487114" id="4231759001348318883" nodeInfo="nn">
            <node role="term" roleId="tpd4.1174657509053" type="tpee.DotExpression" typeId="tpee.1197027756228" id="4231759001348318884" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpd4.ApplicableNodeReference" typeId="tpd4.1174650418652" id="4231759001348318885" nodeInfo="nn">
                <link role="applicableNode" roleId="tpd4.1174650432090" targetNodeId="229046873500411747" resolveInfo="pow" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="4231759001348319724" nodeInfo="nn">
                <link role="link" roleId="tp25.1138056516764" targetNodeId="jla4.229046873500366652" />
              </node>
            </node>
          </node>
        </node>
        <node role="rightExpression" roleId="tpd4.1174660783414" type="tpd4.NormalTypeClause" typeId="tpd4.1185788614172" id="4231759001348318887" nodeInfo="ng">
          <node role="normalType" roleId="tpd4.1185788644032" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="4231759001348318888" nodeInfo="nn">
            <node role="quotedNode" roleId="tp3r.1196350785114" type="tpd4.JoinType" typeId="tpd4.1179479408386" id="4231759001348318889" nodeInfo="ng">
              <node role="argument" roleId="tpd4.1179479418730" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4231759001348318890" nodeInfo="in" />
              <node role="argument" roleId="tpd4.1179479418730" type="tpee.IntegerType" typeId="tpee.1070534370425" id="4231759001348599707" nodeInfo="in" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="applicableNode" roleId="tpd4.1174648101952" type="tpd4.ConceptReference" typeId="tpd4.1174642788531" id="229046873500411747" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="pow" />
      <link role="concept" roleId="tpd4.1174642800329" targetNodeId="jla4.229046873500049533" resolveInfo="Pow" />
    </node>
  </root>
</model>

