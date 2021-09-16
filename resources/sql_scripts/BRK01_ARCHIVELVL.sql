
************************
* Author               : Klaus Johansen (KLJ)
* History              : 2021-09-16 Creation date
* OBS USAGE:           : This file is provided for inspiration / convinience only and is NOT to be consider a part of the integration package. 
* Description          : Although BRK01_ARCHIVELVL setup not considered part of integration provided for inspiration. 
*                      : Setup archive level  
************************

* Run manually for each environment

*******************************************************************
* All environments
*******************************************************************
REM delete from IIBUSER.BRK01_ARCHIVELVL where FLOWNAME like 'INT0080%' ;

Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.EMPLOYEE.MAIN','INT0080.PROCESS.EMPLOYEE','0','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','1','1','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER','0','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','1','1','0');
