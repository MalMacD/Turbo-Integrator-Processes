601,100
602,"sys_Get Usage from Pulse"
562,"ODBC"
586,"Pulse Docs2"
585,"Pulse Docs2"
564,"reader"
565,"rS07zE^yc1Jvy?g?@mzalmLd\Z`@UPW`Qe4be]D>NeB3ilda6@G^w0eXg;`14[6vBuskcTyx;l6`Di3ZphQ46XY3M^7d5vKqtai`CT>;ZMBXw]f43NN=?eA5vDqFi6AXv3P$=p<t30?2Tp5dr@Y/]q8]6p[CR4A@1t6b5W&=KJtf>8O;Fm8pM!}k3u1PU7x:35nc9EovrS07zE^yc1Jvy?g?@mlalmLd\Z`@UPWp\e4be]D>NeB3ilea6@G^w0eXg;\:4[6wBus;eTyx;lfdD95ZphQ46XY3M^7b5vKqtaiPCT>;ZMBXw]6`4NN=?eA5vDqFYOBXvCQd3p<t30?b]p5tq@Y_Pq8]6p[CR4A@1tfb5Wv9KJtfn3O;Fm8pM1sk3u1PU7u:35nc9Eov"
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
566,2
select distinct username from session where servicename='health_check' and
 (logouttime > getdate() - ?psDays? or logintime > getdate() - ?psDays?)
567,","
588,"."
589,
568,""""
570,mal
571,
569,0
592,0
599,1000
560,2
psDays
psMeasure
561,2
2
2
590,2
psDays,"30"
psMeasure,""
637,2
psDays,""
psMeasure,""
577,1
vsUser
578,1
2
579,1
1
580,1
0
581,1
0
582,1
VarType=32ColType=827
603,0
572,17

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Cubes
#---------------
cbUsers = 'tm1_Usage';

#--- Dimensions
#-----------------------
dmMeas = cbUsers | ' Measure';

#--- Other Variables
#-----------------------------
sAllPd = 'All Periods';


573,4

#****Begin: Generated Statements***
#****End: Generated Statements****

574,8

#****Begin: Generated Statements***
#****End: Generated Statements****

If (CellGetN (cbUsers, vsUser, sAllPd) = 0);
      CellPutN (1, cbUsers, vsUser, psMeasure);
EndIf;

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
