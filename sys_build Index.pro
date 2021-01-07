601,100
602,"sys_build Index"
562,"NULL"
586,
585,
564,
565,"z6wTz:g]wb>S]NMqg0gM:1o;^\a8pxR]3Hq<7b3CJ7GcJyb3AIYbQ52VFMwel6j:NieeX]a`zr8utK4v;[8]>77k4gu[QyJhcbgELKH9bCWvrK7v6QWj8lI?314rOjUSur[nJAvf<QyZdZvP1:YB6;JNLpx=P6LMUd37szl`5ZJgSe4gs;MnMDPLH8:?pXiCMM]yC5du"
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
570,
571,
569,0
592,0
599,1000
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,18

#****Begin: Generated Statements***
#****End: Generated Statements****

sDim = 'Index';
nIdx = 1;
sAll = 'All Indexes';
DimensionSortOrder (sDim, 'ByInput', 'Ascending', 'ByHierarchy', 'Ascending');

While (nIdx  <= 999);
      sIdx = '00' | Trim (Str (nIdx, 3, 0));
      sIdx = SubSt (sIdx, Long (sIdx) -2, 3);
      DimensionElementInsert (sDim, sAll, sIdx, 'N');
      DimensionElementComponentAdd (sDim, sAll, sIdx, 1.0000);
      nIdx = nIdx +1;
End;


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
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
