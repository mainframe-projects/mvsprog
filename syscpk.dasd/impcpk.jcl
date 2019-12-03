
//IMPORT JOB (SYS),'IMPORT USER CAT',CLASS=A,MSGCLASS=A, 
// MSGLEVEL=(1,1) 
//* 
//* ----------------------------------------------------------------- *
//* *
//* On the DASD volume SYSCPK there is a User Catalog defined. All *
//* of the datasets contained on that volume are catalogued in that *
//* User Catalog. This job IMPORTS that User Catalog into the MVS *
//* Master Catalog, thereby making the User Catalog and its contents *
//* visable to MVS. An Alias is then defined in the Master Catalog *
//* that will direct all searches for datasets beginning with the *
//* High Level Qualifier "SYSC" to be directed to the User Catalog on *
//* the SYSCPK volume. Any new datasets created with a High Level *
//* Qualifier of "SYSC" will be cataloged in that User Catalog. *
//* *
//* ----------------------------------------------------------------- *
//* 
//IDCAMS01 EXEC PGM=IDCAMS,REGION=4096K 
//SYSPRINT DD SYSOUT=* 
//SYSCPK DD UNIT=3350,DISP=OLD,VOL=SER=SYSCPK 
//SYSIN DD * 

  IMPORT CONNECT OBJECTS ( - 
  UCSYSCPK - 
  DEVICETYPE (3350) - 
  VOLUMES (SYSCPK) ) 

  DEFINE ALIAS ( - 
  NAME (SYSC) - 
  RELATE (UCSYSCPK) ) 

// 
