-- ************************
-- Author                 : Klaus Johansen (KLJ)
-- History                : 2022-04-12 Creation date
-- Description            : Add to list for backout queues to be cleaned regulary 
-- Revision               : $Id$
-- Script:                : $URL$
-- ************************

set echo on
whenever sqlerror exit failure

delete from IIBUSER.BRK01_BQ_LIST where QUEUE like 'INT0080%' ;

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

EXIT