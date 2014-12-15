<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:37995143-823f-45fb-bad3-9603ab3b98d0(TraceAspect.lang.runtime)">
  <persistence version="8" />
  <language namespace="ed6d7656-532c-4bc2-81d1-af945aeb8280(jetbrains.mps.baseLanguage.blTypes)" />
  <language namespace="9ded098b-ad6a-4657-bfd9-48636cfe8bc3(jetbrains.mps.lang.traceable)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="13744753-c81f-424a-9c1b-cf8943bf4e86(jetbrains.mps.lang.sharedConcepts)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <language namespace="3a13115c-633c-4c5c-bbcc-75c4219e9555(jetbrains.mps.lang.quotation)" />
  <import index="j9pa" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.text(JDK/java.text@java_stub)" version="-1" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="r54" modelUID="r:fb7b746d-9007-467d-9d6d-f0cf616a37b7(TraceAspect.lang.generator.template.main@generator)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="tp3r" modelUID="r:00000000-0000-4000-0000-011c8959034b(jetbrains.mps.lang.quotation.structure)" version="0" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3292382144807380716" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Tracer" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="2085073781388310655" nodeInfo="igu">
      <property name="isVolatile" nameId="tpee.6468716278899126575" value="false" />
      <property name="isTransient" nameId="tpee.6468716278899125786" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="showTime" />
      <property name="isFinal" nameId="tpee.1176718929932" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="2085073781388309324" nodeInfo="nn" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="2085073781388310540" nodeInfo="in" />
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="2085073781388724538" nodeInfo="nn">
        <property name="value" nameId="tpee.1068580123138" value="true" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="2085073781388697362" nodeInfo="igu">
      <property name="isVolatile" nameId="tpee.6468716278899126575" value="false" />
      <property name="isTransient" nameId="tpee.6468716278899125786" value="false" />
      <property name="name" nameId="tpck.1169194664001" value="dateFormat" />
      <property name="isFinal" nameId="tpee.1176718929932" value="false" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="2085073781388696113" nodeInfo="nn" />
      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="2085073781388697246" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="j9pa.~DateFormat" resolveInfo="DateFormat" />
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2085073781388697657" nodeInfo="nn">
        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2085073781388708796" nodeInfo="nn">
          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~SimpleDateFormat%d&lt;init&gt;(java%dlang%dString)" resolveInfo="SimpleDateFormat" />
          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388709156" nodeInfo="nn">
            <property name="value" nameId="tpee.1070475926801" value="dd.MM.yyyy HH:mm:ss" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2085073781388695856" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2085073781388321040" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="log" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2085073781388321043" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="2085073781388690890" nodeInfo="nn">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="2085073781388690893" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388692237" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388692233" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2085073781388692234" nodeInfo="nn">
                  <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2085073781388692235" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprint(java%dlang%dString)%cvoid" resolveInfo="print" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388710051" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388710387" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="[{0}]: " />
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388711967" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388711722" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388697362" resolveInfo="dateFormat" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2085073781388712603" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~DateFormat%dformat(java%dutil%dDate)%cjava%dlang%dString" resolveInfo="format" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2085073781388713128" nodeInfo="nn">
                          <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="2085073781388718241" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="k7g3.~Date%d&lt;init&gt;()" resolveInfo="Date" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779782270" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388310655" resolveInfo="showTime" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388547219" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388547215" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2085073781388547216" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="e2lb.~System" resolveInfo="System" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="e2lb.~System%dout" resolveInfo="out" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2085073781388547217" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~PrintStream%dprintln(java%dlang%dString)%cvoid" resolveInfo="println" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388552195" nodeInfo="nn">
                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388553778" nodeInfo="nn">
                  <property name="value" nameId="tpee.1070475926801" value="{0}" />
                </node>
                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388558320" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388321453" resolveInfo="message" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="2085073781388319767" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2085073781388320979" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2085073781388321453" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="message" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="2085073781388321452" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="8488053408778445222" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3292382144807390005" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceAssignment" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3292382144807390008" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408779514414" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="8488053408779514415" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388307900" resolveInfo="setFormatShowTime" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408780334398" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dvalueOf(java%dlang%dString)%cjava%dlang%dBoolean" resolveInfo="valueOf" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408780334399" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779512602" resolveInfo="time" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408779061371" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388331789" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="2085073781388331787" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388321040" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388497306" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388497597" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="assignment to ''{0}'' value = ''{1}''" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388499129" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3292382144807390075" resolveInfo="name" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388499970" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3292382144807390335" resolveInfo="value" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3292382144807398338" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3292382144807398866" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3292382144807390335" resolveInfo="value" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3292382144807389620" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="3292382144807390919" nodeInfo="in">
        <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="3292382144807390697" resolveInfo="T" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3292382144807390075" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="name" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="3292382144807390074" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3292382144807390335" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="value" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="3292382144807391088" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="3292382144807390697" resolveInfo="T" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779512602" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8488053408779512603" nodeInfo="in" />
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="3292382144807390697" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="195158585673672556" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="195158585673673282" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceCall" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585673673285" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408779513969" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="8488053408779513970" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388307900" resolveInfo="setFormatShowTime" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408780334642" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dvalueOf(java%dlang%dString)%cjava%dlang%dBoolean" resolveInfo="valueOf" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408780334643" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779512241" resolveInfo="time" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408779061070" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388502630" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="2085073781388502631" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388321040" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388502632" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388502633" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="calling method ''{0}'' from object ''{1}''" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388508835" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674278050" resolveInfo="methodName" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388509449" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674277225" resolveInfo="operandName" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="195158585674280220" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674280798" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674276650" resolveInfo="operand" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="195158585673672681" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="195158585674275151" nodeInfo="in">
        <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="195158585674274498" resolveInfo="T" />
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="195158585674274498" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585674276650" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="operand" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="195158585674276649" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="195158585674274498" resolveInfo="T" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585674277225" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="operandName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="195158585674277923" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585674278050" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="methodName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="195158585674278568" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779512241" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8488053408779512242" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="195158585674803612" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="195158585674807567" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceConstructor" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585674807570" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408779513576" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="8488053408779513577" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388307900" resolveInfo="setFormatShowTime" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408780334879" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dvalueOf(java%dlang%dString)%cjava%dlang%dBoolean" resolveInfo="valueOf" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408780334880" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779511827" resolveInfo="time" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408779058623" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388512835" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="2085073781388512836" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388321040" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388512837" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388512838" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="creating object ''{0}'' of type ''{1}''" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388516243" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674808287" resolveInfo="objectName" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388516581" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585675249777" resolveInfo="typeName" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="195158585674813271" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674813800" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674807989" resolveInfo="creator" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="195158585674807090" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="195158585674814389" nodeInfo="in">
        <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="195158585674807877" resolveInfo="T" />
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="195158585674807877" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585674807989" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="creator" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="195158585674807988" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="195158585674807877" resolveInfo="T" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585674808287" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="objectName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="195158585674808359" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="195158585675249777" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="typeName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="195158585675250522" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779511827" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8488053408779511828" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="416578148490035960" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="416578148490036887" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceVoidReturn" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="416578148490036890" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408779059710" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="8488053408779070710" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388307900" resolveInfo="setFormatShowTime" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408780290526" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dvalueOf(java%dlang%dString)%cjava%dlang%dBoolean" resolveInfo="valueOf" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408780290527" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779068142" resolveInfo="time" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408779059168" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388521233" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="2085073781388521234" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388321040" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388521235" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388521236" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="returning (implicit) from method ''{0}''" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388527524" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="416578148490037073" resolveInfo="methodName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="416578148490036223" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="416578148490036773" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="416578148490037073" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="methodName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="416578148490037072" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779068142" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8488053408779334948" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2085073781388032259" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2085073781388035711" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceNonVoidReturn" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2085073781388035714" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408779336573" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="8488053408779336575" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388307900" resolveInfo="setFormatShowTime" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408780290875" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dvalueOf(java%dlang%dString)%cjava%dlang%dBoolean" resolveInfo="valueOf" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408780290876" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779068821" resolveInfo="time" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408779060334" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388529028" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.LocalMethodCall" typeId="tpee.7812454656619025412" id="2085073781388529029" nodeInfo="nn">
            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388321040" resolveInfo="log" />
            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388529030" nodeInfo="nn">
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="j9pa.~MessageFormat" resolveInfo="MessageFormat" />
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="j9pa.~MessageFormat%dformat(java%dlang%dString,java%dlang%dObject%d%d%d)%cjava%dlang%dString" resolveInfo="format" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388529031" nodeInfo="nn">
                <property name="value" nameId="tpee.1070475926801" value="returning (explicit) from method ''{0}'' with value = ''{1}''" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388529032" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388035921" resolveInfo="methodName" />
              </node>
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388686377" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388542216" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388036049" resolveInfo="returnValue" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="2085073781388686808" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Object%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="2085073781388049334" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388050748" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388036049" resolveInfo="returnValue" />
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2085073781388035171" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="2085073781388036561" nodeInfo="in">
        <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="2085073781388036343" resolveInfo="T" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2085073781388035921" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="methodName" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="2085073781388035920" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2085073781388036049" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="returnValue" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.TypeVariableReference" typeId="tpee.1109283449304" id="2085073781388036762" nodeInfo="in">
          <link role="typeVariableDeclaration" roleId="tpee.1109283546497" targetNodeId="2085073781388036343" resolveInfo="T" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779068821" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="8488053408779335470" nodeInfo="in" />
      </node>
      <node role="typeVariableDeclaration" roleId="tpee.1109279881614" type="tpee.TypeVariableDeclaration" typeId="tpee.1109279763828" id="2085073781388036343" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="T" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="2085073781388303749" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="2085073781388307900" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="setFormatShowTime" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="2085073781388307903" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781388312100" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="2085073781388312493" nodeInfo="nn">
            <node role="rValue" roleId="tpee.1068498886297" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388312767" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388311664" resolveInfo="time" />
            </node>
            <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779780468" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388310655" resolveInfo="showTime" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="2085073781388304337" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="2085073781388304804" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="2085073781388311664" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="time" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="2085073781388311663" nodeInfo="in" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3292382144807380717" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5780443046931543456" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Util" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="5780443046933151631" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceVarRef" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780443046933151634" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8488053408778225631" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8488053408778225632" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="references" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="8488053408778225628" nodeInfo="in">
              <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068498886296" resolveInfo="VariableReference" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8488053408778225633" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408778225634" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046933152632" resolveInfo="model" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_NodesOperation" typeId="tp25.1171323947159" id="8488053408778225635" nodeInfo="nn">
                <link role="concept" roleId="tp25.1171323947160" targetNodeId="tpee.1068498886296" resolveInfo="VariableReference" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="8488053408778226263" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="8488053408778227392" nodeInfo="nn">
          <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="8488053408778227394" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="ref" />
          </node>
          <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408778227603" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408778225632" resolveInfo="references" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="8488053408778227398" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="8488053408778428928" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="8488053408778428929" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="ancestor" />
                <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="8488053408778428921" nodeInfo="in">
                  <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068498886294" resolveInfo="AssignmentExpression" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8488053408778428930" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8488053408778428931" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="8488053408778227394" resolveInfo="ref" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="8488053408778428932" nodeInfo="nn">
                    <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="8488053408778428933" nodeInfo="ng">
                      <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="8488053408778428934" nodeInfo="nn">
                        <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068498886294" resolveInfo="AssignmentExpression" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="8488053408778429806" nodeInfo="nn">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="8488053408778429809" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="8488053408778479269" nodeInfo="nn">
                  <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.StatementCommentPart" typeId="tpee.6329021646629175143" id="8488053408778479274" nodeInfo="nn">
                    <node role="commentedStatement" roleId="tpee.6329021646629175144" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="8488053408778471689" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8488053408778471891" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8488053408778471688" nodeInfo="nn">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="8488053408778227394" resolveInfo="ref" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetParentOperation" typeId="tp25.1139613262185" id="8488053408778477758" nodeInfo="nn" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.AndExpression" typeId="tpee.1080120340718" id="8488053408778436349" nodeInfo="nn">
                <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="8488053408778441004" nodeInfo="nn">
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="8488053408778441257" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="8488053408778227394" resolveInfo="ref" />
                  </node>
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="8488053408778436824" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408778436547" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408778428929" resolveInfo="ancestor" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="8488053408778440591" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886295" />
                    </node>
                  </node>
                </node>
                <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.NotEqualsExpression" typeId="tpee.1073239437375" id="8488053408778430714" nodeInfo="nn">
                  <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408778429972" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408778428929" resolveInfo="ancestor" />
                  </node>
                  <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="8488053408778430823" nodeInfo="nn" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5780443046933149889" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="5780443046933151088" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5780443046933152632" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SModelType" typeId="tp25.1143226024141" id="5780443046933152631" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="5780443046933148518" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="4241227962566488991" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceAssignments" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="4241227962566488994" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3292382144807491322" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5780443046932792519" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="assignments" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="5780443046932792520" nodeInfo="in">
              <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068498886294" resolveInfo="AssignmentExpression" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932792521" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932803520" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4241227962566499771" resolveInfo="model" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_NodesOperation" typeId="tp25.1171323947159" id="5780443046932792522" nodeInfo="nn">
                <link role="concept" roleId="tp25.1171323947160" targetNodeId="tpee.1068498886294" resolveInfo="AssignmentExpression" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5780443046932392767" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.MultiForEachStatement" typeId="tp2q.9042586985346099698" id="5780443046932799068" nodeInfo="nn">
          <node role="forEach" roleId="tp2q.9042586985346099734" type="tp2q.MultiForEachPair" typeId="tp2q.9042586985346099733" id="5780443046932799069" nodeInfo="ng">
            <node role="variable" roleId="tp2q.9042586985346099778" type="tp2q.MultiForEachVariable" typeId="tp2q.9042586985346099736" id="5780443046932799070" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="expr" />
            </node>
            <node role="input" roleId="tp2q.9042586985346099735" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932632226" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799071" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932792519" resolveInfo="assignments" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.SortOperation" typeId="tp2q.1205679737078" id="5780443046932651191" nodeInfo="nn">
                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="5780443046932651193" nodeInfo="nn">
                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780443046932651194" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5780443046932651807" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932660728" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932652237" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932651806" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932651195" resolveInfo="it" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorsOperation" typeId="tp25.1173122760281" id="5780443046932654858" nodeInfo="nn" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetSizeOperation" typeId="tp2q.1162935959151" id="5780443046932670669" nodeInfo="nn" />
                      </node>
                    </node>
                  </node>
                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="5780443046932651195" nodeInfo="ig">
                    <property name="name" nameId="tpck.1169194664001" value="it" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="5780443046932651196" nodeInfo="in" />
                  </node>
                </node>
                <node role="ascending" roleId="tp2q.1205679832066" type="tp2q.SortDirection" typeId="tp2q.1178286324487" id="5780443046932672272" nodeInfo="nn">
                  <property name="value" nameId="tpee.1068580123138" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780443046932799072" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5780443046932799073" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5780443046932799074" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="name" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="5780443046932799075" nodeInfo="in" />
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="5780443046932799076" nodeInfo="nn" />
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="5780443046932799077" nodeInfo="nn">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780443046932799078" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5780443046932799079" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5780443046932799080" nodeInfo="nn">
                    <node role="rValue" roleId="tpee.1068498886297" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799081" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799082" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="5780443046932799083" nodeInfo="nn">
                          <property name="asCast" nameId="tp25.1238684351431" value="true" />
                          <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1068498886296" resolveInfo="VariableReference" />
                          <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799084" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799085" nodeInfo="nn">
                              <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799086" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886295" />
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799087" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068581517664" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="5780443046932799088" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                      </node>
                    </node>
                    <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799089" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932799074" resolveInfo="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799090" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799091" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799092" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799093" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886295" />
                  </node>
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="5780443046932799094" nodeInfo="nn">
                  <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5780443046932799095" nodeInfo="nn">
                    <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068498886296" resolveInfo="VariableReference" />
                  </node>
                </node>
              </node>
              <node role="elsifClauses" roleId="tpee.1206060520071" type="tpee.ElsifClause" typeId="tpee.1206060495898" id="5780443046932799096" nodeInfo="ng">
                <node role="condition" roleId="tpee.1206060619838" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799097" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799098" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="5780443046932799099" nodeInfo="nn">
                      <property name="asCast" nameId="tp25.1238684351431" value="true" />
                      <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1197027756228" resolveInfo="DotExpression" />
                      <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799100" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799101" nodeInfo="nn">
                          <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799102" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886295" />
                        </node>
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799103" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027833540" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="5780443046932799104" nodeInfo="nn">
                    <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5780443046932799105" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1197029447546" resolveInfo="FieldReferenceOperation" />
                    </node>
                  </node>
                </node>
                <node role="statementList" roleId="tpee.1206060644605" type="tpee.StatementList" typeId="tpee.1068580123136" id="5780443046932799106" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5780443046932799107" nodeInfo="nn">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="5780443046932799108" nodeInfo="nr">
                      <property name="name" nameId="tpck.1169194664001" value="node" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5780443046932799109" nodeInfo="in">
                        <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068390468200" resolveInfo="FieldDeclaration" />
                      </node>
                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799110" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="5780443046932799111" nodeInfo="nn">
                          <property name="asCast" nameId="tp25.1238684351431" value="true" />
                          <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1197029447546" resolveInfo="FieldReferenceOperation" />
                          <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799112" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="5780443046932799113" nodeInfo="nn">
                              <property name="asCast" nameId="tp25.1238684351431" value="true" />
                              <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1197027756228" resolveInfo="DotExpression" />
                              <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799114" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799115" nodeInfo="nn">
                                  <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799116" nodeInfo="nn">
                                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886295" />
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799117" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027833540" />
                            </node>
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799118" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197029500499" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5780443046932799119" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5780443046932799120" nodeInfo="nn">
                      <node role="lValue" roleId="tpee.1068498886295" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799121" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932799074" resolveInfo="name" />
                      </node>
                      <node role="rValue" roleId="tpee.1068498886297" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5780443046932799122" nodeInfo="nn">
                        <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799123" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799124" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932799108" resolveInfo="node" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="5780443046932799125" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                        <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="5780443046932799126" nodeInfo="nn">
                          <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799127" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799128" nodeInfo="nn">
                              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799129" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932799108" resolveInfo="node" />
                              </node>
                              <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="5780443046932799130" nodeInfo="nn">
                                <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="5780443046932799131" nodeInfo="ng">
                                  <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="5780443046932799132" nodeInfo="nn">
                                    <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1107461130800" resolveInfo="Classifier" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="5780443046932799133" nodeInfo="nn">
                              <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                            </node>
                          </node>
                          <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5780443046932799134" nodeInfo="nn">
                            <property name="value" nameId="tpee.1070475926801" value="." />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5780443046932799135" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5780443046932799136" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5780443046932799137" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799138" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799139" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799140" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886297" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="5780443046932799141" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5780443046932799142" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3292382144807380716" resolveInfo="Tracer" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3292382144807390005" resolveInfo="traceAssignment" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="5780443046932799143" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="name" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="5780443046932799144" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932799145" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5780443046932799074" resolveInfo="name" />
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799146" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799147" nodeInfo="nn">
                        <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799148" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886297" />
                      </node>
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.Antiquotation" typeId="tp3r.1196350785112" id="5780443046932799149" nodeInfo="ng">
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5780443046932799150" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.MultiForEachVariableReference" typeId="tp2q.8293956702609956630" id="5780443046932799151" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.8293956702609966325" targetNodeId="5780443046932799070" resolveInfo="expr" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5780443046932799152" nodeInfo="nn">
                            <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068498886297" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8488053408779524345" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="8488053408779524346" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408779524347" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dtoString(boolean)%cjava%dlang%dString" resolveInfo="toString" />
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779524348" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779086802" resolveInfo="showTime" />
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
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="4241227962566488483" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="4241227962566488607" nodeInfo="in" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4241227962566499771" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SModelType" typeId="tp25.1143226024141" id="4241227962566499770" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779086802" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="showTime" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="8488053408779086803" nodeInfo="in" />
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="5780443046931584098" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="762104646748069855" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceCalls" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="762104646748069856" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SModelType" typeId="tp25.1143226024141" id="762104646748077186" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408778745194" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="showTime" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="8488053408778800638" nodeInfo="in" />
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="762104646748069859" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="762104646748069860" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="762104646748069861" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5780443046932969164" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="195158585674138234" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="calls" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="195158585674138216" nodeInfo="in">
              <node role="elementType" roleId="tp2q.1151689745422" type="tp25.SNodeType" typeId="tp25.1138055754698" id="195158585674138219" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1197027756228" resolveInfo="DotExpression" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674138235" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674138236" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932992467" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="762104646748069856" resolveInfo="model" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_NodesOperation" typeId="tp25.1171323947159" id="195158585674138238" nodeInfo="nn">
                  <link role="concept" roleId="tp25.1171323947160" targetNodeId="tpee.1197027756228" resolveInfo="DotExpression" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="195158585674138239" nodeInfo="nn">
                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="195158585674138240" nodeInfo="nn">
                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585674138241" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="195158585674138242" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674138243" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674138244" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674138245" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674138249" resolveInfo="it" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674138246" nodeInfo="nn">
                            <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027833540" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="195158585674138247" nodeInfo="nn">
                          <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="195158585674138248" nodeInfo="nn">
                            <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1202948039474" resolveInfo="InstanceMethodCallOperation" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="195158585674138249" nodeInfo="ig">
                    <property name="name" nameId="tpck.1169194664001" value="it" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="195158585674138250" nodeInfo="in" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5780443046932969792" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="195158585674142853" nodeInfo="nn">
          <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="195158585674142855" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="call" />
          </node>
          <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674143181" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674138234" resolveInfo="calls" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585674142859" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="195158585674373337" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="195158585674373338" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="instanceMethodDeclaration" />
                <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="195158585674373305" nodeInfo="in">
                  <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068580123165" resolveInfo="InstanceMethodDeclaration" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674373339" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="195158585674373340" nodeInfo="nn">
                    <property name="asCast" nameId="tp25.1238684351431" value="true" />
                    <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1202948039474" resolveInfo="InstanceMethodCallOperation" />
                    <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674373341" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674373342" nodeInfo="nn">
                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674142855" resolveInfo="call" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674373343" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027833540" />
                      </node>
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674414361" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1202948736718" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="195158585674352955" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674415150" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674373345" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674373338" resolveInfo="instanceMethodDeclaration" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="195158585674430060" nodeInfo="nn">
                  <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="195158585674214525" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="195158585674217527" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674214722" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674214524" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674142855" resolveInfo="call" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674217193" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027771414" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="195158585674223798" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="195158585674238330" nodeInfo="nn">
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3292382144807380716" resolveInfo="Tracer" />
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="195158585673673282" resolveInfo="traceCall" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674287374" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674287190" nodeInfo="nn">
                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674142855" resolveInfo="call" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674288899" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027771414" />
                      </node>
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.Antiquotation" typeId="tp3r.1196350785112" id="195158585674321026" nodeInfo="ng">
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674321679" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674321502" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674142855" resolveInfo="call" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674324526" nodeInfo="nn">
                            <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027771414" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="195158585674289559" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="operand name" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="195158585674444523" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674453391" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674449435" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="195158585674448309" nodeInfo="nn">
                              <property name="asCast" nameId="tp25.1238684351431" value="true" />
                              <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1068498886296" resolveInfo="VariableReference" />
                              <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674445048" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674444908" nodeInfo="nn">
                                  <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674142855" resolveInfo="call" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674447757" nodeInfo="nn">
                                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1197027771414" />
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674451995" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068581517664" />
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="195158585674456701" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="195158585674290074" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="method name" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="195158585674436946" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674438369" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674437439" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674373338" resolveInfo="instanceMethodDeclaration" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="195158585674441379" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8488053408779522933" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="8488053408779522934" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408779522935" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dtoString(boolean)%cjava%dlang%dString" resolveInfo="toString" />
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779522936" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408778745194" resolveInfo="showTime" />
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
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5780443046932969835" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="5780443046932982083" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="195158585674772444" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="declarations" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="195158585674772435" nodeInfo="in">
              <node role="elementType" roleId="tp2q.1151689745422" type="tp25.SNodeType" typeId="tp25.1138055754698" id="195158585674772438" nodeInfo="in">
                <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068581242863" resolveInfo="LocalVariableDeclaration" />
              </node>
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674772445" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674772446" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046932991238" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="762104646748069856" resolveInfo="model" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_NodesOperation" typeId="tp25.1171323947159" id="195158585674772448" nodeInfo="nn">
                  <link role="concept" roleId="tp25.1171323947160" targetNodeId="tpee.1068581242863" resolveInfo="LocalVariableDeclaration" />
                </node>
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp2q.WhereOperation" typeId="tp2q.1202120902084" id="195158585674772449" nodeInfo="nn">
                <node role="closure" roleId="tp2q.1204796294226" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="195158585674772450" nodeInfo="nn">
                  <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585674772451" nodeInfo="sn">
                    <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="195158585674772452" nodeInfo="nn">
                      <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674772453" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674851877" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674772454" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674772457" resolveInfo="it" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674856606" nodeInfo="nn">
                            <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068431790190" />
                          </node>
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="195158585674772455" nodeInfo="nn">
                          <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="195158585674772456" nodeInfo="nn">
                            <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1145552977093" resolveInfo="GenericNewExpression" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="parameter" roleId="tp2c.1199569906740" type="tp2q.SmartClosureParameterDeclaration" typeId="tp2q.1203518072036" id="195158585674772457" nodeInfo="ig">
                    <property name="name" nameId="tpck.1169194664001" value="it" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tpee.UndefinedType" typeId="tpee.4836112446988635817" id="195158585674772458" nodeInfo="in" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5780443046932981709" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="195158585674711082" nodeInfo="nn">
          <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="195158585674711085" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="declaration" />
          </node>
          <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585674782221" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674772444" resolveInfo="declarations" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="195158585674711091" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="195158585674931600" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="195158585674931601" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="ctor" />
                <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="195158585674931486" nodeInfo="in">
                  <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1145552977093" resolveInfo="GenericNewExpression" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="195158585674933977" nodeInfo="nn">
                  <property name="asCast" nameId="tp25.1238684351431" value="true" />
                  <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1145552977093" resolveInfo="GenericNewExpression" />
                  <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585674931602" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585674931603" nodeInfo="nn">
                      <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674711085" resolveInfo="declaration" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585674931604" nodeInfo="nn">
                      <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068431790190" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="195158585674784597" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="195158585674792451" nodeInfo="nn">
                <node role="rValue" roleId="tpee.1068498886297" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="195158585674793572" nodeInfo="nn">
                  <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="195158585675164237" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="195158585674807567" resolveInfo="traceConstructor" />
                    <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3292382144807380716" resolveInfo="Tracer" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585675164238" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674931601" resolveInfo="ctor" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.Antiquotation" typeId="tp3r.1196350785112" id="195158585675164239" nodeInfo="ng">
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585675164240" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674931601" resolveInfo="ctor" />
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="195158585675164241" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="name" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="195158585675207392" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585675208493" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585675207969" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674711085" resolveInfo="declaration" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="195158585675213588" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="195158585675263707" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="TODO_typename" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="195158585675398337" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585675419575" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585675410817" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="195158585675410164" nodeInfo="nn">
                              <property name="asCast" nameId="tp25.1238684351431" value="true" />
                              <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1212685548494" resolveInfo="ClassCreator" />
                              <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585675399886" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="195158585675399735" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="195158585674931601" resolveInfo="ctor" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585675401133" nodeInfo="nn">
                                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1145553007750" />
                                </node>
                              </node>
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585675417578" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1212686240295" />
                            </node>
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="195158585675425548" nodeInfo="nn">
                            <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8488053408779522294" nodeInfo="nn">
                      <property name="value" nameId="tpee.1070475926801" value="" />
                      <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="8488053408779522295" nodeInfo="ng">
                        <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                        <node role="expression" roleId="tp3r.1196350785111" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408779522296" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dtoString(boolean)%cjava%dlang%dString" resolveInfo="toString" />
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779522297" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408778745194" resolveInfo="showTime" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="195158585675017682" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="195158585675016975" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="195158585674711085" resolveInfo="declaration" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="195158585675022834" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068431790190" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="5780443046931584161" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="762104646748080144" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="traceReturn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.VoidType" typeId="tpee.1068581517677" id="762104646748080148" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="762104646748080149" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="762104646748080150" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="416578148489817707" nodeInfo="nn">
          <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="416578148489817708" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="bodyes" />
            <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="416578148489817558" nodeInfo="in">
              <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
            </node>
            <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="416578148489817709" nodeInfo="nn">
              <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5780443046933019464" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="762104646748080634" resolveInfo="model" />
              </node>
              <node role="operation" roleId="tpee.1197027833540" type="tp25.Model_NodesOperation" typeId="tp25.1171323947159" id="416578148489817711" nodeInfo="nn">
                <link role="concept" roleId="tp25.1171323947160" targetNodeId="tpee.1068580123136" resolveInfo="StatementList" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="416578148489820044" nodeInfo="nn">
          <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="416578148489820047" nodeInfo="nr">
            <property name="name" nameId="tpck.1169194664001" value="body" />
          </node>
          <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.VariableReference" typeId="tpee.1068498886296" id="416578148489820348" nodeInfo="nn">
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="416578148489817708" resolveInfo="bodyes" />
          </node>
          <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="416578148489820053" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2085073781387033335" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2085073781387033336" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="bodyStatements" />
                <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeListType" typeId="tp25.1145383075378" id="2085073781387033319" nodeInfo="in">
                  <link role="elementConcept" roleId="tp25.1145383142433" targetNodeId="tpee.1068580123157" resolveInfo="Statement" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387033337" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="2085073781387033338" nodeInfo="nn">
                    <link role="variable" roleId="tp2q.1153944258490" targetNodeId="416578148489820047" resolveInfo="body" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="2085073781387033339" nodeInfo="nn">
                    <link role="link" roleId="tp25.1138056546658" targetNodeId="tpee.1068581517665" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2085073781388070017" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2085073781388070018" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="methodName" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="2085073781388069980" nodeInfo="in" />
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388070019" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388070020" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="2085073781388070021" nodeInfo="nn">
                      <link role="variable" roleId="tp2q.1153944258490" targetNodeId="416578148489820047" resolveInfo="body" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_GetAncestorOperation" typeId="tp25.1171407110247" id="2085073781388070022" nodeInfo="nn">
                      <node role="parameter" roleId="tp25.1144104376918" type="tp25.OperationParm_Concept" typeId="tp25.1144101972840" id="2085073781388070023" nodeInfo="ng">
                        <node role="conceptArgument" roleId="tp25.1207343664468" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="2085073781388070024" nodeInfo="nn">
                          <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068580123132" resolveInfo="BaseMethodDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="2085073781388070025" nodeInfo="nn">
                    <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="2085073781387071314" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="416578148489927717" nodeInfo="nn">
              <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="416578148489927720" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781387867273" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387870140" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781387867271" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387033336" resolveInfo="bodyStatements" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddLastElementOperation" typeId="tp2q.1227022179634" id="2085073781387887072" nodeInfo="nn">
                      <node role="argument" roleId="tp2q.1227022698412" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="2085073781387892673" nodeInfo="nn">
                        <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781387892674" nodeInfo="nn">
                          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781387892675" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="416578148490036887" resolveInfo="traceVoidReturn" />
                            <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3292382144807380716" resolveInfo="Tracer" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781387892676" nodeInfo="nn">
                              <property name="value" nameId="tpee.1070475926801" value="sd" />
                              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="2085073781387892677" nodeInfo="ng">
                                <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                                <node role="expression" roleId="tp3r.1196350785111" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388076033" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388070018" resolveInfo="methodName" />
                                </node>
                              </node>
                            </node>
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8488053408779298014" nodeInfo="nn">
                              <property name="value" nameId="tpee.1070475926801" value="" />
                              <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="8488053408779298015" nodeInfo="ng">
                                <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                                <node role="expression" roleId="tp3r.1196350785111" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408779298016" nodeInfo="nn">
                                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dtoString(boolean)%cjava%dlang%dString" resolveInfo="toString" />
                                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779298017" nodeInfo="nn">
                                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779086253" resolveInfo="showTime" />
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
              </node>
              <node role="condition" roleId="tpee.1068580123160" type="tpee.NotExpression" typeId="tpee.1081516740877" id="2085073781387489532" nodeInfo="nn">
                <node role="expression" roleId="tpee.1081516765348" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387489534" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387489535" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781387489536" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387033336" resolveInfo="bodyStatements" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetLastOperation" typeId="tp2q.1165595910856" id="2085073781387489537" nodeInfo="nn" />
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp25.Node_IsInstanceOfOperation" typeId="tp25.1139621453865" id="2085073781387489538" nodeInfo="nn">
                    <node role="conceptArgument" roleId="tp25.1177027386292" type="tp25.RefConcept_Reference" typeId="tp25.1177026924588" id="2085073781387489539" nodeInfo="nn">
                      <link role="conceptDeclaration" roleId="tp25.1177026940964" targetNodeId="tpee.1068581242878" resolveInfo="ReturnStatement" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="ifFalseStatement" roleId="tpee.1082485599094" type="tpee.BlockStatement" typeId="tpee.1082485599095" id="2085073781387957612" nodeInfo="nn">
                <node role="statements" roleId="tpee.1082485599096" type="tpee.StatementList" typeId="tpee.1068580123136" id="2085073781387957613" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="2085073781387981189" nodeInfo="nn">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="2085073781387981190" nodeInfo="nr">
                      <property name="name" nameId="tpck.1169194664001" value="returnStatement" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="2085073781387981165" nodeInfo="in">
                        <link role="concept" roleId="tp25.1138405853777" targetNodeId="tpee.1068581242878" resolveInfo="ReturnStatement" />
                      </node>
                      <node role="initializer" roleId="tpee.1068431790190" type="tp25.SNodeTypeCastExpression" typeId="tp25.1140137987495" id="2085073781387981191" nodeInfo="nn">
                        <property name="asCast" nameId="tp25.1238684351431" value="true" />
                        <link role="concept" roleId="tp25.1140138128738" targetNodeId="tpee.1068581242878" resolveInfo="ReturnStatement" />
                        <node role="leftExpression" roleId="tp25.1140138123956" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387981192" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781387981193" nodeInfo="nn">
                            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387033336" resolveInfo="bodyStatements" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tp2q.GetLastOperation" typeId="tp2q.1165595910856" id="2085073781387981194" nodeInfo="nn" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2085073781387992116" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="2085073781387994778" nodeInfo="nn">
                      <node role="rValue" roleId="tpee.1068498886297" type="tp3r.Quotation" typeId="tp3r.1196350785113" id="2085073781387995125" nodeInfo="nn">
                        <node role="quotedNode" roleId="tp3r.1196350785114" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="2085073781388067208" nodeInfo="nn">
                          <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3292382144807380716" resolveInfo="Tracer" />
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="2085073781388035711" resolveInfo="traceNonVoidReturn" />
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2085073781388072827" nodeInfo="nn">
                            <property name="value" nameId="tpee.1070475926801" value="" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="2085073781388073262" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388076100" nodeInfo="nn">
                                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781388070018" resolveInfo="methodName" />
                              </node>
                            </node>
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388077048" nodeInfo="nn">
                            <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388076593" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387981190" resolveInfo="returnStatement" />
                            </node>
                            <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2085073781388079254" nodeInfo="nn">
                              <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068581517676" />
                            </node>
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.Antiquotation" typeId="tp3r.1196350785112" id="2085073781388080141" nodeInfo="ng">
                              <node role="expression" roleId="tp3r.1196350785111" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781388080760" nodeInfo="nn">
                                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781388080542" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387981190" resolveInfo="returnStatement" />
                                </node>
                                <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2085073781388082805" nodeInfo="nn">
                                  <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068581517676" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="8488053408779295143" nodeInfo="nn">
                            <property name="value" nameId="tpee.1070475926801" value="" />
                            <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp3r.PropertyAntiquotation" typeId="tp3r.1196866233735" id="8488053408779295789" nodeInfo="ng">
                              <property name="propertyName" nameId="tpck.1757699476691236117" value="value" />
                              <node role="expression" roleId="tp3r.1196350785111" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="8488053408779296687" nodeInfo="nn">
                                <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Boolean%dtoString(boolean)%cjava%dlang%dString" resolveInfo="toString" />
                                <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                                <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="8488053408779296904" nodeInfo="nn">
                                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="8488053408779086253" resolveInfo="showTime" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="2085073781387992362" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="2085073781387992114" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="2085073781387981190" resolveInfo="returnStatement" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="2085073781387994537" nodeInfo="nn">
                          <link role="link" roleId="tp25.1138056516764" targetNodeId="tpee.1068581517676" />
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
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="762104646748080634" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="model" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SModelType" typeId="tp25.1143226024141" id="762104646748080633" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="8488053408779086253" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="showTime" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.BooleanType" typeId="tpee.1070534644030" id="8488053408779086254" nodeInfo="in" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5780443046931543457" nodeInfo="nn" />
  </root>
</model>

