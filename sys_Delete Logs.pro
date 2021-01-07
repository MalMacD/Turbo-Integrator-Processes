601,100
602,"sys_Delete Logs"
562,"NULL"
586,
585,
564,
565,"fJum:LaZ0t1r=e`p2NwBT5N9U=_cFmm>5W`rL[2\<N>p?=nvZ]NX<<N:dgI[DIt0yoOYIyqlKCT4rkhQ=ASpUn@dNpSo`dlp6>MD`mf@A;Fr>vL\LYib`P9[8c>Mr:qVe3:>_CcCvIB`[yic[y8>iSb7uDUa<tA@3@9w5w<Xb8Q0TyITU;Owxo=KZ0>_r]84uGB=U;sS"
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
psAge
psMask
psPath
561,3
2
2
2
590,3
psAge,""
psMask,""
psPath,""
637,3
psAge,""
psMask,""
psPath,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,50

#****Begin: Generated Statements***
#****End: Generated Statements****

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#--- Process:                    sys_Delete Logs
#--- Purpose:                   This process removes all the files matching the mask provided in the folder
#---                                  (and subdirectories) provided older than the age provided.
#---
#--- Parameters:               psAge : How many days to keep
#---                                   psMask: Wildcard for which files to remove (e.g. TM1*.log
#---                                   psPath: Folder to search in
#---
#--- Author:                     Malcolm MacDonnell (Capital Analytics) based on example provided by IBM
#---
#--- Revision History       Date          Initials    Modification
#--- =============      ====          =====   ==========
#---                                06/08/20    MJM     Initial Revision
#---
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------#

#--- Variables
#-------------------
bWait = 0;
sFileMask = psMask;


#-- Remove trailing backslash
#---------------------------------------------
sPath = Trim (psPath);

If (Subst (sPath, LONG (sPath), 1) @= '\');
      sPath = Subst (sPath, 1, LONG (sPath) - 1);
EndIf;

#--- Evaluate command string
#--------------------------------------------
sCommandLine = 
      'forfiles /p ' |
      '"' | sPath | '"' |
      ' /s /m ' | 
      sFileMask | 
      ' /d -' | 
      psAge | 
      ' /c "cmd /c del @path /q"';

#-- Execute the command
#---------------------------------------
ExecuteCommand (sCommandLine, bWait);

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
