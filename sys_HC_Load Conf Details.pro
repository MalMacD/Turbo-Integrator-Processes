601,100
602,"sys_HC_Load Conf Details"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Data\HC_conf.txt"
585,"C:\TM1\Health Check\Data\HC_conf.txt"
564,
565,"psG8_oUSFjD<5pgGaAUi99[GFli`^lpp=uuPLlX8yYXUh3kguNt;AjennzNTwNjusu27Q8KCb]b58aWBszoafdq^Ng<oe3YopB1KjOsPz4t]bE44j?WtYBz3?\STq25_<d7:va=Q9slkq0m4D40yhpDS5m>Br^xS57=<QqeoGryJNfmk5aTP3<\P`ot>^96DwBSXiyjJ"
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
psDatabase,"Health_Check"
psSrcFolder,""
637,4
psClient,""
psServer,""
psDatabase,""
psSrcFolder,""
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
582,3
VarType=32ColType=827
VarType=32ColType=827
IgnoredInputVarName=V3VarType=33ColType=1165
603,0
572,55

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbDB = 'Database';
cbBPAttr = '}ElementAttributes_BP Database Measure';

#--- Dimensions
#----------------------
dmMs = cbDB | ' Measure';
dmCl = 'ECClient';
dmSvr = 'Server';
dmDB = 'Database';
dmSW = 'Software';
dmBP = 'BP Database Measure';

#--- Other Variables
#----------------------------
sView = '}ec_hc_db_conf_clr';
nIdx = 0;
sName = '';
sAllParams = ',';

ViewDestroy (cbDB, sView);
SubsetDestroy (dmCl, sView);
SubsetDestroy (dmSvr, sView);
SubsetDestroy (dmDB, sView);
SubsetDestroy (dmSW, sView);
SubsetCreate (dmCl, sView);
SubsetCreate (dmSvr, sView);
SubsetCreate (dmDB, sView);
SubsetCreate (dmSW, sView);
SubsetElementInsert (dmCl, sView, psClient, 1);
SubsetElementInsert (dmSvr, sView, psServer, 1);
SubsetElementInsert (dmDB, sView, psDatabase, 1);
SubsetElementInsert (dmSW, sView, 'TM1', 1);

ViewCreate (cbDB, sView);
ViewSubsetAssign (cbDB, sView, dmCl, sView);
ViewSubsetAssign (cbDB, sView, dmSvr, sView);
ViewSubsetAssign (cbDB, sView, dmDB, sView);
ViewSubsetAssign (cbDB, sView, dmSW, sView);

ViewZeroOut (cbDB, sView);

If (SubSt (psSrcFolder, Long (psSrcFolder), 1) @<> '\');
      psSrcFolder = psSrcFolder | '\';
EndIf;

DatasourceNameForServer = psSrcFolder | 'ca_conf.txt';



573,10

#****Begin: Generated Statements***
#****End: Generated Statements****

If (DimIx (dmMs, vsParam) = 0);
      DimensionElementInsert (dmMs, 'Config', vsParam, 'N');
      DimensionElementComponentAdd (dmMs, 'Config', vsParam, 1.0000);
EndIf;


574,21

#****Begin: Generated Statements***
#****End: Generated Statements****

CellPutS (vsValue, cbDB, psClient, psServer, psDatabase, 'TM1', vsParam, 'Comment');
sAllParams = sAllParams | vsParam | ',';

If (DimIx (dmBP, vsParam) <> 0);
      sBP = CellGetS (cbBPAttr, vsParam, 'BP Value');
Else;
      sBP = '';
EndIf;

If (Upper (sBP) @<> 'ANY' & sBP @<> ''  & vsValue @<> sBP);
      Asciioutput ('BP.txt', vsvalue, sBP, 'N', cbDB, psClient, psServer, psDatabase, 'TM1', vsParam, 'BP');
      CellPutS ('N', cbDB, psClient, psServer, psDatabase, 'TM1', vsParam, 'BP');
Else;
      Asciioutput ('BP.txt', 'Y', cbDB, psClient, psServer, psDatabase, 'TM1', vsParam, 'BP');
      CellPutS ('Y', cbDB, psClient, psServer, psDatabase, 'TM1', vsParam, 'BP');
EndIf;

575,18

#****Begin: Generated Statements***
#****End: Generated Statements****

nIdx = 1;

While (nIdx <= DimSiz (dmBP));
      sParam = DimNm (dmBP, nIdx);

      If (Scan (Upper (sParam), Upper (sAllParams)) = 0);
asciioutput ('bp2.txt', sParam, sAllParams, str(Scan (sParam, sAllParams),3,0));
           CellPutS ('MISSING', cbDB, psClient, psServer, psDatabase, 'TM1', sParam, 'Comment');
           CellPutS ('N', cbDB, psClient, psServer, psDatabase, 'TM1', sParam, 'BP');
      EndIf;

      nIdx = nIdx +1;
End;

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
