601,100
602,"sis_HC_Get Data Years"
562,"NULL"
586,
585,
564,
565,"e1pFFa_:hGAv`naL=1SrKqauydwDb:I[GHfdAs<Br>TzsN2ueIsM57LCeOHBeHzZ5`Ci[MOWks_5C@ecDsEY54EEL=>\wQ94>KKRob[;BalRTXlD]R]ja`g<hH>inFk0Z^Kd==`0c@fMoD2M0^SzfGRoxE<uYhJ<nnt`m^t9ABUV_Tyy=`y?]1Sje6xgOogqRE[Q5bUp"
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
psCube
561,1
2
590,1
psCube,""
637,1
psCube,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,178

#****Begin: Generated Statements***
#****End: Generated Statements****

StringGlobalVariable ('sFirstYear');
StringGlobalVariable ('sLastYear');
StringGlobalVariable ('sTopEl');

nIdx = 1;
sDim = TabDim (psCube, nIdx);
nYrDm = '';
nYrIdx = 0;
sFirstYear = '';
sLastYear = '';

While (sDim @<> '');
      sTopEl = '';

      If (DimIx (sDim, 'All Years') + DimIx (sDim, '2017-2018') + DimIx (sDim, '2017/2018') + DimIx (sDim, '2017-18') + DimIx (sDim, '2017/18') <> 0);
            sYrDim = sDim;
            nYrIdx = nIdx;
      EndIf;

      ExecuteProcess (sTopProc,
                                 'psDim', sDim);
      sEl = sTopEl;

      If (nIdx = 1);
            sEl1 = sEl;
      ElseIf (nIdx = 2);
            sEl2 = sEl;
      ElseIf (nIdx = 2);
            sEl3 = sEl;
      ElseIf (nIdx = 2);
            sEl4 = sEl;
      ElseIf (nIdx = 2);
            sEl5 = sEl;
      ElseIf (nIdx = 2);
            sEl6 = sEl;
      ElseIf (nIdx = 2);
            sEl7 = sEl;
      ElseIf (nIdx = 2);
            sEl8 = sEl;
      ElseIf (nIdx = 2);
            sEl9 = sEl;
      ElseIf (nIdx = 2);
            sEl10 = sEl;
      ElseIf (nIdx = 2);
            sEl11 = sEl;
      ElseIf (nIdx = 2);
            sEl12 = sEl;
      ElseIf (nIdx = 2);
            sEl13 = sEl;
      ElseIf (nIdx = 2);
            sEl14 = sEl;
      ElseIf (nIdx = 2);
            sEl15 = sEl;
      EndIf;

      nIdx = nIdx +1;
      sDim = TabDim (psCube, nIdx);
End;

nDimCount = nIdx -1;


#--- Loop through the year dim
#---------------------------------------------
nIdx = 1;

While (nIdx <= DimSiz (sYrDim);
      sYr = DimNm (sYrDim, nIdx);

      If (nYrIdx = 1);
            sEl1 = sYr;
      ElseIf (nYrIdx = 2);
            sEl2 = sYr;
      ElseIf (nYrIdx = 2);
            sEl3 = sYr;
      ElseIf (nYrIdx = 2);
            sEl4 = sYr;
      ElseIf (nYrIdx = 2);
            sEl5 = sYr;
      ElseIf (nYrIdx = 2);
            sEl6 = sYr;
      ElseIf (nYrIdx = 2);
            sEl7 = sYr;
      ElseIf (nYrIdx = 2);
            sEl8 = sYr;
      ElseIf (nYrIdx = 2);
            sEl9 = sYr;
      ElseIf (nYrIdx = 2);
            sEl10 = sYr;
      ElseIf (nYrIdx = 2);
            sEl11 = sYr;
      ElseIf (nYrIdx = 2);
            sEl12 = sYr;
      ElseIf (nYrIdx = 2);
            sEl13 = sYr;
      ElseIf (nYrIdx = 2);
            sEl14 = sYr;
      ElseIf (nYrIdx = 2);
            sEl15 = sYr;
      EndIf;

      If (nDimCount = 2);
            If (sEl1 @<> '' & sEl2 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2);
            EndIf;
      ElseIf (nDimCount = 3);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3);
            EndIf;
      ElseIf (nDimCount = 4);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4);
            EndIf;
      ElseIf (nDimCount = 5);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5);
            EndIf;
      ElseIf (nDimCount = 6);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6);
            EndIf;
      ElseIf (nDimCount = 7);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7);
            EndIf;
      ElseIf (nDimCount = 8);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8);
            EndIf;
      ElseIf (nDimCount = 9);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9);
            EndIf;
      ElseIf (nDimCount = 10);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10);
            EndIf;
      ElseIf (nDimCount = 11);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '' & sEl11 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10, sEl11);
            EndIf;
      ElseIf (nDimCount = 12);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '' & sEl11 @<> '' & sEl12 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10, sEl11, sEl12);
            EndIf;
      ElseIf (nDimCount = 13);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '' & sEl11 @<> '' & sEl12 @<> '' & sEl13 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10, sEl11, sEl12, sEl13);
            EndIf;
      ElseIf (nDimCount = 14);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '' & sEl11 @<> '' & sEl12 @<> '' & sEl13 @<> '' & sEl14 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10, sEl11, sEl12, sEl13, sEl14);
            EndIf;
      ElseIf (nDimCount = 15);
            If (sEl1 @<> '' & sEl2 @<> '' & sEl3 @<> '' & sEl4 @<> '' & sEl5 @<> '' & sEl6 @<> '' & sEl7 @<> '' & sEl8 @<> '' & sEl9 @<> '' & sEl10 @<> '' & sEl11 @<> '' & sEl12 @<> '' & sEl13 @<> '' & sEl14 @<> '' & sEl15 @<> '');
                  nVal = CellGetN (psCube, sEl1, sEl2, sEl3, sEl4, sEl5, sEl6, sEl7, sEl8, sEl9, sEl10, sEl11, sEl12, sEl13, sEl14, sEl15);
            EndIf;
      EndIf;

      If (nVal <> 0);
            sLastYear = sYr;

            If (sFirstYear @= '';
                  sFirstYear = sYr;
            EndIf;
      EndIf;
      
      nIdx = nIdx +1;
End;

If (nDimCount = 2);



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
638,0
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
