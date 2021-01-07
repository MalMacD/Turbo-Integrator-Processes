601,100
602,"sys_HC_Get UTC Time Difference"
562,"CHARACTERDELIMITED"
586,"C:\TM1\Health Check\Logs\utc_time.txt"
585,"C:\TM1\Health Check\Logs\utc_time.txt"
564,
565,"t`K>t]znEy5\z_:Z[U1daRbe@t0y4i8GTr]D;3=WT1Z]i\@ayqUJj]aPUIZCf2>e<0Vz3[WOe9fytd6dkEd`ub?9EPLag0fCW8tPt3Uz4v3hYJ\lf7zQ0hHXa[jk\ES6A_Af;gZw3Pe8i>tjoxkgrEhHHG@ov=sKdkc@mbN5@=4vr;9l44Ea90Cx\10HQgv1[D4b\k\K"
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
560,0
561,0
590,0
637,0
577,1
vsUTCDate
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
572,38

#****Begin: Generated Statements***
#****End: Generated Statements****

#******************************************************************************************************
#**** Process:               sys_Get UTC Time difference
#****                              This process gets the time difference between GMT and Local
#****                              It should be run 1 minute after on the hour (i.e. 8:01, 9:01 ...)
#****                              Want to pick up a change in difference (daylight savings etc.)
#****                              As early as possible, but don't want the two times to stradle the
#****                              hour, and give us the wrong value.
#****
#**** Author:                 Mal MacDonnell (Excelerated Consulting)
#****
#**** Date:                    11/03/16
#******************************************************************************************************


cbVar = 'sys_Variable';
sUTCTimeFile = '\"' |  GetProcessErrorFileDirectory | 'utc_time.txt\"';

#--- Use powershell to write UTC time to file
sCmd = 'powershell -command "& {Get-Date -date (Get-Date).ToUniversalTime()-uformat %y%m%d%H%M%S | Out-File ' | sUTCTimeFile | '}"';

ExecuteCommand ( sCmd, 0 );
Sleep (3000);

#-- Get the current local time
nTime = Now;

#--- Break into date and time and hours
sTime = TimSt (nTime, '\h\i\s');
nHrs = Numbr (SubSt (sTime, 1, 2));
sDate = TimSt (nTime, '\y\m\d');

DatasourceNameForServer = GetProcessErrorFileDirectory | 'utc_time.txt';


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,17

#****Begin: Generated Statements***
#****End: Generated Statements****

sTimeStamp = vsUTCDate;
sUTCDate = SubSt (vsUTCDate, 1, 6);
sUTCTime = SubSt (vsUTCDate, 7, 6);
nUTCHrs = Numbr (SubSt (sUTCTime, 1, 2));

If (sUTCDate @= sDate);
      nUTCDiff = nHrs - nUTCHrs;
Else;
      nUTCDiff = nHrs - nUTCHrs +24;
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
