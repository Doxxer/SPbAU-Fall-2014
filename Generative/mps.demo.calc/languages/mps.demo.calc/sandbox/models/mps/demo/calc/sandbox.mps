<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:801632ea-c8a0-43bd-8638-55a16cc50fd8(mps.demo.calc.sandbox)">
  <persistence version="8" />
  <language namespace="471ef0ac-c7b2-4ee3-86a1-12b20e46ca39(mps.demo.calc)" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="fd392034-7849-419d-9071-12563d152375(jetbrains.mps.baseLanguage.closures)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="zqqo" modelUID="r:c2c61bec-e8f3-4009-a1a5-a9a48977fc61(mps.demo.calc.structure)" version="-1" implicit="yes" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="tp2c" modelUID="r:00000000-0000-4000-0000-011c89590338(jetbrains.mps.baseLanguage.closures.structure)" version="3" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <root type="zqqo.Calculator" typeId="zqqo.3541037617674586790" id="3541037617674599088" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="test" />
    <property name="digits" nameId="zqqo.3541037617674586847" value="true" />
    <property name="stdOps" nameId="zqqo.3541037617674586856" value="true" />
    <node role="userFun" roleId="zqqo.3541037617674599142" type="zqqo.UserFunction" typeId="zqqo.3541037617674591945" id="3541037617674610503" nodeInfo="ng">
      <property name="label" nameId="zqqo.3541037617674591948" value="pi" />
      <node role="function" roleId="zqqo.3541037617674591946" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3541037617674617197" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674617199" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3541037617674617236" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="3541037617674704831" nodeInfo="nn">
              <property name="value" nameId="tpee.1113006610751" value="3.14" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="userFun" roleId="zqqo.3541037617674599142" type="zqqo.UserFunction" typeId="zqqo.3541037617674591945" id="3541037617674617088" nodeInfo="ng">
      <property name="label" nameId="zqqo.3541037617674591948" value="e" />
      <node role="function" roleId="zqqo.3541037617674591946" type="tpee.FloatingPointConstant" typeId="tpee.1111509017652" id="3541037617674704182" nodeInfo="nn">
        <property name="value" nameId="tpee.1113006610751" value="2.7" />
      </node>
    </node>
    <node role="userFun" roleId="zqqo.3541037617674599142" type="zqqo.UserFunction" typeId="zqqo.3541037617674591945" id="3541037617674724048" nodeInfo="ng">
      <property name="label" nameId="zqqo.3541037617674591948" value="+" />
      <node role="function" roleId="zqqo.3541037617674591946" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3541037617674724357" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674724359" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3541037617674725776" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.PlusExpression" typeId="tpee.1068581242875" id="3541037617674726556" nodeInfo="nn">
              <node role="rightExpression" roleId="tpee.1081773367579" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3541037617674726559" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3541037617674725142" resolveInfo="b" />
              </node>
              <node role="leftExpression" roleId="tpee.1081773367580" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3541037617674726005" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3541037617674724571" resolveInfo="a" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3541037617674724571" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="a" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="3541037617674724763" nodeInfo="in" />
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3541037617674725142" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="b" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="3541037617674725356" nodeInfo="in" />
        </node>
      </node>
    </node>
  </root>
  <root type="zqqo.Calculator" typeId="zqqo.3541037617674586790" id="3541037617674727393" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="trigonometry" />
    <node role="userFun" roleId="zqqo.3541037617674599142" type="zqqo.UserFunction" typeId="zqqo.3541037617674591945" id="3541037617674727394" nodeInfo="ng">
      <property name="label" nameId="zqqo.3541037617674591948" value="sin" />
      <node role="function" roleId="zqqo.3541037617674591946" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3541037617674727450" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674727452" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3541037617674728236" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="3541037617674728303" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Math%dsin(double)%cdouble" resolveInfo="sin" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="e2lb.~Math" resolveInfo="Math" />
              <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="3541037617674728517" nodeInfo="nn">
                <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3541037617674727664" resolveInfo="x" />
              </node>
            </node>
          </node>
        </node>
        <node role="parameter" roleId="tp2c.1199569906740" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="3541037617674727664" nodeInfo="ir">
          <property name="name" nameId="tpck.1169194664001" value="x" />
          <node role="type" roleId="tpee.5680397130376446158" type="tpee.DoubleType" typeId="tpee.1070534513062" id="3541037617674727856" nodeInfo="in" />
        </node>
      </node>
    </node>
    <node role="userFun" roleId="zqqo.3541037617674599142" type="zqqo.UserFunction" typeId="zqqo.3541037617674591945" id="3541037617674728742" nodeInfo="ng">
      <property name="label" nameId="zqqo.3541037617674591948" value="arc" />
      <node role="function" roleId="zqqo.3541037617674591946" type="tp2c.ClosureLiteral" typeId="tp2c.1199569711397" id="3541037617674729053" nodeInfo="nn">
        <node role="body" roleId="tp2c.1199569916463" type="tpee.StatementList" typeId="tpee.1068580123136" id="3541037617674729055" nodeInfo="sn">
          <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1668115546281966941" nodeInfo="nn">
            <node role="expression" roleId="tpee.1068580123156" type="zqqo.SetStatusExpression" typeId="zqqo.1668115546281658719" id="1668115546281966939" nodeInfo="ng">
              <property name="key" nameId="zqqo.1668115546281658720" value="arc" />
              <node role="value" roleId="zqqo.1668115546281658722" type="tpee.NotExpression" typeId="tpee.1081516740877" id="1668115546281967072" nodeInfo="nn">
                <node role="expression" roleId="tpee.1081516765348" type="tpee.CastExpression" typeId="tpee.1070534934090" id="4359921919825460229" nodeInfo="nn">
                  <node role="type" roleId="tpee.1070534934091" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="4359921919825460565" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Boolean" resolveInfo="Boolean" />
                  </node>
                  <node role="expression" roleId="tpee.1070534934092" type="zqqo.GetStatusExpression" typeId="zqqo.1668115546281636612" id="1668115546281967401" nodeInfo="ng">
                    <property name="key" nameId="zqqo.1668115546281638675" value="arc" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
</model>

