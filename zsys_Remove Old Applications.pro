601,100
602,"zsys_Remove Old Applications"
562,"NULL"
586,
585,
564,
565,"vRTMa<J5Tp40f\KDqPug@1aTvmO8kbVU2T=2g1w[vuiiZkHBv4MC\R;KDO_xaDami49ozQo0hk\^_jF\eBQkmXY=`HZUN]lnK2Iu1n1K`r:<?m>?yNW2XNKyA;TRCyj^;aoh6prPrsFmo<]EqYTFCvag<1\igZ\;aiNryib0>T7Oa\ndpofKjiS8vhZWJYalAfc8<?Nf"
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
560,2
psDBDir
psTestOnly
561,2
2
2
590,2
psDBDir,"C:\TM1\ANAO\"
psTestOnly,"Y"
637,2
psDBDir,""
psTestOnly,"Y/N"
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,80

#****Begin: Generated Statements***
#****End: Generated Statements****

#=========================================================================================================
#---
#--- Process:                  zsys_Remove Old Applications
#---
#--- Description:             This process loops through }Applications and gets a referencefrom all the blob files to application  files in }Externals.
#---                                 It then loops through }Externals and removes the files that aren't referenced.
#---                                 It is part of a 3 process set to remove unused files in }Externals including:
#---                                       zsys_Remove Old Applications
#---                                       zsys_Get Current Applications - recursive
#---                                       zsys_Read Blob Reference
#---
#--- Parameters:              psDBDir:        The Database Directory to be purged (This could come from a sys_Variable instead but has been built as a standalone)
#---                                  psTestOnly:   If y or Y then it doesn't delete the files and just provides a list of files to be deleted in 
#---
#--- Written by:               Malcolm MacDonnell (Capital Analytics)
#---
#--- Modification History:
#---
#--- Date               Initials     Comments
#--- --------              -----------    -----------------
#--- 14/08/2020    MJM      Initial Revision
#---
#=========================================================================================================

#--- Other Variables
#----------------------------
StringGlobalVariable ('gsApplications');
StringGlobalVariable ('gsExternal');
csDBDir = psDBDir;
csAppDir = csDBDir | '}Applications\';
csExtDir = csDBDir | '}Externals\';
csRecProc = 'zsys_Get Current Applications - recursive';
csLogFile = 'remove.log';

#--- Check if we are deleting or just reporting
#-------------------------------------------------------------------
If (Upper (psTestOnly) @= 'Y');
      csMsg = ' can be deleted.';
Else;
      csMsg = ' has been deleted.';
EndIf;

#--- Loop through all of the folders looking for blob 
#--- files and return the list through global variables
#-----------------------------------------------------------------------------
ExecuteProcess (csRecProc, 
                           'psSearchPath', csAppDir);

gaApplications = SubSt (gsApplications, 2, Long (gsApplications) - 1) | ',';

#--- OK, so now loop through Externals and compare the applications to the Blobs
#-----------------------------------------------------------------------------------------------------------------------------
sApp = WildcardFileSearch (csExtDir | '*.*', '');

While (sApp @<> '');
      If (Scan (',' | sApp | ',', gsApplications) = 0);
            #--- This one isn't referenced
            #-------------------------------------------
            If (Upper (psTestOnly) @<> 'Y');
                  #--- Delete the file
                  #--------------------------
                  sCmd = 'cmd /C del "' | csExtDir | sApp | '"';
                  ExecuteCommand (sCmd, 0);
            EndIf;

            #--- Log the deletion or intention
            #------------------------------------------------
            AsciiOutput (csLogFile, sApp | csMsg);
      EndIf;

      sApp = WildcardFileSearch (csExtDir | '*.*', sApp);
End;

#--- End of Prolog
#--------------------------

573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,7

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- End of Epilog
#-------------------------

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
