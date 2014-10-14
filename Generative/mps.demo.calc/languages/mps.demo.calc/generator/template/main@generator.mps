<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:e9b20125-2a55-454a-9652-2f5ffffc0d04(mps.demo.calc.generator.template.main@generator)">
  <persistence version="8" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)" />
  <language namespace="d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)" />
  <language namespace="471ef0ac-c7b2-4ee3-86a1-12b20e46ca39(mps.demo.calc)" />
  <language namespace="f2801650-65d5-424e-bb1b-463a8781b786(jetbrains.mps.baseLanguage.javadoc)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="gm5h" modelUID="r:bdbe17a1-deb9-4302-8eef-29e52358ba63(mps.demo.calc.runtime)" version="-1" />
  <import index="dbrf" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#javax.swing(JDK/javax.swing@java_stub)" version="-1" />
  <import index="1t7x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="tpf8" modelUID="r:00000000-0000-4000-0000-011c895902e8(jetbrains.mps.lang.generator.structure)" version="2" implicit="yes" />
  <import index="zqqo" modelUID="r:c2c61bec-e8f3-4009-a1a5-a9a48977fc61(mps.demo.calc.structure)" version="-1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <root type="tpf8.MappingConfiguration" typeId="tpf8.1095416546421" id="3541037617674586681" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="main" />
    <node role="rootMappingRule" roleId="tpf8.1167514678247" type="tpf8.Root_MappingRule" typeId="tpf8.1167514355419" id="2096629347734797740" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1167169349424" targetNodeId="zqqo.3541037617674586790" resolveInfo="Calculator" />
      <link role="template" roleId="tpf8.1167514355421" targetNodeId="2096629347734798560" resolveInfo="Calculator" />
    </node>
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="2096629347734798560" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Calculator" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.ConstructorDeclaration" typeId="tpee.1068580123140" id="2096629347734820547" nodeInfo="igu">
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2096629347734820548" nodeInfo="in" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2096629347734820550" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SuperConstructorInvocation" typeId="tpee.1070475587102" id="2096629347734821727" nodeInfo="nn">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="gm5h.2096629347734740127" resolveInfo="BaseCalculator" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2096629347734821758" nodeInfo="nn">
            <property name="value" nameId="tpee.1070475926801" value="title" />
            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2096629347734821896" nodeInfo="nn">
              <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
              <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2096629347734821897" nodeInfo="nn">
                <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2096629347734821898" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2096629347734822593" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2096629347734822863" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2096629347734822592" nodeInfo="nn" />
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="2096629347734824131" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="6180488926922124136" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="6180488926922137491" nodeInfo="nn">
          <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="6180488926922137493" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="6180488926922141234" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="6180488926922141235" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="digits" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="6180488926922141236" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dbrf.~JPanel" resolveInfo="JPanel" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6180488926922141286" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6180488926922142241" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dbrf.~JPanel%d&lt;init&gt;(java%dawt%dLayoutManager)" resolveInfo="JPanel" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6180488926922142284" nodeInfo="nn">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6180488926922144475" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~GridLayout%d&lt;init&gt;(int,int,int,int)" resolveInfo="GridLayout" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6180488926922144582" nodeInfo="nn">
                          <property name="value" nameId="tpee.1068580320021" value="0" />
                        </node>
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6180488926922147059" nodeInfo="nn">
                          <property name="value" nameId="tpee.1068580320021" value="3" />
                        </node>
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6180488926922147131" nodeInfo="nn">
                          <property name="value" nameId="tpee.1068580320021" value="10" />
                        </node>
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.IntegerConstant" typeId="tpee.1068580320020" id="6180488926922147266" nodeInfo="nn">
                          <property name="value" nameId="tpee.1068580320021" value="10" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8485486350592733561" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="6180488926922177941" nodeInfo="nn">
              <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="6180488926922177943" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="digit" />
              </node>
              <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6180488926922178010" nodeInfo="nn">
                <node role="creator" roleId="tpee.1145553007750" type="tpee.ArrayCreatorWithInitializer" typeId="tpee.1154542696413" id="6180488926922191292" nodeInfo="nn">
                  <node role="componentType" roleId="tpee.1154542793668" type="tpee.CharType" typeId="tpee.1070534555686" id="6180488926922179229" nodeInfo="in" />
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922191370" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="7" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922191582" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="8" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922191900" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="9" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922192177" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="4" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922192486" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="5" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922192827" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="6" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922193198" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="1" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922193606" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="2" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922193909" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="3" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922194379" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="0" />
                  </node>
                  <node role="initValue" roleId="tpee.1154542803372" type="tpee.CharConstant" typeId="tpee.1200397529627" id="6180488926922194880" nodeInfo="nn">
                    <property name="charConstant" nameId="tpee.1200397540847" value="." />
                  </node>
                </node>
              </node>
              <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="6180488926922177947" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6180488926922195235" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6180488926922195969" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6180488926922195234" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6180488926922141235" resolveInfo="digits" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="6180488926922198984" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent)%cjava%dawt%dComponent" resolveInfo="add" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6180488926922199410" nodeInfo="nn">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6180488926922200950" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="gm5h.2096629347734779383" resolveInfo="BaseCalculator.Digit" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="6180488926922207152" nodeInfo="nn">
                            <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="6180488926922207171" nodeInfo="nn">
                              <property name="value" nameId="tpee.1070475926801" value="" />
                            </node>
                            <node role="leftExpression" roleId="tpee.1081773367580" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="6180488926922201556" nodeInfo="nn">
                              <link role="variable" roleId="tp2q.1153944258490" targetNodeId="6180488926922177943" resolveInfo="digit" />
                            </node>
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="6180488926922211235" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="6180488926922177943" resolveInfo="digit" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6180488926922215445" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="6180488926922215443" nodeInfo="nn">
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="1t7x.~Container%dadd(java%dawt%dComponent,java%dlang%dObject)%cvoid" resolveInfo="add" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="6180488926922218114" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="6180488926922141235" resolveInfo="digits" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="6180488926922219470" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="1t7x.~BorderLayout" resolveInfo="BorderLayout" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1t7x.~BorderLayout%dWEST" resolveInfo="WEST" />
                </node>
              </node>
            </node>
          </node>
          <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.IfMacro" typeId="tpf8.1118773211870" id="6180488926922138304" nodeInfo="nn">
            <node role="conditionFunction" roleId="tpf8.1167945861827" type="tpf8.IfMacro_Condition" typeId="tpf8.1167945743726" id="6180488926922138307" nodeInfo="nn">
              <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="6180488926922138308" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6180488926922138314" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="6180488926922138309" nodeInfo="nn">
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="6180488926922138312" nodeInfo="nn">
                      <link role="property" roleId="tp25.1138056395725" targetNodeId="zqqo.3541037617674586847" resolveInfo="digits" />
                    </node>
                    <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="6180488926922138313" nodeInfo="nn" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2096629347734820551" nodeInfo="nn" />
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="6180488926922031419" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="6180488926922032251" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="6180488926922032252" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="args" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.ArrayType" typeId="tpee.1070534760951" id="6180488926922032253" nodeInfo="in">
          <node role="componentType" roleId="tpee.1070534760952" type="tpee.StringType" typeId="tpee.1225271177708" id="6180488926922032254" nodeInfo="in" />
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="6180488926922032255" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="6180488926922032256" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="6180488926922032257" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="6180488926922116866" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="6180488926922116864" nodeInfo="nn">
            <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="6180488926922117797" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2096629347734820547" resolveInfo="Calculator" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2096629347734798561" nodeInfo="nn" />
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.RootTemplateAnnotation" typeId="tpf8.1168619357332" id="2096629347734798562" nodeInfo="ng">
      <link role="applicableConcept" roleId="tpf8.1168619429071" targetNodeId="zqqo.3541037617674586790" resolveInfo="Calculator" />
    </node>
    <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tpf8.PropertyMacro" typeId="tpf8.1087833241328" id="2096629347734802297" nodeInfo="nn">
      <property name="propertyName" nameId="tpck.1757699476691236117" value="name" />
      <node role="propertyValueFunction" roleId="tpf8.1167756362303" type="tpf8.PropertyMacro_GetPropertyValue" typeId="tpf8.1167756080639" id="2096629347734802298" nodeInfo="nn">
        <node role="body" roleId="tpee.1137022507850" type="tpee.StatementList" typeId="tpee.1068580123136" id="2096629347734802299" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2096629347734808116" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2096629347734808386" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpf8.TemplateFunctionParameter_sourceNode" typeId="tpf8.1167169188348" id="2096629347734808115" nodeInfo="nn" />
              <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="2096629347734810214" nodeInfo="nn">
                <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="superclass" roleId="tpee.1165602531693" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2096629347734814098" nodeInfo="in">
      <link role="classifier" roleId="tpee.1107535924139" targetNodeId="gm5h.2096629347734353751" resolveInfo="BaseCalculator" />
    </node>
  </root>
</model>

