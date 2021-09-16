
************************
* Author               : Klaus Johansen (KLJ)
* History              : 2021-09-16 Creation date
* OBS USAGE:           : This file is provided for inspiration / convinience only and is NOT to be consider a part of the integration package. 
* Description          : Although BRK01_BQ_LIST setup not considered part of integration - sql provided for inspiration. 
*                      : Setup archive level with correct input dirs matching bar overrides. 
************************

* Run manually for each environment

*******************************************************************
* Development + Test/QA + Production Environment
*******************************************************************
REM delete from IIBUSER.BRK01_BQ_LIST where QUEUE like 'INT0080%' ;
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.COUNTRY.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.BUSINESSUNIT.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.COMPANY.TRIGGER.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.COSTCENTER.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.DEPARTMENT.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.DIVISION.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.FO.LOCATION.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.GET.PERPERSON.TRIGGER.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.COMPANY.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.COSTCENTER.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.COUNTRY.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.EMPLOYEE.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.LOCATION.BQ','0');
Insert into IIBUSER.BRK01_BQ_LIST (QUEUE,EXPIRY) values ('INT0080.PROCESS.ORGUNIT.BQ','0');
