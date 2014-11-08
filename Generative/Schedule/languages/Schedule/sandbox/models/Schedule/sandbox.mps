<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:935cdb56-2b29-406e-ad86-25719fba5672(Schedule.sandbox)">
  <persistence version="9" />
  <debugInfo>
    <lang id="a2c55519-5234-4e83-b8f8-06b09652be8e" name="Schedule" />
    <lang id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" />
    <concept id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293372535" name="Schedule.structure.Schedule" />
    <concept id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293498013" name="Schedule.structure.EducationalDay" />
    <concept id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293501673" name="Schedule.structure.Lecture" />
    <concept id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293503813" name="Schedule.structure.Time" />
    <property id="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" name="name" />
    <property id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293503813/2730820940293503822" name="hours" />
    <property id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293503813/2730820940293503824" name="minutes" />
    <property id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293501673/2730820940293503881" name="room" />
    <property id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293501673/2730820940293503896" name="presenter" />
    <childRole id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293372535/2730820940293498023" name="days" />
    <childRole id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293498013/2730820940293503804" name="lectures" />
    <childRole id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293501673/2730820940293503839" name="timeStart" />
    <childRole id="a2c55519-5234-4e83-b8f8-06b09652be8e/2730820940293501673/2730820940293503841" name="timeFinish" />
  </debugInfo>
  <languages>
    <use id="a2c55519-5234-4e83-b8f8-06b09652be8e" version="-1" index="yizo" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" version="-1" index="asn4" />
  </languages>
  <imports>
    <import index="y9c6" ref="r:03e2b27a-dd59-4302-abf1-e73a72507f84(Schedule.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="yizo.2730820940293372535" id="2730820940293443001" info="ng">
      <property role="asn4.1169194658468.1169194664001" value="SPbAU 6 course" />
      <node concept="yizo.2730820940293498013" id="2730820940293512407" role="yizo.2730820940293372535.2730820940293498023" info="ng">
        <property role="asn4.1169194658468.1169194664001" value="Monday" />
        <node concept="yizo.2730820940293501673" id="2730820940293512409" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="Programming" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="123" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin" />
          <node concept="yizo.2730820940293503813" id="2730820940293512410" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="10" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="10" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
          <node concept="yizo.2730820940293503813" id="2730820940293512411" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="11" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="11" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
        </node>
        <node concept="yizo.2730820940293501673" id="2730820940293512435" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="Maths" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="234" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin jr." />
          <node concept="yizo.2730820940293503813" id="2730820940293512436" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="9" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="12" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
          <node concept="yizo.2730820940293503813" id="2730820940293512437" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="9" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="20" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="13" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
        </node>
        <node concept="yizo.2730820940293501673" id="2730820940293512476" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="History" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="123" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin 2" />
          <node concept="yizo.2730820940293503813" id="2730820940293512477" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="12" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="9" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
          <node concept="yizo.2730820940293503813" id="2730820940293512478" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="13" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
            <property role="yizo.2730820940293503813.2730820940293503822" value="9" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="20" />
          </node>
        </node>
      </node>
      <node concept="yizo.2730820940293498013" id="7613068837529177884" role="yizo.2730820940293372535.2730820940293498023" info="ng">
        <property role="asn4.1169194658468.1169194664001" value="Friday" />
        <node concept="yizo.2730820940293501673" id="7613068837529177885" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="Programming" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="123" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin" />
          <node concept="yizo.2730820940293503813" id="7613068837529177886" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="10" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
          <node concept="yizo.2730820940293503813" id="7613068837529177887" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="11" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
        </node>
        <node concept="yizo.2730820940293501673" id="7613068837529177888" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="Maths" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="234" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin jr." />
          <node concept="yizo.2730820940293503813" id="7613068837529177889" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="12" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
          <node concept="yizo.2730820940293503813" id="7613068837529177890" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="13" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="00" />
          </node>
        </node>
        <node concept="yizo.2730820940293501673" id="7613068837529177891" role="yizo.2730820940293498013.2730820940293503804" info="ng">
          <property role="asn4.1169194658468.1169194664001" value="History" />
          <property role="yizo.2730820940293501673.2730820940293503881" value="123" />
          <property role="yizo.2730820940293501673.2730820940293503896" value="Vasily Pupkin 2" />
          <node concept="yizo.2730820940293503813" id="7613068837529177892" role="yizo.2730820940293501673.2730820940293503841" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="19" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="30" />
          </node>
          <node concept="yizo.2730820940293503813" id="7613068837529177893" role="yizo.2730820940293501673.2730820940293503839" info="ng">
            <property role="yizo.2730820940293503813.2730820940293503822" value="19" />
            <property role="yizo.2730820940293503813.2730820940293503824" value="20" />
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>

