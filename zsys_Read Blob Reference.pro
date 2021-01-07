601,100
602,"zsys_Read Blob Reference"
562,"CHARACTERDELIMITED"
586,"C:\TM1\ANAO\}Applications\}Sladib\PASG GEDs for BEN\TA_input_template_GEDs.xls.blob"
585,"C:\TM1\ANAO\}Applications\}Sladib\PASG GEDs for BEN\TA_input_template_GEDs.xls.blob"
564,
565,"b=ard0Gjm\uICb4oq6lFW>s__wLa[AU@gvTyP_wz7GPgSp2\W6huM1H@bhPJ]pzci_2=x`?re8?kZVw7Qf98KapFwI02X<l;_Ic<BM<`F3MfFGoXfEa_rmrrBs6oMNSE>M8k:g0eaKh6x@anDK5xuIf>zHI7saH@E[_H3[RCC@jHX_]Gno8WupWhfAQup\[\sVf6=qy?"
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
567,"="
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,1
psBlobPath
561,1
2
590,1
psBlobPath,""
637,1
psBlobPath,""
577,2
vsParam
vsValue
578,2
2
2
579,2
1
2
580,2
0
0
581,2
0
0
582,2
VarType=32ColType=827
VarType=32ColType=827
603,0
572,38

#****Begin: Generated Statements***
#****End: Generated Statements****

#=========================================================================================================
#---
#--- Process:                  zsys_Read Blob Reference
#---
#--- Description:             This process looks in a Blob file under }Applications and gets the reference to the file in }Externals.
#---                                 It is part of a 3 process set to remove unused files in }Externals including:
#---                                       zsys_Remove Old Applications
#---                                       zsys_Get Current Applications - recursive
#---                                       zsys_Read Blob Reference
#---
#--- Parameters:              psBlobPath: The blob file to parse
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
StringGlobalVariable ('gsExternal');
csEntry = 'ENTRYREFERENCE';

#--- Set up the Data Source
#-----------------------------------------
DatasourceNameForServer = psBlobPath;

#--- End of Prolog
#-------------------------

573,7

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- End of Metadata
#------------------------------

574,14

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- Get the reference and pass back to the calling process using global variables
#-----------------------------------------------------------------------------------------------------------------------------
If (vsParam @= csEntry);
      nIdx = Scan ('}', vsValue);
      gsExternal = SubSt (vsValue, nIdx + 11, Long (vsValue) - nIdx -10);
EndIf;

#--- End of Data
#-----------------------

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
