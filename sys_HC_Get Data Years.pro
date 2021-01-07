601,100
602,"sys_HC_Get Data Years"
562,"NULL"
586,
585,
564,
565,"w`m:NtMviYPA=_;@>tm28tPa8QHPH1trITcdp9^2TS7Y:=MQU;bRpC38uKC62ghmddyeh9OGbT;Yap=;4^awji6CYEyux4Zzr0]KU;7DDW1>d7Mt`oJwR1D7W:]4RdL:mw>MrqcOFmOcIT]lUKVx::S13B:yvtr[OV]<Z=WtHSlCb1tLs[`PPapmc47LPsja\7<u]>zv"
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
572,194

#****Begin: Generated Statements***
#****End: Generated Statements****

sTopProc = 'sys_HC_Get Consolidation';
StringGlobalVariable ('sFirstYear');
StringGlobalVariable ('sLastYear');
StringGlobalVariable ('sTopEl');

nIdx = 1;
nYrDm = '';
nYrIdx = 0;
sFirstYear = '';
sLastYear = '';
sYr1 = '2017';
sYr2 = '2018';

sDim = TabDim (psCube, nIdx);

While (sDim @<> '');
      If (DimIx (sDim, 'All Years') + DimIx (sDim, sYr1 | '-' | sYr2) + DimIx (sDim, sYr1 | '/' | sYr2) + DimIx (sDim, sYr1 | '-' | SubSt (sYr2, 3, 2)) + DimIx (sDim, sYr1 | '/' | SubSt (sYr2, 3, 2)) <> 0);
            sYrDim = sDim;
            nYrIdx = nIdx;
      EndIf;

      nIdx = nIdx +1;
      sDim = TabDim (psCube, nIdx);
End;

nIdx = 1;

If (nYrIdx <> 0);
asciioutput (psCube | '_data.txt', pscube, sYrDim);
      sDim = TabDim (psCube, nIdx);

      While (sDim @<> '');
            sTopEl = '';

            ExecuteProcess (sTopProc,
                                       'psDim', sDim);
            sEl = sTopEl;

            If (nIdx = 1);
                  sEl1 = sEl;
            ElseIf (nIdx = 2);
                  sEl2 = sEl;
            ElseIf (nIdx = 3);
                  sEl3 = sEl;
            ElseIf (nIdx = 4);
                  sEl4 = sEl;
            ElseIf (nIdx = 5);
                  sEl5 = sEl;
            ElseIf (nIdx = 6);
                  sEl6 = sEl;
            ElseIf (nIdx = 7);
                  sEl7 = sEl;
            ElseIf (nIdx = 8);
                  sEl8 = sEl;
            ElseIf (nIdx = 9);
                  sEl9 = sEl;
            ElseIf (nIdx = 10);
                  sEl10 = sEl;
            ElseIf (nIdx = 11);
                  sEl11 = sEl;
            ElseIf (nIdx = 12);
                  sEl12 = sEl;
            ElseIf (nIdx = 13);
                  sEl13 = sEl;
            ElseIf (nIdx = 14);
                  sEl14 = sEl;
            ElseIf (nIdx = 15);
                  sEl15 = sEl;
            EndIf;

            nIdx = nIdx +1;
            sDim = TabDim (psCube, nIdx);
      End;

      nDimCount = nIdx -1;

      #--- Loop through the year dim
      #---------------------------------------------
      nIdx = 1;

      While (nIdx <= DimSiz (sYrDim));
            sYr = DimNm (sYrDim, nIdx);

            If (SubSt (sYr, 1, 2) @= '20' & DType (sYrDim, sYr) @= 'N');
                  If (nYrIdx = 1);
                        sEl1 = sYr;
                  ElseIf (nYrIdx = 2);
                        sEl2 = sYr;
                  ElseIf (nYrIdx = 3);
                        sEl3 = sYr;
                  ElseIf (nYrIdx = 4);
                        sEl4 = sYr;
                  ElseIf (nYrIdx = 5);
                        sEl5 = sYr;
                  ElseIf (nYrIdx = 6);
                        sEl6 = sYr;
                  ElseIf (nYrIdx = 7);
                        sEl7 = sYr;
                  ElseIf (nYrIdx = 8);
                        sEl8 = sYr;
                  ElseIf (nYrIdx = 9);
                        sEl9 = sYr;
                  ElseIf (nYrIdx = 10);
                        sEl10 = sYr;
                  ElseIf (nYrIdx = 11);
                        sEl11 = sYr;
                  ElseIf (nYrIdx = 12);
                        sEl12 = sYr;
                  ElseIf (nYrIdx = 13);
                        sEl13 = sYr;
                  ElseIf (nYrIdx = 14);
                        sEl14 = sYr;
                  ElseIf (nYrIdx = 15);
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

                        If (sFirstYear @= '');
                              sFirstYear = sYr;
                        EndIf;
                  EndIf;
            EndIf;
      
            nIdx = nIdx +1;
      End;
EndIf;




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
