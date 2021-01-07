601,100
602,"sys_Build Subset"
562,"NULL"
586,
585,
564,
565,"rS07zE^yc1Jvy?g?@maalmLd\Z`@UPWp\e4be]D>NeB3i\aa6@G^w0eXg;\:4[6xBus[lTyx;lfdD95ZphQ46XY3M^Gi5vKqtaiPCT>;ZMBXw]VV:NN=?eA5vDqFYOBXvCQt8p<t30?b]p5tq@Y_Pq8]6p[CR4A@1tvh5Wv9KJtfN>O;Fm8pM1sk3u1PUwxJ45nc9Eov"
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
560,1
psSubName
561,1
2
590,1
psSubName,""
637,1
psSubName,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,10

#****Begin: Generated Statements***
#****End: Generated Statements****

dmSvr = 'Server';
SubSetDestroy (dmSvr, psSubName);
sMDX = '{TM1FILTERBYLEVEL({TM1DRILLDOWNMEMBER({[' | dmSvr | '].[' |  psSubName | ']} , ALL, RECURSIVE)}, 0)}';
SubsetCreateByMDX (psSubName, sMDX);
SubsetMDXSet (dmSvr, psSubName, '');

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
