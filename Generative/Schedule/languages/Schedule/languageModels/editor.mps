<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cf98ff79-4046-4781-b01a-0d8e0f27bf0e(Schedule.editor)">
  <persistence version="9" />
  <debugInfo>
    <lang id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" />
    <concept id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" />
    <property id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389577006/1073389577007" name="text" />
    <property id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1186414536763/1186414551515" name="flag" />
    <refRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" name="relationDeclaration" />
    <refRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1166049232041/1166049300910" name="conceptDeclaration" />
    <childRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389446423/1073389446424" name="childCellModel" />
    <childRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1080736578640/1080736633877" name="cellModel" />
    <childRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389446423/1106270802874" name="cellLayout" />
    <childRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1140524381322/1140524464360" name="cellLayout" />
    <childRole id="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1219418625346/1219418656006" name="styleItem" />
  </debugInfo>
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" version="-1" index="9wj7" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" implicit="true" />
    <import index="y9c6" ref="r:03e2b27a-dd59-4302-abf1-e73a72507f84(Schedule.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <contents>
    <node concept="9wj7.1071666914219" id="2730820940293741944" info="ig">
      <reference role="9wj7.1166049232041.1166049300910" target="y9c6.2730820940293503813" resolveInfo="Time" />
      <node concept="9wj7.1073389446423" id="7613068837529500740" role="9wj7.1080736578640.1080736633877" info="sn">
        <node concept="9wj7.1237303669825" id="7613068837529500741" role="9wj7.1073389446423.1106270802874" info="nn" />
        <node concept="9wj7.1073389658414" id="2730820940293749963" role="9wj7.1073389446423.1073389446424" info="sg">
          <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503822" resolveInfo="hours" />
        </node>
        <node concept="9wj7.1073389577006" id="2730820940293749967" role="9wj7.1073389446423.1073389446424" info="sn">
          <property role="9wj7.1073389577006.1073389577007" value=":" />
          <node concept="9wj7.1233758997495" id="2730820940293749968" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
        </node>
        <node concept="9wj7.1073389658414" id="7613068837529226876" role="9wj7.1073389446423.1073389446424" info="sg">
          <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503824" resolveInfo="minutes" />
        </node>
      </node>
    </node>
    <node concept="9wj7.1071666914219" id="7613068837529507632" info="ig">
      <reference role="9wj7.1166049232041.1166049300910" target="y9c6.2730820940293501673" resolveInfo="Lecture" />
      <node concept="9wj7.1073389446423" id="7613068837529507713" role="9wj7.1080736578640.1080736633877" info="sn">
        <node concept="9wj7.1237303669825" id="7613068837529507714" role="9wj7.1073389446423.1106270802874" info="nn" />
        <node concept="9wj7.1073389577006" id="7613068837529507715" role="9wj7.1073389446423.1073389446424" info="sn">
          <property role="9wj7.1073389577006.1073389577007" value="lecture" />
        </node>
        <node concept="9wj7.1073389658414" id="7613068837529507716" role="9wj7.1073389446423.1073389446424" info="sg">
          <reference role="9wj7.1139848536355.1140103550593" target="tpck.1169194664001" resolveInfo="name" />
          <node concept="9wj7.1237308012275" id="7613068837530065045" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
        </node>
        <node concept="9wj7.1073389446423" id="7613068837529507720" role="9wj7.1073389446423.1073389446424" info="sn">
          <node concept="9wj7.1237303669825" id="7613068837529507721" role="9wj7.1073389446423.1106270802874" info="nn" />
          <node concept="9wj7.1237307900041" id="7613068837529507722" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507735" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value="at" />
            <node concept="9wj7.1237385578942" id="7613068837529508447" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529508692" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value=":" />
          </node>
          <node concept="9wj7.1073389882823" id="7613068837529507739" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503839" />
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507736" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value="-" />
            <node concept="9wj7.1233758997495" id="7613068837529507737" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389882823" id="7613068837529507748" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503841" />
            <node concept="9wj7.1237307900041" id="7613068837529507749" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
            <node concept="9wj7.1237308012275" id="7613068837529507750" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507723" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value="in room" />
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507724" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value=":" />
            <node concept="9wj7.1233758997495" id="7613068837529507725" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389658414" id="7613068837529507726" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503881" resolveInfo="room" />
            <node concept="9wj7.1237308012275" id="7613068837529507727" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507728" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value="presenter" />
          </node>
          <node concept="9wj7.1073389577006" id="7613068837529507729" role="9wj7.1073389446423.1073389446424" info="sn">
            <property role="9wj7.1073389577006.1073389577007" value=":" />
            <node concept="9wj7.1233758997495" id="7613068837529507730" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
          <node concept="9wj7.1073389658414" id="7613068837529509288" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503896" resolveInfo="presenter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9wj7.1071666914219" id="7613068837529586118" info="ig">
      <reference role="9wj7.1166049232041.1166049300910" target="y9c6.2730820940293498013" resolveInfo="EducationalDay" />
      <node concept="9wj7.1073389446423" id="7613068837529586120" role="9wj7.1080736578640.1080736633877" info="sn">
        <node concept="9wj7.1237303669825" id="7613068837529586121" role="9wj7.1073389446423.1106270802874" info="nn" />
        <node concept="9wj7.1073389577006" id="7613068837529586122" role="9wj7.1073389446423.1073389446424" info="sn">
          <property role="9wj7.1073389577006.1073389577007" value="lectures" />
        </node>
        <node concept="9wj7.1073389658414" id="7613068837529586123" role="9wj7.1073389446423.1073389446424" info="sg">
          <reference role="9wj7.1139848536355.1140103550593" target="tpck.1169194664001" resolveInfo="name" />
          <node concept="9wj7.1237308012275" id="7613068837530108370" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
        </node>
        <node concept="9wj7.1073389446423" id="7613068837529586127" role="9wj7.1073389446423.1073389446424" info="sn">
          <node concept="9wj7.1237303669825" id="7613068837529586128" role="9wj7.1073389446423.1106270802874" info="nn" />
          <node concept="9wj7.1237307900041" id="7613068837529586129" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
          <node concept="9wj7.1073390211982" id="7613068837529586134" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293503804" />
            <node concept="9wj7.1237303669825" id="7613068837529586135" role="9wj7.1140524381322.1140524464360" info="nn" />
            <node concept="9wj7.1237375020029" id="7613068837529586136" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
            <node concept="9wj7.1237307900041" id="7613068837529586137" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
            <node concept="9wj7.1237308012275" id="7613068837529586138" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="9wj7.1071666914219" id="7613068837529626453" info="ig">
      <reference role="9wj7.1166049232041.1166049300910" target="y9c6.2730820940293372535" resolveInfo="Schedule" />
      <node concept="9wj7.1073389446423" id="7613068837529626455" role="9wj7.1080736578640.1080736633877" info="sn">
        <node concept="9wj7.1237303669825" id="7613068837529626456" role="9wj7.1073389446423.1106270802874" info="nn" />
        <node concept="9wj7.1073389577006" id="7613068837529626457" role="9wj7.1073389446423.1073389446424" info="sn">
          <property role="9wj7.1073389577006.1073389577007" value="schedule" />
        </node>
        <node concept="9wj7.1073389658414" id="7613068837529626458" role="9wj7.1073389446423.1073389446424" info="sg">
          <reference role="9wj7.1139848536355.1140103550593" target="tpck.1169194664001" resolveInfo="name" />
          <node concept="9wj7.1237308012275" id="7613068837530022067" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
        </node>
        <node concept="9wj7.1073389446423" id="7613068837529626462" role="9wj7.1073389446423.1073389446424" info="sn">
          <node concept="9wj7.1237303669825" id="7613068837529626463" role="9wj7.1073389446423.1106270802874" info="nn" />
          <node concept="9wj7.1237307900041" id="7613068837529626464" role="9wj7.1219418625346.1219418656006" info="ln">
            <property role="9wj7.1186414536763.1186414551515" value="true" />
          </node>
          <node concept="9wj7.1073390211982" id="7613068837529626469" role="9wj7.1073389446423.1073389446424" info="sg">
            <reference role="9wj7.1139848536355.1140103550593" target="y9c6.2730820940293498023" />
            <node concept="9wj7.1237303669825" id="7613068837529626470" role="9wj7.1140524381322.1140524464360" info="nn" />
            <node concept="9wj7.1237375020029" id="7613068837529626471" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
            <node concept="9wj7.1237307900041" id="7613068837529626472" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
            <node concept="9wj7.1237308012275" id="7613068837529626473" role="9wj7.1219418625346.1219418656006" info="ln">
              <property role="9wj7.1186414536763.1186414551515" value="true" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </contents>
</model>

