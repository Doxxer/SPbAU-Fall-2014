<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:911d37d6-fa11-440a-bdaa-9a47ef0aa706(TraceAspect.lang.structure)" version="0">
  <persistence version="8" />
  <language namespace="c72da2b9-7cce-4447-8389-f407dc1158b7(jetbrains.mps.lang.structure)" />
  <devkit namespace="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  <import index="tpce" modelUID="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" version="0" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="2w0t" modelUID="r:911d37d6-fa11-440a-bdaa-9a47ef0aa706(TraceAspect.lang.structure)" version="0" implicit="yes" />
  <root type="tpce.ConceptDeclaration" typeId="tpce.1071489090640" id="3292382144807363829" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Tracer" />
    <property name="rootable" nameId="tpce.1096454100552" value="true" />
    <link role="extends" roleId="tpce.1071489389519" targetNodeId="tpck.1133920641626" resolveInfo="BaseConcept" />
    <node role="implements" roleId="tpce.1169129564478" type="tpce.InterfaceConceptReference" typeId="tpce.1169127622168" id="3292382144807364043" nodeInfo="ig">
      <link role="intfc" roleId="tpce.1169127628841" targetNodeId="tpck.1169194658468" resolveInfo="INamedConcept" />
    </node>
    <node role="propertyDeclaration" roleId="tpce.1071489727084" type="tpce.PropertyDeclaration" typeId="tpce.1071489288299" id="3168543803171130646" nodeInfo="ig">
      <property name="name" nameId="tpck.1169194664001" value="tracingEntity" />
      <link role="dataType" roleId="tpce.1082985295845" targetNodeId="7934453798651926902" resolveInfo="TracingEntity" />
    </node>
  </root>
  <root type="tpce.EnumerationDataTypeDeclaration" typeId="tpce.1082978164219" id="7934453798651926902" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="TracingEntity" />
    <property name="hasNoDefaultMember" nameId="tpce.1212080844762" value="true" />
    <link role="memberDataType" roleId="tpce.1083171729157" targetNodeId="tpck.1082983041843" resolveInfo="string" />
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7934453798651926903" nodeInfo="ig">
      <property name="externalValue" nameId="tpce.1083923523172" value="Assignments" />
      <property name="internalValue" nameId="tpce.1083923523171" value="assignment" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="7934453798652157226" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="calls" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Method calls" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="8296063131401711950" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="varReference" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Variable reference" />
    </node>
    <node role="member" roleId="tpce.1083172003582" type="tpce.EnumerationMemberDeclaration" typeId="tpce.1083171877298" id="8296063131401723762" nodeInfo="ig">
      <property name="internalValue" nameId="tpce.1083923523171" value="return" />
      <property name="externalValue" nameId="tpce.1083923523172" value="Return from method" />
    </node>
  </root>
</model>

