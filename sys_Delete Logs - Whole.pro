601,100
602,"sys_Delete Logs - Whole"
562,"NULL"
586,
585,
564,
565,"oGXOiFnkbQNK5boa@wW\T=N>KINi9WLMtz:tO?rZF3quEujgfzN@ndHcNx4ufnHuMfOEmTg?L^8DVK45UQi\m<TJ2Sq1A@b3^4ZFoPpj[6FG6BB2P2cP9?:xYD:?A;P7rGCJzJ@>u?YTfhMHqt;Tn<<`OwpUBlo72w^7wK0tsw0_RvS6X=7@wD7U>Da4w_]MV0R_<]y;"
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
572,128

#****Begin: Generated Statements***
#****End: Generated Statements****

#--- The following is sample TI script to remove old log files, and temporary files from folders.

#--- SET GLOBAL VARIABLES 
#-----------------------------------------------
## Age (in days) of log files to be delete
#iRetainLog = INT (CellGetN ('ControlAdmin', '001', 'RetainLog'));
## Ensure a number of days has been specIfied has been specIfied
#If (iRetainLog < 1);
#      # Use a default value
#      sAgeLog = '90';
#Else;
#      # Use the days specIfied
#      sAgeLog = NumberToString (iRetainLog);
#EndIf;
#
## Age (in days) of text files to be delete
#iRetainTxt = INT (CellGetN ('ControlAdmin', '001', 'RetainTxt'));
## Ensure a number of days has been specIfied has been specIfied
#If (iRetainTxt < 1);
#      # Use a default value
#      sAgeTxt = '7';
#Else;
#      # Use the days specIfied
#      sAgeTxt = NumberToString (iRetainTxt);
#EndIf;
#
## Do not wait for command to finish
sAgeLog = '30';
sAgeTxt = '7';
bWait = 0;

#--- LOG FILES
#----------------------
# Obtain the retention period
sAge = sAgeLog;

# Folder containing files to be removed - log file folder
sPath = GetProcessErrorFileDirectory;

# Remove trailing backslash
sPath = Trim (sPath);
If (Subst (sPath, LONG (sPath), 1) @= '\');
      sPath = Subst (sPath, 1, LONG (sPath) - 1);
EndIf;

# File type - All files
sFileMask = 'TM1*';

# Evaluate command string
sCommandLine = 
      'forfiles /p ' |
      '"' | sPath | '"' |
      ' /s /m ' | 
      sFileMask | 
      ' /d -' | 
      sAge | 
      ' /c "cmd /c del @path /q"';

#-- Execute the command
#---------------------------------------
ExecuteCommand (sCommandLine, bWait);

#--- TM1 WEB LOG FILES 
#----------------------------------------
# Obtain the retention period
sAge = sAgeLog;

# Folder containing files to be removed (must use a mapped drive, does not work with UNC)
#sPath = CellGetS ('ControlAdmin', '001', 'FolderLogWeb');
sPath = 'C:\Program Files\IBM\Cognos\TM1_64\logs';

# Remove trailing backslash
sPath = Trim (sPath);
If (Subst (sPath, LONG (sPath), 1) @= '\');
      sPath = Subst (sPath, 1, LONG (sPath) - 1);
EndIf;

# File type - All files
sFileMask = 'TM1*';

# Evaluate command string
sCommandLine = 
      'forfiles /p ' |
      '"' | sPath | '"' |
      ' /s /m ' | 
      sFileMask | 
      ' /d -' | 
      sAge | 
      ' /c "cmd /c del @path /q"';

# Execute the command
ExecuteCommand (sCommandLine, bWait);

#--- FILES TEMP 
#-------------------------
# Obtain the retention period
sAge = sAgeTxt;

# Folder containing files to be removed (must use a mapped drive, does not work with UNC)
#sPath = CellGetS ('ControlAdmin', '001', 'FolderTemp');
sPath = 'c:\TM1\Health Check\Data';

# Remove trailing backslash
sPath = Trim (sPath);
If (Subst (sPath, LONG (sPath), 1) @= '\');
      sPath = Subst (sPath, 1, LONG (sPath) - 1);
EndIf;

# File type - All files
sFileMask = '*';

# Evaluate command string
sCommandLine = 
      'forfiles /p ' |
      '"' | sPath | '"' |
      ' /s /m ' | 
      sFileMask | 
      ' /d -' | 
      sAge | 
      ' /c "cmd /c del @path /q"';

# Execute the command
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
