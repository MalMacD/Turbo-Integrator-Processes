601,100
602,"sys_Add New Element"
562,"NULL"
586,
585,
564,
565,"uHkT4vN26o9d53j\B[Ie[aIDAdh^tUL>26IzoaBoQ:fGUK<rUaszIpPa>ZxQGzeEm?JbE_`OiroOF3htbErwsN\ir=F=7Jn:PzML@pJRCFMt:^aBq7JXMR<^6dP6Zhne_97yJy1jGIB>`y3pm:omaO\mArd;L3MmkDSYk:Dvnu]\SPvIYJf4x\6kgC;GFLDF6b0yFk>i"
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
psElement
psParent
psDim
561,3
2
2
2
590,3
psElement,""
psParent,""
psDim,""
637,3
psElement,""
psParent,""
psDim,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,16

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Written by MJM
#-----------------------------

sProc = 'sys_Build Subsets';

If (DimIx (psDim, psParent) = 0);
      DimensionElementInsert (psDim, psParent, psElement, 'N');
EndIf;

DimensionElementInsert (psDim, psParent, psElement, 'N');
DimensionElementComponentAdd (psDim, psParent, psElement, 1.0000);

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,6

#****Begin: Generated Statements***
#****End: Generated Statements****

ExecuteProcess (sProc);

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
