601,100
602,"sys_HC_Load Details"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Data\HC.txt"
585,"C:\TM1\Health Check\Data\HC.txt"
564,
565,"gWdM^HBa:t7zl8AGU81cwULzrS^ZvjWdDe;IgWM91n<NRwx_]iqh?wTi9^DJaSPexNtt>v^^FVuBYFraQlHRrk=rG2gLSBx=@q8z3yseCoi^9K@958i?2ARkY:^B2RaID[rTTO=iCR3VzdWMUQIpDVO7Tc@BRo<5GUIGT<0MHs<z@9==TAJr0NxUc^?b@RMNnHdGal>B"
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
560,4
psClient
psServer
psDatabase
psSrcFolder
561,4
2
2
2
2
590,4
psClient,"Malcolm"
psServer,"caddis"
psDatabase,"health_check"
psSrcFolder,"c:\tm1\health check\data\"
637,4
psClient,""
psServer,""
psDatabase,""
psSrcFolder,""
577,7
vsType
vsName
vsMeas
vsValue
vs3
vs4
vs5
578,7
2
2
2
2
2
2
2
579,7
1
2
3
4
5
6
7
580,7
0
0
0
0
0
0
0
581,7
0
0
0
0
0
0
0
582,7
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,51

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbCub = 'Object';

#--- Dimensions
#----------------------
dmMs = cbCub | ' Measure';
dmCl = 'ECClient';
dmSvr = 'Server';
dmDB = 'Database';

#--- Other Variables
#----------------------------
sView = '}ca_h_clr';
nIdx = 0;
sName = '';
sConfProc = 'sys_HC_Load Conf Details';
sWebConfProc = 'sys_HC_Load WebConfig Details';
sChoreProc = 'sys_HC_Load Chore Details';
sTIProc = 'sys_HC_Map TI to Chore';

ViewDestroy (cbCub, sView);
SubsetDestroy (dmCl, sView);
SubsetDestroy (dmSvr, sView);
SubsetDestroy (dmDB, sView);
SubsetCreate (dmCl, sView);
SubsetCreate (dmSvr, sView);
SubsetCreate (dmDB, sView);
SubsetElementInsert (dmCl, sView, psClient, 1);
SubsetElementInsert (dmSvr, sView, psServer, 1);
SubsetElementInsert (dmDB, sView, psDatabase, 1);

ViewCreate (cbCub, sView);
ViewSubsetAssign (cbCub, sView, dmCl, sView);
ViewSubsetAssign (cbCub, sView, dmSvr, sView);
ViewSubsetAssign (cbCub, sView, dmDB, sView);

ViewZeroOut (cbCub, sView);

If (SubSt (psSrcFolder, Long (psSrcFolder), 1) @<> '\');
      psSrcFolder = psSrcFolder | '\';
EndIf;

DatasourceNameForServer = psSrcFolder | 'CA.txt';



573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,36

#****Begin: Generated Statements***
#****End: Generated Statements****

If (vsName @<> sName);
      nIdx = nIdx +1;
EndIf;

sName = vsName;
sIdx = '00' | Trim (Str (nIdx, 3, 0));
sIdx = SubSt (sIdx, Long (sIdx) -2, 3);

CellPutS (vsName, cbCub, psClient, psServer, psDatabase, vsType, sIdx, 'Name');
asciioutput ('aaa.txt', vsName, cbCub, psClient, psServer, psDatabase, vsType, sIdx, 'Name');

If (vsMeas @<> '');
      If (DType (dmMs, vsMeas) @= 'S');
            CellPutS (vsValue, cbCub, psClient, psServer, psDatabase, vsType, sIdx, vsMeas);
      Else;
            CellPutN (Numbr (vsValue), cbCub, psClient, psServer, psDatabase, vsType, sIdx, vsMeas);
      EndIf;

EndIf;

If (vsType @= 'Chore');
      ExecuteProcess (sChoreProc,
                                 'psSrcFolder', psSrcFolder,
                                 'psChore', vsName,
                                 'psClient', psClient,
                                 'psServer', psServer,
                                 'psDatabase', psDatabase,
                                 'psIndex', sIdx);

EndIf;


575,23

#****Begin: Generated Statements***
#****End: Generated Statements****

ExecuteProcess (sConfProc,
                           'psClient', psClient,
                           'psServer', psServer,
                           'psDatabase', psDatabase,
                           'psSrcFolder', psSrcFolder);

ExecuteProcess (sWebConfProc,
                           'psClient', psClient,
                           'psServer', psServer,
                           'psDatabase', psDatabase,
                           'psSrcFolder', psSrcFolder);

#--- Map all TIs to Chores
#--------------------------------------
ExecuteProcess (sTIProc,
                           'psClient', psClient,
                           'psServer', psServer,
                           'psDatabase', psDatabase);

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
