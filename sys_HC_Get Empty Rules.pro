601,100
602,"sys_HC_Get Empty Rules"
562,"CHARACTERDELIMITED"
586,"C:\Excelerated\ActewAGL\ActewAGL_TM1\ACTEW_bud_salary.RUX"
585,"C:\Excelerated\ActewAGL\ActewAGL_TM1\ACTEW_bud_salary.RUX"
564,
565,"fGQWF:a23iN@iH2cgypazhWbtgoRPrpECFHBNliOMlsRzl[u8HQUz;1LIPT5<p65=k19sZjRD[UYgZiVS:vCLsL_sCNSJtooUKm56a7@gBFn`6Qwqc8Cc?i6bLaEGN@E]BFWb`pZsW9ITh[AKT_]I4kC1@[S7vp`nK;Dn\0Jm0Dv<WJfy;oOzI0BK?c2\<4Sw>3xeGWl"
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
560,2
psCube
psDBDir
561,2
2
2
590,2
psCube,""
psDBDir,""
637,2
psCube,""
psDBDir,""
577,1
vsV1
578,1
2
579,1
1
580,1
0
581,1
0
582,9
VarType=32ColType=827
IgnoredInputVarName=V2VarType=32ColType=1165
IgnoredInputVarName=V3VarType=32ColType=1165
IgnoredInputVarName=V4VarType=32ColType=1165
IgnoredInputVarName=V5VarType=32ColType=1165
IgnoredInputVarName=V6VarType=32ColType=1165
IgnoredInputVarName=V7VarType=32ColType=1165
IgnoredInputVarName=V8VarType=32ColType=1165
IgnoredInputVarName=V9VarType=32ColType=1165
603,0
572,13

#****Begin: Generated Statements***
#****End: Generated Statements****

StringGlobalVariable ('sEmptyRules');
StringGlobalVariable ('sSkipcheck');
StringGlobalVariable ('sFeeders');
DatasourceNameForServer = psDBDir | psCube | '.rux';

sEmptyRules = 'T';
sSkipcheck = 'F';
sFeeders = 'F';

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,18

#****Begin: Generated Statements***
#****End: Generated Statements****

If (sEmptyRules @= 'T');
      If (SubSt (Trim (vsV1), 1, 1) @= '[');
            sEmptyRules = '';
      EndIf;
EndIf;

If (Upper (Trim (vsV1)) @= 'SKIPCHECK;');
      sSkipcheck = 'T';
EndIf;

If (Upper (Trim (vsV1)) @= 'FEEDERS;');
      sFeeders = 'T';
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
