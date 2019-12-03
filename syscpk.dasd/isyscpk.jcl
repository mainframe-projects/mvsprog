
//ISYSCPK JOB (SYS),'INTEGRATE SYSCPK',CLASS=A,MSGCLASS=X          
// EXEC PGM=ISYSCPK,REGION=1024K                                   
//STEPLIB  DD DSN=SYSC.LINKLIB,DISP=SHR                            
//SYSOUT   DD SYSOUT=*                                             
//SYSUT1   DD DUMMY                  <- DYNAMICALLY ALLOCATED      
//SYSUT2   DD SYSOUT=*               <- USE TO CHECK GENERATED JOB 
//*SYSUT2   DD  SYSOUT=(A,INTRDR)    <- USE TO SUBMIT GENERATED JOB
//       
