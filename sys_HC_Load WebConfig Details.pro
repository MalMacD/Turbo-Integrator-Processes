601,100
602,"sys_HC_Load WebConfig Details"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Data\HC_web_conf.txt"
585,"C:\TM1\Health Check\Data\HC_web_conf.txt"
564,
565,"uvw?l7IpcJMO=6_X@YyGnarQ\zQfwuh4e=Avlh>fuyLOGs:zBrPIX;@rdyBirPF5oN8ckUfCEVQG9b]P8xUk]9h1dTq@O:lS5Q\Btkh6a@kWmGS2HcqKgZ;O3wTBAt8]VpV?1FsvC`GsLNGr;\;yj3sCP^ax_rTLBGR=1XH5`hoSRr]5RkWXMz53EAUvmsDSrPitkZ[^"
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
572,53

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbSvr = 'Server';
cbAttr = '}ElementAttributes_' | cbSvr | ' Measure';

#--- Dimensions
#----------------------
dmMs = cbSvr | ' Measure';
dmCl = 'ECClient';
dmSvr = 'Server';
dmSW = 'Software';

#--- Other Variables
#----------------------------
sView = '}ec_hc_web_conf_clr';
nIdx = 0;
sName = '';

sMDX = '{TM1FILTERBYLEVEL( {TM1DRILLDOWNMEMBER( {[' | dmMs | '].[TM1Web_Config Settings]}, ALL, RECURSIVE )}, 0)}';
ViewDestroy (cbSvr, sView);
SubsetDestroy (dmCl, sView);
SubsetDestroy (dmSvr, sView);
SubsetDestroy (dmSW, sView);
SubsetDestroy (dmMs, sView);
SubsetCreateByMDX (sView, sMDX);
SubsetMDXSet (dmMs, sView, '');
SubsetCreate (dmCl, sView);
SubsetCreate (dmSvr, sView);
SubsetCreate (dmSW, sView);
SubsetElementInsert (dmCl, sView, psClient, 1);
SubsetElementInsert (dmSvr, sView, psServer, 1);
SubsetElementInsert (dmSW, sView, 'TM1Web', 1);

ViewCreate (cbSvr, sView);
ViewSubsetAssign (cbSvr, sView, dmCl, sView);
ViewSubsetAssign (cbSvr, sView, dmSvr, sView);
ViewSubsetAssign (cbSvr, sView, dmSW, sView);
ViewSubsetAssign (cbSvr, sView, dmMs, sView);

ViewZeroOut (cbSvr, sView);

If (SubSt (psSrcFolder, Long (psSrcFolder), 1) @<> '\');
      psSrcFolder = psSrcFolder | '\';
EndIf;

DatasourceNameForServer = psSrcFolder | 'ca_web_conf.txt';


#processquit;
573,11

#****Begin: Generated Statements***
#****End: Generated Statements****

If (DimIx (dmMs, vsParam) = 0);
      DimensionElementInsert (dmMs, 'TM1Web_Config Settings', vsParam, 'N');
      DimensionElementComponentAdd (dmMs, 'TM1Web_Config Settings', vsParam, 1.0000);
EndIf;



574,10

#****Begin: Generated Statements***
#****End: Generated Statements****

asciioutput ('val.txt', vsValue, cbSvr, psClient, psServer, 'TM1Web', vsParam, 'sValue');

If (CellGetS (cbAttr, vsParam, 'Default') @<> vsValue);
      CellPutS (vsValue, cbSvr, psClient, psServer, 'TM1Web', vsParam, 'sValue');
EndIf;

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
