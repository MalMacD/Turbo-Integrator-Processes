601,100
602,"sys_HC_Get Chore Details"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Data\sys_Extract HC Data.cho"
585,"C:\TM1\Health Check\Data\sys_Extract HC Data.cho"
564,
565,"o[l0v`Y5AzRYn\[ao^ZzXOUh3CFk6TVF3xZEmOD=N1TKHpeKFHh3uXw^vJU=`5Y^yaNEYnI1XPJ3x6?WuW]v2NIp6@e[eNT_JUI<[rom[C8syy[`3<CdWZcs\d_enT_Hqtt8c[k:_i36]P[MA02;yf<xhcDIQozg0g\7]oE37H_`s<95XfS[uVIq]QS<l?xzV_]qsK]_"
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
560,3
psDBDir
psChore
pnUTCDiff
561,3
2
2
1
590,3
psDBDir,"c:\tm1\health check\data"
psChore,"sys_Extract HC Data"
pnUTCDiff,0
637,3
psDBDir,""
psChore,""
pnUTCDiff,""
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
582,3
VarType=32ColType=827
VarType=32ColType=827
IgnoredInputVarName=V3VarType=32ColType=1165
603,0
572,17

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Other Variables
#----------------------------
sProcess = '';
nProcCount = 0;
sParams = '';
sFile = 'CA ' | psChore | '.txt';

If (SubSt (psDBDir, Long (psDBDir), 1) @<> '\');
      psDBDir = psDBDir | '\';
EndIf;

DatasourceNameForServer = psDBDir | psChore | '.cho';

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,40

#****Begin: Generated Statements***
#****End: Generated Statements****

If (vsCode @= '530');
      nTime = (Numbr (SubSt (vsValue, 9, 2))/24)+(Numbr (SubSt (vsValue, 11, 2))/24/60)+(Numbr (SubSt (vsValue, 13, 2))/24/60/60);
      nTime = ((Numbr (SubSt (vsValue, 9, 2)) + pnUTCDiff)/24)+(Numbr (SubSt (vsValue, 11, 2))/24/60)+(Numbr (SubSt (vsValue, 13, 2))/24/60/60);
      sAmPm = SubSt (Upper (TimSt (nTime, '\p')), 1, 1) | 'M';
      sTime = TimSt (nTime, '\H:\i:\s') | sAmPm;
      AsciiOutput (sFile, 'Chore Initial', sTime);
#      AsciiOutput ('time.txt', 'Chore Initial', sTime, str (nTime, 20,10), TimSt (.2593981481, '\H:\i:\s') | sAmPm, TimSt (nTime2, '\H:\i:\s'), str (nTime2, 20,10));
EndIf;

If (vsCode @= '531');
      sDays = SubSt (vsValue, 1, 3);
      sHours = SubSt (vsValue, 4, 2);
      sMins = SubSt (vsValue, 6, 2);
      sSecs = SubSt (vsValue, 8, 2);
      AsciiOutput (sFile, 'Chore Interval', sDays | '/' | sHours | '/' | sMins | '/' | sSecs);
EndIf;

If (vsCode @= '533');
      AsciiOutput (sFile, 'Chore Activated', vsValue);
EndIf;

If (vsCode @= '6' % vsCode @= '1405');
      If (sProcess @<> '');
            nProcCount = nProcCount +1;
            sProcCount = Trim (Str (nProcCount, 2, 0));
            AsciiOutput (sFile, 'Process' | sProcCount, sProcess, SubSt (sParams, 2, Long (sParams) -1));
      EndIf;

      sProcess = vsValue;
      sParams = '';
EndIf;

If (vsValue @= '' & sProcess @<> '');
      sParams = sParams | ',' | vsCode;
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
