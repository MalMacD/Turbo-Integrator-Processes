601,100
602,"sys_Delete Logs - Master"
562,"NULL"
586,
585,
564,
565,"v<?DGVS<jFE3zbs<DLpSKJaY<dIP7`nKAulDzn>y_\9S6lkInulIell_Y6v_J_fZuDRZ<QFmS0seNcI535=R\V5iu?Adx:MFYA?[ix8?kT3C]eH?zzJX:8T]8qJ3<Lb]?TNW6kMFFp^:6PsTsRf[vaU6Mzq8w@S>b45EpBqO7sn@b0dBUCgfd[1eQ`14zAk8DOy[Bh\j"
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
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,57

#****Begin: Generated Statements***
#****End: Generated Statements****

#---------------------------------------------------------------------------------------------------------------------------------------------------------------------#
#--- Process:                    sys_Delete Logs - Master
#--- Purpose:                   This process calls sys_Delete Logs which removes all the files matching the
#---                                   mask, folder and age by this process.  It gets these parameters from the cbVar
#---                                  as Log1 Age, Log1 Path and Log1 Mask, then looks for Log2 Age etc. and
#---                                  keeps looping through.
#---
#--- Parameters:               N/A
#---
#--- Author:                     Malcolm MacDonnell (Capital Analytics) based on example provided by IBM
#---
#--- Revision History       Date          Initials    Modification
#--- =============      ====          =====   ==========
#---                                06/08/20    MJM     Initial Revision
#---
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------#

#--- Cubes
#--------------
cbVar = 'sys_Variable';

#--- Dimensions
#-----------------------
dmVar = 'sys_Variable';

#--- Other Variables 
#-----------------------------
sProc = 'sys_Delete Logs';
nIdx = 1;

sParam = 'Log' | Trim (Str (nIdx, 2, 0));

While (DimIx (dmVar, sParam | ' Age') <> 0);
      If (Trim (CellGetS (cbVar, sParam | ' Age', 'sValue')) @<> '');
            # Obtain the retention details
            #--------------------------------------------
            sAge = CellGetS (cbVar, sParam | ' Age', 'sValue');
            sPath = CellGetS (cbVar, sParam | ' Path', 'sValue');
            sFileMask = CellGetS (cbVar, sParam | ' Mask', 'sValue');

            #-- Execute the process
            #------------------------------------
            ExecuteProcess (sProc, 
                                        'psAge', sAge,
                                        'psMask', sFileMask,
                                        'psPath', sPath);
      EndIf;

      nIdx = nIdx +1;
      sParam = 'Log' | Trim (Str (nIdx, 1, 0));
End;


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
