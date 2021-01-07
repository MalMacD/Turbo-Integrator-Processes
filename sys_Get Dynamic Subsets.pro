601,100
602,"sys_Get Dynamic Subsets"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Data\ECClient}subs\}mtic_src.sub"
585,"C:\TM1\Health Check\Data\ECClient}subs\}mtic_src.sub"
564,
565,"y\=\inT1@nE[eUUNsN15Z?rwKaoNZkxSpAzWVEod1zMakzPjKA[DoOPaFdeIwiB5qfManlf\S<FLf8ww\@bneZ89?`erhlXRx11_qBnOQkj0KBcLbclbEPVG:AFHyVx@;x6jQL@GTA847]=065i4]BBhDjDUDmyJ2tvdzyQYAnGXy1?t=2J=<LiiSbDU1Z^u4u0Nb0sP"
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
560,1
psSubset
561,1
2
590,1
psSubset,""
637,1
psSubset,""
577,3
vsCode
vsCode2
V3
578,3
2
2
2
579,3
1
2
3
580,3
0
0
0
581,3
0
0
0
582,3
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,8

#****Begin: Generated Statements***
#****End: Generated Statements****

StringGlobalVariable ('sDynamicSubs');

DatasourceNameForServer = psSubset;

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,12

#****Begin: Generated Statements***
#****End: Generated Statements****

nIdx = 0;

If (vsCode @= '275' & Trim (vsCode2) @<> '');
      nIdx = Scan ('}subs', psSubset);
      sSub = SubSt (psSubset, nIdx + 6, Long (psSubset) - nIdx - 9);
      sDynamicSubs = sDynamicSubs | ',' | sSub;
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
