601,100
602,"sys_send email"
562,"CHARACTERDELIMITED"
586,"C:\Excelerated\Health\Jeff\Email.htm"
585,"C:\Excelerated\Health\Jeff\Email.htm"
564,
565,"ro@eMb=Ah>>YiQ<R>Za=CBD9ZTjY2y@U^C@\lPB7guxHJTLru_p2>x@KIEgsJ9@9NAj[9PssyMB=ZBqWPcWYnN[Te<GLh1R_<Zuhac]x\>Fzh6mBX38q12]j_y`YJK=B4vMzNtRfs8YPrBhGeNCK_]7u2cQcs2K]oxPpSJZ_xiRTJecBJP3uQ6xJMWF`k:UGKKJ==Mbg"
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
577,2
V1
V2
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
572,7

#****Begin: Generated Statements***
#****End: Generated Statements****

sMessage='';


573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,5

#****Begin: Generated Statements***
#****End: Generated Statements****

sMessage = sMessage | V1 | V2;
575,12

#****Begin: Generated Statements***
#****End: Generated Statements****


asciioutput ('c:\excelerated\health\jeff\email_ascii.htm', sMessage);

sCmd = 'cmd /C .\TIMail.vbs ITSupport@excelerated.com.au mmacdonnell@excelerated.com.au "TM1 Usage Stats" "' | sMessage | '" ""';
sCmd = 'CScript .\sendMailOther.vbs '| 'mail.excelerated.com.au' |' ' | '"ITSupport@excelerated.com.au" "mmacdonnell@excelerated.com.au' |'" "'| 'Test' |'" "' | 'c:\excelerated\health\jeff\email_ascii.htm' | '"' ;
asciioutput ('cmd.txt', scmd);
ExecuteCommand (sCmd, 0);

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
