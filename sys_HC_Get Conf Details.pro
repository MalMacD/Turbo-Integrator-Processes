601,100
602,"sys_HC_Get Conf Details"
562,"CHARACTERDELIMITED"
586,"C:\Excelerated\APSC_BMS\tm1s.cfg"
585,"C:\Excelerated\APSC_BMS\tm1s.cfg"
564,
565,"iVv`bCs0?a4ZH=78Ur4:O_:AZAj@ttayDV]QfhFTG0[Td:TYrflcJLli1D];OcDIU@Fr\7l8iQd`mPTUeJQa\LN\eDmeJpcSF^exNw=28e]V\I11:@bc1nvJtcRP\4I_C6zGhOl@uHBL8D478=HDEGZn5pK1QCEL4Ti5O4wECnz4`ST<;_F4e=UMWv\`]oDgfcm@Welc"
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
567,"="
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
psConfigDir,"c:\tm1\health check\"
637,1
psConfigDir,""
577,2
vsParam
vsValue
578,2
2
2
579,2
1
2
580,2
0
0
581,2
0
0
582,2
VarType=32ColType=827
VarType=32ColType=827
603,0
572,34

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbCube = '}Cubes';
cbCP = '}CubeProperties';
cbDim = '}Dimensions';
cbDP = '}DimensionProperties';

#--- Dimensions
#----------------------
dmCube = '}Cubes';
dmDim = '}Dimensions';
dmApp = '}ApplicationEntries';
dmProc = '}Processes';
dmPar = 'Database Measure';

#--- Other Variables
#----------------------------
sOutFile = 'CA.txt';
sConfigFile = 'CA_conf.txt';
sLoadProc = 'sys_HC_Load Details';

If (SubSt (psConfigDir, Long (psConfigDir), 1) @<> '\');
      psConfigDir = psConfigDir | '\';
EndIf;

sConfig = psConfigDir | 'tm1s.cfg';

DataSourceNameForServer = sConfig;
DataSourceNameForClient = sConfig;

573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,19

#****Begin: Generated Statements***
#****End: Generated Statements****

vsParam = Trim (vsParam);

If (SubSt (vsParam, 1, 1) @= '#' % Trim (vsValue) @= '');
      ItemSkip;
EndIf;

vsValue = Trim (vsValue);

#--- Weird format below beacuse we are using "=" as separator for input
#---------------------------------------------------------------------------------------------------------------
AsciiOutput (sConfigFile, vsParam | '","' | vsValue);




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
