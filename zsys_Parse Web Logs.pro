601,100
602,"zsys_Parse Web Logs"
562,"CHARACTERDELIMITED"
586,"C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\logs\tm1webx.log"
585,"C:\Program Files\ibm\cognos\tm1_64\webapps\tm1web\WEB-INF\logs\tm1webx.log"
564,
565,"n9\DnDw77=m44Ha5ozqo=33eRhw`G37nQRj:gQz;IBzO7[rnYaZ8:Uabpc1R3Z@=;Bq8OZ<K>rcODWIz>m?^XVKApsRa4JKAI`=AuMOYnA:@?hMEF;JTQ:KBsMa:<w:0J<GN[sqp?ii>;kIuKomSoL8PXDHaX:K<oFkbKA[JunO`H4t^FolUh<P2_?9_@F]W=<pRGi5B"
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
567,"]"
588,"."
589,","
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
577,4
vs1
vs2
vs3
vs4
578,4
2
2
2
2
579,4
1
2
3
4
580,4
0
0
0
0
581,4
0
0
0
0
582,4
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
603,0
572,6

#****Begin: Generated Statements***
#****End: Generated Statements****

sOld3 = '';

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,60

#****Begin: Generated Statements***
#****End: Generated Statements****

sDate = SubSt (vs1, 1, 10);
sTime = SubSt (vs1, 12, 12);

If (Scan ('heap memory usage', vs4) <> 0);
      nIdx = Scan (':', vs4) + 1;
      sMem = SubSt (vs4, nIdx, Long (vs4) -nIdx -2);
      nMem = Numbr (sMem);

      nIdx = Scan ('for', sOld3);

      If (nIdx = 0);
            nIdx = Scan ('from', sOld3);
      EndIf;

      sProcedure = SubSt (sOld3, 1, nIdx -2);
      sTemplate = Trim (SubSt (sOld3, nIdx +4, Long (sOld3) - nIdx - 3));

      nIdx = Scan ('username:', sOld3);

      If (nIdx <> 0);
            sUser = SubSt (sOld3, nIdx + 10, Long (sOld3) - nIdx - 10);
            nIdx2 = Scan (',', sTemplate);

            If (nIdx2 <> 0);
                  sTemplate = SubSt (sTemplate, 1, nIdx2 - 1);
            EndIf;
      Else;
            nIdx = Scan ('by user', sOld3);

            If (nIdx <> 0);
                  sUser = SubSt (sOld3, nIdx + 8, Long (sOld3) - nIdx - 8);
                  nIdx2 = Scan (',', sTemplate);

                  If (nIdx2 <> 0);
                        sTemplate = SubSt (sTemplate, 1, nIdx2 - 1);
                  EndIf;
            Else;
                  sUser = 'Unknown';
            EndIf;
      EndIf;

      If (SubSt (sTemplate, 1, 1) @= '[');
            sTemplate = SubSt (sTemplate, 2, Long (sTemplate) - 1);
      EndIf;

      AsciiOutput ('mem.txt', sDate);
      AsciiOutput ('mem.txt', sTime);
      AsciiOutput ('mem.txt', sUser);
      AsciiOutput ('mem.txt', sProcedure);
      AsciiOutput ('mem.txt', sTemplate);
      AsciiOutput ('mem.txt', NumberToString (nMem));
EndIf;



sOld3 = Trim (vs3 | vs4);
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
