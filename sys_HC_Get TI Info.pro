601,100
602,"sys_HC_Get TI Info"
562,"CHARACTERDELIMITED"
586,"C:\Excelerated\ActewAGL\ActewAGL_TM1\sys_Clear bud_salary Data - Individual Row.pro"
585,"C:\Excelerated\ActewAGL\ActewAGL_TM1\sys_Clear bud_salary Data - Individual Row.pro"
564,
565,"qXUh4cNblgN48m`kqal8Wb9mdxrRX6=COSV>G1qv2Sp0jIfHBs\;]IQ33EH__1^6=Kllg9T?>THl`TZL6aUqO_aI1G8`aMf6Bp8erH^n<WFQJ3XsFP6D`phHUk4hR9ueLjD0F[Aak7L5m<BUviUrrPGN6=p?CNgdFjmicYP^L9lv8jt[V;L6JtYsHvUrn?VqzG\f]X[Z"
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
psProcess
psDBDir
561,2
2
2
590,2
psProcess,""
psDBDir,""
637,2
psProcess,""
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
582,3
VarType=32ColType=827
IgnoredInputVarName=V2VarType=33ColType=1165
IgnoredInputVarName=V3VarType=32ColType=1165
603,0
572,18

#****Begin: Generated Statements***
#****End: Generated Statements****

StringGlobalVariable ('sSaveData');
StringGlobalVariable ('sSubDelete');
StringGlobalVariable ('sLogOff');
StringGlobalVariable ('sMDXUsed');

DatasourceNameForServer = psDBDir | psProcess | '.pro';

sSaveData = 'No';
sSubDelete = 'Yes';
sLogOff = 'No';
sMDXUsed = 'No';
sMetaData = 'No';
sSynchronised = 'No';

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,45

#****Begin: Generated Statements***
#****End: Generated Statements****

If (Upper (SubSt (Trim (vsV1), 1, 11)) @= 'SAVEDATAALL');
      sSaveData = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 13)) @= 'SUBSETDESTROY');
      sSubDelete = 'No';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 11)) @= 'VIEWDESTROY');
      sSubDelete = 'No';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 17)) @= 'CUBESETLOGCHANGES');
      sLogOff = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 17)) @= 'SUBSETCREATEBYMDX');
      sMDXUsed = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 22)) @= 'DIMENSIONELEMENTINSERT');
      sMetaData = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 28)) @= 'DIMENSIONELEMENTCOMPONENTADD');
      sMetaData = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 15)) @= 'DIMENSIONCREATE');
      sMetaData = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 26)) @= 'DIMENSIONDELETEALLELEMENTS');
      sMetaData = 'Yes';
EndIf;

If (Upper (SubSt (Trim (vsV1), 1, 12)) @= 'SYNCHRONIZED');
      sSynchronised = 'Yes';
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
