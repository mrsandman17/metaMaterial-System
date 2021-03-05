<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="1.27" unitdist="mm" unit="mm" style="lines" multiple="1" display="yes" altdistance="1.27" altunitdist="mm" altunit="mm"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="LETTER_L" urn="urn:adsk.eagle:symbol:13870/1" library_version="1">
<frame x1="0" y1="0" x2="248.92" y2="185.42" columns="12" rows="17" layer="94" border-left="no" border-top="no" border-right="no" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LETTER_L" urn="urn:adsk.eagle:component:13920/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
LETTER landscape</description>
<gates>
<gate name="G$1" symbol="LETTER_L" x="0" y="0"/>
<gate name="G$2" symbol="DOCFIELD" x="147.32" y="0" addlevel="must"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-coax" urn="urn:adsk.eagle:library:133">
<description>&lt;b&gt;Coax Connectors&lt;/b&gt;&lt;p&gt;
Radiall  and M/A COM.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LTI-SASF54GT" urn="urn:adsk.eagle:footprint:6195/1" library_version="2">
<description>&lt;b&gt;SMA vertical PCB thrue hole jack&lt;/b&gt;&lt;p&gt;
Source: Lighthorse Technologies, inc. SASF54GT.pdf</description>
<wire x1="-1.1" y1="3.075" x2="1.1" y2="3.075" width="0.2032" layer="21"/>
<wire x1="3.075" y1="1.1" x2="3.075" y2="-1.1" width="0.2032" layer="21"/>
<wire x1="1.1" y1="-3.075" x2="-1.1" y2="-3.075" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.1" x2="-3.075" y2="1.1" width="0.2032" layer="21"/>
<wire x1="-3.0749" y1="3.0749" x2="3.075" y2="3.075" width="0.2032" layer="51"/>
<wire x1="3.075" y1="3.075" x2="3.0749" y2="-3.0749" width="0.2032" layer="51"/>
<wire x1="3.0749" y1="-3.0749" x2="-3.075" y2="-3.075" width="0.2032" layer="51"/>
<wire x1="-3.075" y1="-3.075" x2="-3.0749" y2="3.0749" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="3.0501" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="1.7" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.5" diameter="2.2"/>
<pad name="2" x="-2.54" y="2.54" drill="1.5" diameter="2.2"/>
<pad name="3" x="2.54" y="2.54" drill="1.5" diameter="2.2"/>
<pad name="4" x="2.54" y="-2.54" drill="1.5" diameter="2.2"/>
<pad name="5" x="-2.54" y="-2.54" drill="1.5" diameter="2.2"/>
<text x="-2.54" y="4.445" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-5.715" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LTI-SASF54GT" urn="urn:adsk.eagle:package:6232/1" type="box" library_version="2">
<description>SMA vertical PCB thrue hole jack
Source: Lighthorse Technologies, inc. SASF54GT.pdf</description>
<packageinstances>
<packageinstance name="LTI-SASF54GT"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="BU-BNC" urn="urn:adsk.eagle:symbol:6169/1" library_version="2">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="0" y1="-2.54" x2="-0.762" y2="-1.778" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-0.508" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0.254" x2="-0.762" y2="0.254" width="0.254" layer="94"/>
<wire x1="-0.762" y1="0.254" x2="-0.508" y2="0" width="0.254" layer="94"/>
<wire x1="-0.508" y1="0" x2="-0.762" y2="-0.254" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-0.254" x2="-2.54" y2="-0.254" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="3.302" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="2.54" y="-2.54" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LTI-SASF54GT" urn="urn:adsk.eagle:component:6245/2" prefix="X" library_version="2">
<description>&lt;b&gt;SMA vertical PCB thrue hole jack&lt;/b&gt;&lt;p&gt;
Source: Lighthorse Technologies, inc. SASF54GT.pdf</description>
<gates>
<gate name="G$1" symbol="BU-BNC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LTI-SASF54GT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2 3 4 5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:6232/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="3" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pad11x3mm">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD2,54-5,08" urn="urn:adsk.eagle:footprint:30823/1" locally_modified="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="-1" y="-1" dx="9" dy="3" layer="1"/>
<text x="0" y="0" size="0.0254" layer="28" rot="MR0">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="SMD2,54-5,08" urn="urn:adsk.eagle:package:30841/1" type="box">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD2,54-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD5" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD2,54-5,08">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30841/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="21" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pad1x3mm">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD2,54-5,08" urn="urn:adsk.eagle:footprint:30823/1" locally_modified="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="-1" y="-1" dx="1.5" dy="3" layer="1"/>
<text x="0" y="0" size="0.0254" layer="28" rot="MR0">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="SMD2,54-5,08" urn="urn:adsk.eagle:package:30841/1" type="box">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD2,54-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD5" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD2,54-5,08">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30841/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="21" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pad97x2mm">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SMD2,54-5,08" urn="urn:adsk.eagle:footprint:30823/1" locally_modified="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<smd name="1" x="-1" y="-1" dx="97" dy="2.3" layer="1"/>
<text x="0" y="0" size="0.0254" layer="28" rot="MR0">&gt;VALUE</text>
<text x="-1.5" y="-2.5" size="1.27" layer="25" rot="R90">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="SMD2,54-5,08" urn="urn:adsk.eagle:package:30841/1" type="box">
<description>SMD PAD</description>
<packageinstances>
<packageinstance name="SMD2,54-5,08"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMD5" prefix="PAD" uservalue="yes">
<description>&lt;b&gt;SMD PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SMD2,54-5,08">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30841/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="21" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="this" width="0" drill="0">
</class>
<class number="1" name="New Class" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="LETTER_L" device=""/>
<part name="X1" library="con-coax" library_urn="urn:adsk.eagle:library:133" deviceset="LTI-SASF54GT" device="" package3d_urn="urn:adsk.eagle:package:6232/1"/>
<part name="X2" library="con-coax" library_urn="urn:adsk.eagle:library:133" deviceset="LTI-SASF54GT" device="" package3d_urn="urn:adsk.eagle:package:6232/1"/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="PAD1" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD2" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD3" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD4" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD5" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD6" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD7" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD8" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD9" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD10" library="pad11x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD11" library="pad1x3mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD12" library="pad97x2mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
<part name="PAD13" library="pad97x2mm" deviceset="SMD5" device="" package3d_urn="urn:adsk.eagle:package:30841/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="-15.24" y="-5.08" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="132.08" y="-5.08" smashed="yes">
<attribute name="LAST_DATE_TIME" x="144.78" y="-3.81" size="2.54" layer="94"/>
<attribute name="SHEET" x="218.44" y="-3.81" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="149.86" y="13.97" size="2.54" layer="94"/>
</instance>
<instance part="X1" gate="G$1" x="115" y="84" smashed="yes" rot="MR180">
<attribute name="VALUE" x="112.46" y="89.08" size="1.778" layer="96" rot="MR180"/>
<attribute name="NAME" x="112.46" y="80.698" size="1.778" layer="95" rot="MR180"/>
</instance>
<instance part="X2" gate="G$1" x="166" y="84" smashed="yes" rot="R180">
<attribute name="VALUE" x="168.54" y="89.08" size="1.778" layer="96" rot="R180"/>
<attribute name="NAME" x="168.54" y="80.698" size="1.778" layer="95" rot="R180"/>
</instance>
<instance part="GND1" gate="1" x="163" y="95.08" smashed="yes" rot="MR180">
<attribute name="VALUE" x="160.46" y="97.62" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="PAD1" gate="1" x="121" y="84" smashed="yes" rot="R180">
<attribute name="NAME" x="121.143" y="83.1458" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="122.143" y="87.302" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD2" gate="1" x="128" y="80" smashed="yes">
<attribute name="NAME" x="126.857" y="81.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="126.857" y="76.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD3" gate="1" x="142" y="80" smashed="yes">
<attribute name="NAME" x="140.857" y="81.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="140.857" y="76.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD4" gate="1" x="140" y="87" smashed="yes">
<attribute name="NAME" x="138.857" y="88.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="138.857" y="83.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD5" gate="1" x="134" y="97" smashed="yes">
<attribute name="NAME" x="132.857" y="98.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="132.857" y="93.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD6" gate="1" x="146" y="101" smashed="yes">
<attribute name="NAME" x="144.857" y="102.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="144.857" y="97.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD7" gate="1" x="127" y="100" smashed="yes">
<attribute name="NAME" x="125.857" y="101.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="125.857" y="96.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD8" gate="1" x="114" y="100" smashed="yes">
<attribute name="NAME" x="112.857" y="101.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="112.857" y="96.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD9" gate="1" x="106" y="91" smashed="yes">
<attribute name="NAME" x="104.857" y="92.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="104.857" y="87.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD10" gate="1" x="127" y="70" smashed="yes">
<attribute name="NAME" x="125.857" y="71.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="125.857" y="66.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD11" gate="1" x="159" y="84" smashed="yes">
<attribute name="NAME" x="157.857" y="85.8542" size="1.778" layer="95"/>
<attribute name="VALUE" x="157.857" y="80.698" size="1.778" layer="96"/>
</instance>
<instance part="PAD12" gate="1" x="142.24" y="76.2" smashed="yes" rot="R180">
<attribute name="NAME" x="143.383" y="74.3458" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="143.383" y="79.502" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="PAD13" gate="1" x="142.24" y="91.44" smashed="yes">
<attribute name="NAME" x="141.097" y="93.2942" size="1.778" layer="95"/>
<attribute name="VALUE" x="141.097" y="88.138" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="2"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="163.46" y1="86.54" x2="163" y2="86.54" width="0.1524" layer="91"/>
<wire x1="163" y1="86.54" x2="163" y2="92.54" width="0.1524" layer="91"/>
<pinref part="PAD13" gate="1" pin="P"/>
<wire x1="144.78" y1="91.44" x2="163" y2="91.44" width="0.1524" layer="91"/>
<wire x1="163" y1="91.44" x2="163" y2="92.54" width="0.1524" layer="91"/>
<junction x="163" y="92.54"/>
<pinref part="X1" gate="G$1" pin="2"/>
<wire x1="117.54" y1="86.54" x2="120.54" y2="86.54" width="0.1524" layer="91"/>
<wire x1="120.54" y1="86.54" x2="120.54" y2="91.54" width="0.1524" layer="91"/>
<pinref part="PAD12" gate="1" pin="P"/>
<wire x1="139.7" y1="76.2" x2="109.22" y2="76.2" width="0.1524" layer="91"/>
<wire x1="109.22" y1="76.2" x2="109.22" y2="91.54" width="0.1524" layer="91"/>
<wire x1="109.22" y1="91.54" x2="120.54" y2="91.54" width="0.1524" layer="91"/>
<wire x1="117.54" y1="86.54" x2="138.43" y2="86.54" width="0.1524" layer="91"/>
<wire x1="138.43" y1="86.54" x2="138.43" y2="96.52" width="0.1524" layer="91"/>
<junction x="117.54" y="86.54"/>
<wire x1="138.43" y1="96.52" x2="160.02" y2="96.52" width="0.1524" layer="91"/>
<wire x1="160.02" y1="96.52" x2="160.02" y2="92.54" width="0.1524" layer="91"/>
<wire x1="160.02" y1="92.54" x2="163" y2="92.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PAD11" class="0">
<segment>
<pinref part="X2" gate="G$1" pin="1"/>
<pinref part="PAD11" gate="1" pin="P"/>
<wire x1="163.46" y1="84" x2="161.54" y2="84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="G$1" pin="1"/>
<pinref part="PAD1" gate="1" pin="P"/>
<wire x1="117.54" y1="84" x2="118.46" y2="84" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,109.116,87.526,FRAME1,,,,,"/>
</errors>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
