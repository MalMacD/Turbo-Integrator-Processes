601,100
602,"sys_HC_Get Consolidation"
562,"NULL"
586,
585,
564,
565,"ocgpm9YQPlv3AdgahqtA_;\mPqRDX=acfsrgU7L4jh7ORK7rQ7p5?bGK=sUnJcVLKzh1[z_WTw39mVf0E5v\P`eyXorMz3UogKpybvqt8URt]=^_Bod`OWZvS><nS=@dPxPuU<9:KyuL9TIBFEWG0==ZPC><MjYp;49mqm[I8m<<sfJD;SdBymy2S<Zku[bXAD<<uc:I"
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
psDim
561,1
2
590,1
psDim,"Software"
637,1
psDim,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,25

#****Begin: Generated Statements***
#****End: Generated Statements****

StringGlobalVariable ('sTopEl');
nIdx = 1;
nSize = DimSiz (psDim);
nMax = 0;
sMax = '';

While (nIdx <= nSize);
      sEl = DimNm (psDim, nIdx);
      nLvl = ElLev (psDim, sEl);

      If (nLvl > nMax);
            nMax = nLvl;
            sMax = sEl;
      EndIf;

      nIdx = nIdx +1;
End;

sTopEl = sMax;


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
