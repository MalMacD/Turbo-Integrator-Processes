601,100
602,"sys_HC_Map TI to Chore"
562,"VIEW"
586,"Object"
585,"Object"
564,
565,"uD6_6uh:KMbXOFVe\X^xGaLaQG=pW[nkenxRqOQ]qIYzo@gfBQtEkMWWfpDw6wziTrfEkI;=RCv:E9ydBht7ieJ`XG<hAslM9Gu2S^fOlt^`CYMa5vZbI>_PPP0`CG1\K<m<R2NJ;NPwN?>wNXaSCncinv<U<DTlzmp>R]lhBNFrX]auqyKR947Hb]I^Ia;ZqYI5EFEs"
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
570,}mtic_src
571,
569,0
592,0
599,1000
560,3
psClient
psServer
psDatabase
561,3
2
2
2
590,3
psClient,"malcolm"
psServer,"caddis"
psDatabase,"Health_Check"
637,3
psClient,""
psServer,""
psDatabase,""
577,10
vsCli
vsSvr
vsDB
vsType
vsIdx
vsMeas
Value
NVALUE
SVALUE
VALUE_IS_STRING
578,10
2
2
2
2
2
2
2
1
2
1
579,10
1
2
3
4
5
6
7
0
0
0
580,10
0
0
0
0
0
0
0
0
0
0
581,10
0
0
0
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
572,69

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbObj = 'Object';

#--- Dimensions
#----------------------
dmType = 'Object Type';
dmCli = 'ECClient';
dmSrv = 'Server';
dmDB = 'Database';
dmIdx = 'Index';

#--- Other Variables
#----------------------------
sView = '}mtic_src';

If (ViewExists (cbObj, sView) = 0);
      ViewCreate (cbObj, sView);
EndIf;

If (SubsetExists (dmType, sView) = 0);
      SubsetCreate (dmType, sView);
Else;
      SubsetDeleteAllElements (dmType, sView);
EndIf;

SubsetElementInsert (dmType, sView, 'Process', 1);

If (SubsetExists (dmCli, sView) = 0);
      SubsetCreate (dmCli, sView);
Else;
      SubsetDeleteAllElements (dmCli, sView);
EndIf;

SubsetElementInsert (dmCli, sView, psClient, 1);

If (SubsetExists (dmSrv, sView) = 0);
      SubsetCreate (dmSrv, sView);
Else;
      SubsetDeleteAllElements (dmSrv, sView);
EndIf;

SubsetElementInsert (dmSrv, sView, psServer, 1);

If (SubsetExists (dmDB, sView) = 0);
      SubsetCreate (dmDB, sView);
Else;
      SubsetDeleteAllElements (dmDB, sView);
EndIf;

SubsetElementInsert (dmDB, sView, psDatabase, 1);

ViewSubsetAssign (cbObj, sView, dmType, sView);
ViewSubsetAssign (cbObj, sView, dmCli, sView);
ViewSubsetAssign (cbObj, sView, dmSrv, sView);
ViewSubsetAssign (cbObj, sView, dmDB, sView);

ViewExtractSkipZeroesSet (cbObj, sView, 1);
ViewExtractSkipCalcsSet (cbObj, sView, 1);

DatasourceCubeView = sView;
DatasourceNameForServer = cbObj;



573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,43

#****Begin: Generated Statements***
#****End: Generated Statements****

nIdx = 1;
sChores = '';

#--- Loop through Indexes looking for Chores
#--------------------------------------------------------------------
While (nIdx < DimSiz (dmIdx));
      #--- Build the index string
      #------------------------------------
      sIdx = '00' | Trim (Str (nIdx, 3, 0));
      sIdx = SubSt (sIdx, Long (sIdx) -2, 3);

      nIdx2 = 1;

      #--- Loop through Process1 to Process6
      #-------------------------------------------------------------
      While (nIdx2 <= 12);
            sProc = 'Process' | Trim (Str (nIdx2, 2, 0));
            sProcs = CellGetS (cbObj, vsCli, vsSvr, vsDB, 'Chore', sIdx, sProc);

            If (Scan (Value, sProcs) <> 0);
                  sCh = CellGetS (cbObj, vsCli, vsSvr, vsDB, 'Chore', sIdx, 'Name');

                  If (Scan (sCh, sChores) = 0);
                        sChores = sChores | ',' | sCh;
                  EndIf;
            EndIf;

            nIdx2 = nIdx2 +1;
      End;

      If (Long (sChores) > 1);
            CellPutS (SubSt (sChores, 2, Long (sChores) -1), cbObj, vsCli, vsSvr, vsDB, 'Process', vsIdx, 'Chores');
      EndIf;

      nIdx = nIdx +1;
End;



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
