601,100
602,"sys_HC_Get Details"
562,"NULL"
586,"C:\Excelerated\APSC_BMS\tm1s.cfg"
585,"C:\Excelerated\APSC_BMS\tm1s.cfg"
564,
565,"svx^4N@dYMusE9229IvaSj\3s_oyDeVNVyUr<QK^?gB6S_fx0iwKkMdHvwhw80QFyf1t4^<gv5[]H2m^KDp][=ma_Tq^g_=fcJd;qbRy78E00_^pHvZquUp_q7tzk;mug68izQuOFV2miCZbtRwwnJSIsYa?c0P[4bkRG9Dhn6yv[KFatgniZbEwN01n7qeFmS:w<w>B"
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
560,3
psConfigDir
psWebConfigDir
psDBDir
561,3
2
2
2
590,3
psConfigDir,"c:\tm1\health check\"
psWebConfigDir,"C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\Configuration"
psDBDir,"C:\TM1\Health Check\Data"
637,3
psConfigDir,""
psWebConfigDir,""
psDBDir,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,255

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#--------------
cbCube = '}Cubes';
cbCP = '}CubeProperties';
cbDim = '}Dimensions';
cbDP = '}DimensionProperties';
cbStat = '}StatsByCube';

#--- Dimensions
#----------------------
dmCube = '}Cubes';
dmDim = '}Dimensions';
dmApp = '}ApplicationEntries';
dmProc = '}Processes';
dmCho = '}Chores';
dmPar = 'Database Measure';

#--- Other Variables
#----------------------------
sOutFile = 'CA.txt';
sConfigFile = 'CA_conf.txt';
sConfProc = 'sys_HC_Get Conf Details';
sWebConfProc = 'sys_HC_Get WebConfig Details';
sChoreProc = 'sys_HC_Get Chore Details';
sYearProc = 'sys_HC_Get Data Years';
sSubProc = 'sys_HC_Get Dynamic Subsets';
sEmptyProc = 'sys_HC_Get Empty Rules';
sTIProc = 'sys_HC_Get TI Info';
DatasourceAsciiDelimiter = ',';
StringGlobalVariable ('sFirstYear');
StringGlobalVariable ('sLastYear');
sUTCProc = 'sys_HC_Get UTC Time Difference';
NumericGlobalVariable ('nUTCDiff');
StringGlobalVariable ('sDynamicSubs');
StringGlobalVariable ('sEmptyRules');
StringGlobalVariable ('sSkipcheck');
StringGlobalVariable ('sFeeders');
StringGlobalVariable ('sSaveData');
StringGlobalVariable ('sSubDelete');
StringGlobalVariable ('sLogOff');
StringGlobalVariable ('sMDXUsed');
StringGlobalVariable ('sMetaData');
StringGlobalVariable ('sSynchronised');

ExecuteProcess (sUTCProc);

