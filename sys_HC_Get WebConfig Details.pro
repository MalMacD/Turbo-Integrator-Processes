601,100
602,"sys_HC_Get WebConfig Details"
562,"CHARACTERDELIMITED"
586,"C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\configuration\tm1web_config.xml"
585,"C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\configuration\tm1web_config.xml"
564,
565,"i451fQmPma]qBIM`Ti?5U8TB3Kmo@sNMMCLVuYbGnftcj]:gCq02]ACXyE2fPkzAA0WYjaizKk`6WAIZtCe4AmPSKD0\Bf2T?7RuupPpECx9KbyTSXkG?7ybF705r;@T6KLjvE^^ShAn6Jjtt3T`gncTSnGBLNV8lbJ65EujJTby63pYe\?3<B86O^az1cW`yUo^wGY>"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,1
psConfigDir
561,1
2
590,1
psConfigDir,""
637,1
psConfigDir,""
577,3
vs1
vs2
vs3
578,3
2
2
2
579,3
1
2
3
580,3
0
0
0
581,3
0
0
0
582,3
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,28

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbSvr = 'Server';

#--- Dimensions
#----------------------
dmMeas = cbSvr | ' Measure';

#--- Other Variables
#----------------------------
sConfigFile = 'CA_web_conf.txt';
nSkip = 0;

If (SubSt (psConfigDir, Long (psConfigDir), 1) @<> '\');
      psConfigDir = psConfigDir | '\';
EndIf;

psConfigDir = 'C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\configuration\';

sConfig = psConfigDir | 'tm1web_config.xml';

DataSourceNameForServer = sConfig;
DataSourceNameForClient = sConfig;

573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,41

#****Begin: Generated Statements***
#****End: Generated Statements****

vs1 = Trim (vs1);

If (nSkip = 1);
      If (SubSt (vs1|vs2|vs3, Long (vs1|vs2|vs3) -2, 3) @= '-->');
            nSkip = 0;
      EndIf;
#AsciiOutput ('mal.txt', 'Skipping ' | vs1|vs2|vs3);

      ItemSkip;
EndIf;

If (SubSt (vs1, 1, 4) @= '<!--');
      If (SubSt (vs1|vs2|vs3, Long (vs1|vs2|vs3) -2, 3) @<> '-->');
            nSkip = 1;
      EndIf;

      ItemSkip;
EndIf;

If (Scan ('ADD KEY', Upper (vs1)) = 0);
      ItemSkip;
EndIf;

nIdx = Scan ('=', vs1);
vs1 = SubSt (vs1, nIdx +1, Long (vs1) - nIdx);
nIdx = Scan (' ', vs1);
sParam = SubSt (vs1, 1, nIdx -1);
vs1 = SubSt (vs1, nIdx +1, Long (vs1) -nIdx);
nIdx = Scan ('=', vs1);
vs1 = SubSt (vs1, nIdx +1, Long (vs1) - nIdx);
nIdx = Scan ('/', vs1);

sValue = Trim (SubSt (vs1, 1, nIdx -1));

AsciiOutput (sConfigFile, sParam, sValue);


575,5

#****Begin: Generated Statements***
#****End: Generated Statements****


576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
