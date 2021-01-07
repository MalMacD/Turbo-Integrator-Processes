601,100
602,"sys_HC_Load Chore Details"
562,"CHARACTERDELIMITED"
586,"C:\temp\HC sys_Extract HC Data.txt"
585,"C:\temp\HC sys_Extract HC Data.txt"
564,
565,"p>1hvEwWDr@Ab;^5a]4pxJ\[\tq@]fjC6jSg@L`JvDQlT6ejOKsSPc5wWrx\k;lmONGU3xFe<ZRo9pKkU5s_S5P[th[\HTVUcclVi5I\ef@vj:pNvsjjDxl2Of@1eWU?=mY9i<T`DXmZSAPvrGy;NEZaY;zbD9GJ?2Crlbmy6XI]7;5reSvFx^DV:Gy6ny0WB\Wve@`I"
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
560,6
psSrcFolder
psChore
psClient
psServer
psDatabase
psIndex
561,6
2
2
2
2
2
2
590,6
psSrcFolder,""
psChore,""
psClient,""
psServer,""
psDatabase,""
psIndex,""
637,6
psSrcFolder,""
psChore,""
psClient,""
psServer,""
psDatabase,""
psIndex,""
577,2
vsCode
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
582,4
VarType=32ColType=827
VarType=32ColType=827
IgnoredInputVarName=V3VarType=33ColType=1165
IgnoredInputVarName=V4VarType=32ColType=1165
603,0
572,32

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbObj = 'Object';

#--- Dimensions
#----------------------
dmMs = cbObj | ' Measure';
dmCl = 'ECClient';
dmSvr = 'Server';
dmDB = 'Database';

#--- Other Variables
#----------------------------
sView = '}ec_hc_clr';
nIdx = 0;
sName = '';
sType = 'Chore';

If (SubSt (psSrcFolder, Long (psSrcFolder), 1) @<> '\');
      psSrcFolder = psSrcFolder | '\';
EndIf;

DatasourceNameForServer = psSrcFolder | 'CA ' | psChore | '.txt';





573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,9

#****Begin: Generated Statements***
#****End: Generated Statements****

#asciioutput (psChore | 'cho_load.txt', vsValue, cbObj, psClient, psServer, psDatabase, sType, psIndex, vsCode);
asciioutput ('apple.txt', vsValue, cbObj, psClient, psServer, psDatabase, sType, psIndex, vsCode);

CellPutS (vsValue, cbObj, psClient, psServer, psDatabase, sType, psIndex, vsCode);

575,3

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
