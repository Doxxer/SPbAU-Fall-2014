<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:a362b154-a2e2-4e01-b41f-efc8758d2140(stopwatch.lang.sandbox)">
  <persistence version="8" />
  <language namespace="8ec73acd-6eb7-46f8-99db-ec89292876af(stopwatch.lang)" />
  <language namespace="ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="dvdp" modelUID="r:f6e377d6-48c3-419e-abde-ba9fae08b4ca(stopwatch.lang.structure)" version="4" implicit="yes" />
  <import index="1t7x" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.awt(JDK/java.awt@java_stub)" version="-1" implicit="yes" />
  <root type="dvdp.Stopwatch" typeId="dvdp.8150960194433408170" id="8150960194433930655" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="SimpleAnalogStopwatch" />
    <property name="url" nameId="dvdp.8150960194433683226" value="http://mera-tek.ru/components/com_virtuemart/shop_image/product/sekundomer_1kn.jpg" />
    <property name="type" nameId="dvdp.8150960194433663434" value="analog" />
    <property name="circleTimes" nameId="dvdp.8791375046720356697" value="No" />
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="8150960194434428930" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mainButton" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434428931" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="start" />
      </node>
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434428966" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="pause" />
      </node>
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434428987" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="reset" />
      </node>
    </node>
    <node role="timelines" roleId="dvdp.8150960194433725030" type="dvdp.Timeline" typeId="dvdp.8150960194433689940" id="8150960194433930706" nodeInfo="ng">
      <node role="accuracy" roleId="dvdp.8150960194433717349" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194433930707" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="200" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="ms" />
      </node>
      <node role="rolloverTime" roleId="dvdp.8150960194433717362" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194433930708" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="60" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="s" />
      </node>
    </node>
    <node role="maximumOperatingTime" roleId="dvdp.8150960194433717324" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194433930656" nodeInfo="ng">
      <property name="value" nameId="dvdp.8150960194433721548" value="3" />
      <property name="unit" nameId="dvdp.8150960194433721550" value="h" />
    </node>
    <node role="appearance" roleId="dvdp.8150960194433823838" type="dvdp.Appearance" typeId="dvdp.8150960194433738453" id="8150960194433930662" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="classic" />
      <property name="width" nameId="dvdp.8150960194433738771" value="50" />
      <property name="height" nameId="dvdp.8150960194433745176" value="70" />
      <property name="weigth" nameId="dvdp.8150960194433745185" value="90" />
      <property name="form" nameId="dvdp.8150960194433738727" value="circle" />
      <node role="color" roleId="dvdp.8150960194433752861" type="dvdp.ColorReference" typeId="dvdp.8150960194433746184" id="8150960194433958323" nodeInfo="ng">
        <link role="color" roleId="dvdp.8150960194433746268" targetNodeId="1t7x.~Color%dgray" resolveInfo="gray" />
      </node>
    </node>
  </root>
  <root type="dvdp.Stopwatch" typeId="dvdp.8150960194433408170" id="8150960194434419042" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="SimpleDigitalStopwatch" />
    <property name="url" nameId="dvdp.8150960194433683226" value="https://upload.wikimedia.org/wikipedia/commons/8/88/Stoppuhr_digital.jpg" />
    <property name="type" nameId="dvdp.8150960194433663434" value="digital" />
    <property name="circleTimes" nameId="dvdp.8791375046720356697" value="Infinity" />
    <node role="maximumOperatingTime" roleId="dvdp.8150960194433717324" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194434419043" nodeInfo="ng">
      <property name="value" nameId="dvdp.8150960194433721548" value="48" />
      <property name="unit" nameId="dvdp.8150960194433721550" value="h" />
    </node>
    <node role="timelines" roleId="dvdp.8150960194433725030" type="dvdp.Timeline" typeId="dvdp.8150960194433689940" id="8150960194434419044" nodeInfo="ng">
      <node role="accuracy" roleId="dvdp.8150960194433717349" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194434419045" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="10" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="ms" />
      </node>
      <node role="rolloverTime" roleId="dvdp.8150960194433717362" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="8150960194434419046" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="99" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="m" />
      </node>
    </node>
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="8150960194434419047" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="bigButton" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434419048" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="start" />
      </node>
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434419500" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="pause" />
      </node>
    </node>
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="8150960194434419537" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="smallButton" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="8150960194434419538" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="reset" />
      </node>
    </node>
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="3082503220528291533" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="circle" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="3082503220528291534" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="circle" />
      </node>
    </node>
    <node role="appearance" roleId="dvdp.8150960194433823838" type="dvdp.Appearance" typeId="dvdp.8150960194433738453" id="8150960194434419049" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="classic" />
      <property name="form" nameId="dvdp.8150960194433738727" value="square" />
      <property name="width" nameId="dvdp.8150960194433738771" value="70" />
      <property name="height" nameId="dvdp.8150960194433745176" value="70" />
      <property name="weigth" nameId="dvdp.8150960194433745185" value="20" />
      <node role="color" roleId="dvdp.8150960194433752861" type="dvdp.ColorReference" typeId="dvdp.8150960194433746184" id="8150960194434428372" nodeInfo="ng">
        <link role="color" roleId="dvdp.8150960194433746268" targetNodeId="1t7x.~Color%dblack" resolveInfo="black" />
      </node>
    </node>
  </root>
  <root type="dvdp.Stopwatch" typeId="dvdp.8150960194433408170" id="2796129134711792424" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="TwoTimelinesAnalogStopwatch" />
    <property name="url" nameId="dvdp.8150960194433683226" value="https://upload.wikimedia.org/wikipedia/commons/d/d2/Stopwatch2.jpg" />
    <property name="type" nameId="dvdp.8150960194433663434" value="analog" />
    <property name="circleTimes" nameId="dvdp.8791375046720356697" value="One" />
    <node role="maximumOperatingTime" roleId="dvdp.8150960194433717324" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="2796129134711792425" nodeInfo="ng">
      <property name="value" nameId="dvdp.8150960194433721548" value="3" />
      <property name="unit" nameId="dvdp.8150960194433721550" value="h" />
    </node>
    <node role="timelines" roleId="dvdp.8150960194433725030" type="dvdp.Timeline" typeId="dvdp.8150960194433689940" id="2796129134711792426" nodeInfo="ng">
      <node role="accuracy" roleId="dvdp.8150960194433717349" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="2796129134711792427" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="100" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="ms" />
      </node>
      <node role="rolloverTime" roleId="dvdp.8150960194433717362" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="2796129134711792428" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="60" />
      </node>
    </node>
    <node role="timelines" roleId="dvdp.8150960194433725030" type="dvdp.Timeline" typeId="dvdp.8150960194433689940" id="2796129134712109758" nodeInfo="ng">
      <node role="accuracy" roleId="dvdp.8150960194433717349" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="2796129134712109759" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="1" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="m" />
      </node>
      <node role="rolloverTime" roleId="dvdp.8150960194433717362" type="dvdp.Time" typeId="dvdp.8150960194433715360" id="2796129134712109760" nodeInfo="ng">
        <property name="value" nameId="dvdp.8150960194433721548" value="15" />
        <property name="unit" nameId="dvdp.8150960194433721550" value="m" />
      </node>
    </node>
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="2796129134711792429" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mainButton" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="2796129134711792430" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="start" />
      </node>
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="2796129134712109837" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="pause" />
      </node>
    </node>
    <node role="buttons" roleId="dvdp.8150960194433737928" type="dvdp.Button" typeId="dvdp.8150960194433725054" id="2796129134712109876" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="resetButton" />
      <node role="actions" roleId="dvdp.8150960194433732823" type="dvdp.ButtonAction" typeId="dvdp.8150960194433732849" id="2796129134712109877" nodeInfo="ng">
        <property name="caption" nameId="dvdp.8150960194433732874" value="reset" />
      </node>
    </node>
    <node role="appearance" roleId="dvdp.8150960194433823838" type="dvdp.Appearance" typeId="dvdp.8150960194433738453" id="2796129134711792431" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="classic" />
      <property name="form" nameId="dvdp.8150960194433738727" value="circle" />
      <property name="width" nameId="dvdp.8150960194433738771" value="50" />
      <property name="height" nameId="dvdp.8150960194433745176" value="70" />
      <property name="weigth" nameId="dvdp.8150960194433745185" value="90" />
      <node role="color" roleId="dvdp.8150960194433752861" type="dvdp.ColorReference" typeId="dvdp.8150960194433746184" id="2796129134712135410" nodeInfo="ng">
        <link role="color" roleId="dvdp.8150960194433746268" targetNodeId="1t7x.~Color%dgray" resolveInfo="gray" />
      </node>
    </node>
  </root>
</model>