If (SubSt (psWebConfigDir, Long (psWebConfigDir), 1) @<> '\');
      psWebConfigDir = psWebConfigDir | '\';
EndIf;

If (SubSt (psConfigDir, Long (psConfigDir), 1) @<> '\');
      psConfigDir = psConfigDir | '\';
EndIf;

sConfig = psConfigDir | 'tm1s.cfg';

If (SubSt (psDBDir, Long (psDBDir), 1) @<> '\');
      psDBDir = psDBDir | '\';
EndIf;

#--- Get Cube Details
#------------------------------
nIdx = 1;

While (nIdx <=  DimSiz (dmCube));
      sCube = DimNm (dmCube, nIdx);
      sLog = CellGetS (cbCP, sCube, 'LOGGING');
      sVMM = CellGetS (cbCP, sCube, 'VMM');
      sVMT = CellGetS (cbCP, sCube, 'VMT');
      sSize = Trim (Str (CellGetN (cbStat, 'Total Memory Used', sCube, 'LATEST') / 1024, 16, 0));
      sInputSize = Trim (Str (CellGetN (cbStat, 'Memory Used for Input Data', sCube, 'LATEST') / 1024, 16, 0));
      sFeeders = Trim (Str (CellGetN (cbStat, 'Memory Used for Feeders', sCube, 'LATEST') / 1024, 16, 0));
      nDCIdx = 1;
      sDim = TabDim (sCube, nDCIdx+1);

      While (sDim @<> '');
            nDCIdx = nDCIdx +1;
            sDim = TabDim (sCube, nDCIdx+1);
      End;

      sMSDim = TabDim (sCube, nDCIdx);
      sMsEl = DimNm (sMsDim, DimSiz (sMsDim));
      sMsType = DType (sMsDim, sMsEl);

      If (sMsType @= 'N');
            sMsDim = '';
      EndIf;

      If (SubSt (sCube, 1, 1) @<> '}');
            ExecuteProcess (sYearProc,
                                       'psCube', sCube);
      EndIf;

      sDimCount = Trim (Str (nDCIdx, 2, 0));
#      AsciiOutput ('HC.txt', 'C', sCube, sLog, sVMM, sVMT, sDimCount);
      AsciiOutput (sOutFile, 'Cube', sCube,  'Logging', sLog);
      AsciiOutput (sOutFile, 'Cube', sCube, 'VMM', sVMM);
      AsciiOutput (sOutFile, 'Cube', sCube, 'VMT', sVMT);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Dimension Count', sDimCount);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Measure Dim', sMsDim);
      AsciiOutput (sOutFile, 'Cube', sCube, '1st Year of Data', sFirstYear);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Last Year of Data', sLastYear);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Size', sSize);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Input Size', sInputSize);
      AsciiOutput (sOutFile, 'Cube', sCube, 'Feeder Size', sFeeders);

      If (ViewExists (sCube, 'Default') <> 0);
            AsciiOutput (sOutFile, 'Cube', sCube, 'Default View', 'Y');
      Else;
            AsciiOutput (sOutFile, 'Cube', sCube, 'Default View', 'N');
      Endif;

      If (FileExists (sCube | '.xru') <> 0);
            AsciiOutput (sOutFile, 'Cube', sCube, 'Has XRU', 'T');
      EndIf;

      If (FileExists (sCube | '.rux') <> 0);
            AsciiOutput (sOutFile, 'Cube', sCube, 'Has Rules', 'T');

            ExecuteProcess (sEmptyProc,
                                       'psCube', sCube,
                                       'psDBDir', psDBDir);

            If (sEmptyRules @<> '');
                  AsciiOutput (sOutFile, 'Cube', sCube, 'Empty Rules', 'T');
            EndIf;

            AsciiOutput (sOutFile, 'Cube', sCube, 'Skipcheck', sSkipcheck);
            AsciiOutput  (sOutFile, 'Cube', sCube, 'Feeders', sFeeders);
      EndIf;

      nIdx = nIdx +1;
End;

#--- Get Dimension Details
#---------------------------------------
nIdx = 1;

While (nIdx <=  DimSiz (dmDim));
      sDim = DimNm (dmDim, nIdx);
      nSize = DimSiz (sDim);
      nCIdx = 1;
      nCount = 0;

      While (nCIdx <= DimSiz (dmCube));
            nDCIdx = 1;
            sCube = DimNm (dmCube, nCIdx);
            sDim2 = TabDim (sCube, nDCIdx);

            While (sDim2 @<> '');
                  If (sDim2 @= sDim);
                        nCount = nCount +1;
                  EndIf;

                  nDCIdx = nDCIdx +1;
                  sDim2 = TabDim (sCube, nDCIdx);
            End;

            nCIdx = nCIdx +1;
      End;

      sDimCount = Trim (Str (nDCIdx, 2, 0));
      AsciiOutput (sOutFile, 'Dimension', sDim, 'Members', Trim (Str (nSize,12,0)));
      AsciiOutput (sOutFile, 'Dimension', sDim, 'Used in Cubes', Trim (Str (nCount,3,0)));

      #--- Loop through potential subsets
      #-----------------------------------------------------
      sSubFolder = psDBDir | sDim | '}subs\';
      sDynamicSubs = '';

      sSubFile = WildcardFileSearch (sSubFolder | '*.sub', '');

      While (sSubFile @<> '');
            If (Upper (sSubFile) @= 'DEFAULT.SUB');
                  AsciiOutput (sOutFile, 'Dimension', sDim, 'Default Subset', 'Y');
            EndIf;

            ExecuteProcess (sSubProc,
                                       'psSubset', sSubFolder | sSubFile);

            sSubFile = WildcardFileSearch (sSubFolder | '*.sub', sSubFile);
      End;

      If (Long (sDynamicSubs) > 1);
            sDynamicSubs = SubSt (sDynamicSubs, 2, Long (sDynamicSubs) -1);
            AsciiOutput (sOutFile, 'Dimension', sDim, 'Public Dynamic Subsets', sDynamicSubs);
      EndIf;

      If (FileExists (sDim | '.xdi') <> 0);
            AsciiOutput (sOutFile, 'Dimension', sDim, 'Has XDI', 'T');
      EndIf;

      nIdx = nIdx +1;
End;

#--- Get Application Details
#----------------------------------------
nIdx = 1;

While (nIdx <= DimSiz (dmApp));
      sApp = DimNm (dmApp, nIdx);

      If (DType (dmApp, sApp) @= 'N');
            AsciiOutput (sOutFile, 'Application', sApp, '');
      EndIf;

      nIdx = nIdx +1;
End;

#--- Get Process Details
#-----------------------------------
nIdx = 1;

While (nIdx <= DimSiz (dmProc));
      sProc = DimNm (dmProc, nIdx);
      AsciiOutput (sOutFile, 'Process', sProc, '');

      ExecuteProcess (sTIProc,
                                 'psProcess', sProc,
                                 'psDBDir', psDBDir);

      AsciiOutput (sOutFile, 'Process', sProc, 'SaveDataAll', sSaveData);
      AsciiOutput (sOutFile, 'Process', sProc, 'Views/Subsets Recreated', sSubDelete);
      AsciiOutput (sOutFile, 'Process', sProc, 'Logging Off', sLogOff);
      AsciiOutput (sOutFile, 'Process', sProc, 'SubsetCreateByMDX', sMDXUsed);
      AsciiOutput (sOutFile, 'Process', sProc, 'Updates Metadata', sMetaData);
      AsciiOutput (sOutFile, 'Process', sProc, 'Synchronised', sSynchronised);

      nIdx = nIdx +1;
End;

#--- Get Chore Details
#---------------------------------
nIdx = 1;

While (nIdx <= DimSiz (dmCho));
      sChore = DimNm (dmCho, nIdx);
      AsciiOutput (sOutFile, 'Chore', sChore, '');

      ExecuteProcess (sChoreProc,
                           'psDBDir', psDBDir,
                           'psChore', sChore,
                           'pnUTCDiff', nUTCDiff);

      nIdx = nIdx +1;
End;

DataSourceNameForServer = sConfig;
DataSourceNameForClient = sConfig;


573,5

#****Begin: Generated Statements***
#****End: Generated Statements****


574,4

#****Begin: Generated Statements***
#****End: Generated Statements****

575,11

#****Begin: Generated Statements***
#****End: Generated Statements****

ExecuteProcess (sConfProc,
                           'psConfigDir', psConfigDir);

ExecuteProcess (sWebConfProc,
                           'psConfigDir', psWebConfigDir);


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
