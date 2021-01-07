601,100
602,"sys_Build Structures"
562,"VIEW"
586,"Architecture"
585,"Architecture"
564,
565,"i?1OZqg0iateMz0SMfJR`mZtqecb?Mne<_F_UzEpx\[v1@?F1\MZO]md`fqyfmG\x>5dcg@i`cGkJ0M7g]bpARSRJb3Hl=tPVsOFTSU38A?0Wj2o1ZaE@nZoBRjblj=F;wy9fRMzQ@ToO:qQVbS8Cuu8[[glFdWW2EV?Ei0hVyM::h?Mk>4BgSdv1dDf\9ql;tw=jabb"
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
589,
568,""""
570,mal
571,
569,0
592,0
599,1000
560,1
psClient
561,1
2
590,1
psClient,"abcde"
637,1
psClient,""
577,7
vsClient
vsSW
vsMeas
Value
NVALUE
SVALUE
VALUE_IS_STRING
578,7
2
2
2
2
1
2
1
579,7
1
2
3
4
0
0
0
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
582,4
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,76

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbArch = 'Architecture';

#--- Dimensions 
#----------------------
dmClt = 'ECClient';
dmMs = 'Architecture Measure';
dmSW = 'Software';
dmSvr = 'Server';
dmDB = 'Database';

#--- Other Variables
#----------------------------
sAllClt = 'All ECClients';
sAllSvr = 'All Servers';
sView = '}sbs_src';
sSubProc = 'sys_Build Subset';

#--- Build View and Subsets
#-----------------------------------------
If (ViewExists (cbArch, sView) = 0);
      ViewCreate (cbArch, sView);
EndIf;

If (SubsetExists (dmClt, sView) <> 0);
      SubsetDeleteAllElements (dmClt, sView);
Else;
      SubsetCreate (dmClt, sView);
EndIf;

If (SubsetExists (dmSW, sView) <> 0);
      SubsetDeleteAllElements (dmSW, sView);
Else;
      SubsetCreate (dmSW, sView);
EndIf;

nIdx = 1;
nCount = DimSiz (dmSW);

While (nIdx <= nCount);
      sEl = DimNm (dmSW, nIdx);

      If (DType (dmSW, sEl) @= 'N');
            SubSetElementInsert (dmSW, sView, sEl, 1);
      EndIf;

      nIdx = nIdx + 1;
End;

SubsetElementInsert (dmClt, sView, psClient, 1);

If (SubsetExists (dmMs, sView) <> 0);
      SubsetDeleteAllElements (dmMs, sView);
Else;
      SubsetCreate (dmMs, sView);
EndIf;

SubsetElementInsert (dmMs, sView, 'ServerName', 1);

ViewSubsetAssign (cbArch, sView, dmClt, sView);
ViewSubsetAssign (cbArch, sView, dmMs, sView);
ViewSubsetAssign (cbArch, sView, dmSW, sView);

DimensionSortOrder (dmSvr, 'ByInput', 'Ascending', 'ByHierarchy', 'Ascending');

asciioutput ('server.txt', dmSvr, sAllSvr,  psClient, 'C');
DimensionElementInsert (dmSvr, sAllSvr,  psClient, 'C');
DimensionElementComponentAdd (dmSvr, sAllSvr,  psClient, 1.0000);

DatasourceCubeView = sView;

573,17

#****Begin: Generated Statements***
#****End: Generated Statements****

If (vsMeas @= 'ServerName' & DimIx (dmSvr, Value) = 0);
      DimensionElementInsert (dmSvr, psClient, Value, 'N');
      DimensionElementComponentAdd (dmSvr, psClient, Value,1.0000);
EndIf;

If (vsMeas @= 'ServerName' & DimIx (dmDB, Value) = 0);
      DimensionElementInsert (dmDB, 'All Databases', Value, 'C');
      DimensionElementComponentAdd (dmDB, 'All Databases', Value,1.0000);
EndIf;




574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,7

#****Begin: Generated Statements***
#****End: Generated Statements****

ExecuteProcess (sSubProc,
                           'psSubName', psClient);

576,CubeAction=1511DataAction=1503CubeLogChanges=0
930,0
638,1
804,0
1217,1
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
