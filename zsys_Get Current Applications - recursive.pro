601,100
602,"zsys_Get Current Applications - recursive"
562,"NULL"
586,
585,
564,
565,"sD5qWTX9:68qc_=YB3hah7S1n@UMUJ[_NYOOXaBNfuEVU5hF=snUHxn_Kgsw1aeLF6r>ijDt\LeST@KI0j;h@UD=Eybyhd?tbm]Z17O2Qc2gfzBVo3Hfd>?`VNySn1TNp5cwXQP<3OEWrjF5dc9GJ1:Z?4U:f[^S:rm@Kw4]@_vb41q3Z2FSsW`>Tcbh?f?qdoZCj7yF"
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
560,1
psSearchPath
561,1
2
590,1
psSearchPath,"C:\TM1\ANAO\"
637,1
psSearchPath,""
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,68

#****Begin: Generated Statements***
#****End: Generated Statements****

#=========================================================================================================
#---
#--- Process:                  zsys_Get Current Applications - recursive
#---
#--- Description:             This process recursively loops through }Applications and gets a reference from all the blob files to application
#---                                 files in }Externals. 
#---                                 It is part of a 3 process set to remove unused files in }Externals including:
#---                                       zsys_Remove Old Applications
#---                                       zsys_Get Current Applications - recursive
#---                                       zsys_Read Blob Reference
#---
#--- Parameters:              psSearchPath:     The folder to search recursively through
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
csExtProc = 'zsys_Read Blob Reference';
csThisProc = GetProcessName ();

#--- Loop through all of the folders looking for blob files
#-----------------------------------------------------------------------------------
sFileOrFolder = WildcardFileSearch (psSearchPath | '*', '');

If (sFileOrFolder @= '');
      #--- No children so we presume this is a file - check if a BLOB
      #----------------------------------------------------------------------------------------------
      If (Upper (SubSt (psSearchPath, Long (psSearchPath) -5, 6)) @= '.BLOB\');
            #--- It was a BLOB, so get the reference
            #------------------------------------------------------------
            gsExternal = '';
            psSearchPath = SubSt (psSearchPath, 1, Long (psSearchPath) - 1);

            ExecuteProcess (csExtProc,
                                       'psBlobPath', psSearchPath);

            #--- Add the reference to our list using global variables
            #-----------------------------------------------------------------------------------
            gsApplications = gsApplications | ',' | gsExternal;
      EndIf;
Else;
      #--- It's a folder, so keep recursing down
      #------------------------------------------------------------
      While (sFileOrFolder @<> '');
            ExecuteProcess (csThisProc,
                                       'psSearchPath',  psSearchPath | sFileOrFolder | '\');

            sFileOrFolder = WildcardFileSearch (psSearchPath | '*', sFileOrFolder);
      End;
EndIf;

#--- End of Prolog
#-------------------------

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
