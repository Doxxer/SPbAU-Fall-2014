<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:dae64ede-d66f-42cc-8335-e8474f89e202(mps.demo.calc.sandbox)">
  <persistence version="8" />
  <language namespace="6194761c-0f01-4bcb-a09b-de801dbe4155(mps.demo.calc)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="r6ks" modelUID="r:70c7fae2-0691-4621-8b70-f7cad69fc505(mps.demo.calc.structure)" version="1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <root type="r6ks.Calculator" typeId="r6ks.2009888184782043095" id="2009888184782510017" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="test" />
    <node role="userFun" roleId="r6ks.2009888184782510072" type="r6ks.UserFunction" typeId="r6ks.2009888184782378585" id="2009888184782512129" nodeInfo="ng">
      <property name="label" nameId="r6ks.2009888184782378639" value="pi" />
      <node role="funcion" roleId="r6ks.2009888184782378641" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="4069628166919742197" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919742199" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4069628166919742236" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="4069628166919742240" nodeInfo="nn">
              <property name="value" nameId="tpee.1113006610751" value="3.14" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="userFun" roleId="r6ks.2009888184782510072" type="r6ks.UserFunction" typeId="r6ks.2009888184782378585" id="4069628166919819939" nodeInfo="ng">
      <property name="label" nameId="r6ks.2009888184782378639" value="e" />
      <node role="funcion" roleId="r6ks.2009888184782378641" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="4069628166919819974" nodeInfo="nn">
        <property name="value" nameId="tpee.1113006610751" value="2.71" />
      </node>
    </node>
    <node role="userFun" roleId="r6ks.2009888184782510072" type="r6ks.UserFunction" typeId="r6ks.2009888184782378585" id="4069628166919962081" nodeInfo="ng">
      <property name="label" nameId="r6ks.2009888184782378639" value="+" />
      <node role="funcion" roleId="r6ks.2009888184782378641" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="4069628166919962390" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919962392" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4069628166919963619" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="4069628166919964167" nodeInfo="nn">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919964170" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919962985" resolveInfo="b" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919963618" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919962605" resolveInfo="a" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919962605" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="a" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919962604" nodeInfo="in" />
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919962985" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="b" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919963199" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="userFun" roleId="r6ks.2009888184782510072" type="r6ks.UserFunction" typeId="r6ks.2009888184782378585" id="4069628166919975214" nodeInfo="ng">
      <property name="label" nameId="r6ks.2009888184782378639" value="-" />
      <node role="funcion" roleId="r6ks.2009888184782378641" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="4069628166919975215" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919975216" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4069628166919975217" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.MinusExpression" typeId="tpee.1068581242869" id="4069628166919986842" nodeInfo="nn">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919986845" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919975221" resolveInfo="a" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919986844" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919975223" resolveInfo="b" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919975221" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="a" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919975222" nodeInfo="in" />
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919975223" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="b" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919975224" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="userFun" roleId="r6ks.2009888184782510072" type="r6ks.UserFunction" typeId="r6ks.2009888184782378585" id="4069628166919977291" nodeInfo="ng">
      <property name="label" nameId="r6ks.2009888184782378639" value="*" />
      <node role="funcion" roleId="r6ks.2009888184782378641" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="4069628166919977292" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="4069628166919977293" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="4069628166919977294" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.MulExpression" typeId="tpee.1092119917967" id="4069628166919987155" nodeInfo="nn">
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919987158" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919977298" resolveInfo="a" />
              </node>
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="4069628166919987157" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="4069628166919977300" resolveInfo="b" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919977298" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="a" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919977299" nodeInfo="in" />
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="4069628166919977300" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="b" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="4069628166919977301" nodeInfo="in" />
        </node>
      </node>
    </node>
  </root>
</model>

