601,100
602,"sys_Build Subsets"
562,"NULL"
586,
585,
564,
565,"h2v]H68Wa9pFmB>zX6fPs8^Uf7ya::IyLm=E`1ygMR[]zJ7q><3W[gnQNz=igwpW:@YvdW=UM^GY`n:NP;05soOGVO<?eIzfj6UE6Tb0F1RbJpVHh_>aGf1O@q90WRXfW[=SOZVTUAdO?Pnm>39;>cA0g5pR^p=KVcnh5;mgbq\3lBv4=0D^]NAaUF[9N9z5eFydfMYw"
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
572,29

#****Begin: Generated Statements***
#****End: Generated Statements****

dmDB = 'Database';
nIdx = 1;


While (nIdx <= DimSiz (dmDB));
      sEl = DimNm (dmDB, nIdx);

      If (ElLev (dmDB, sEl) = 1);
            If (SubsetExists (dmDB, sEl) = 1);
                  SubsetDeleteAllElements (dmDB, sEl);
            Else;
                  SubsetCreate (dmDB, sEl);
            EndIf;

            nIdx2 = 1;

            While (nIdx2 <= ElCompN (dmDB, sEl));
                  SubsetElementInsert (dmDB, sEl, ElComp (dmDB, sEl, nIdx2), nIdx2);
                  nIdx2 = nIdx2 +1;
            End;
      EndIf;

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
