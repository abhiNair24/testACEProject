-- **********************
-- Author               : Jimmy Lindau (JIMA)
-- History              : 2023-11-20 Creation date
-- Description          : Trigger value values for Broker Framework DB trigger schedule
--                      : This definition file creates scheduled job trigger values 
-- Revision             : $Id$
-- Script               : $URL$
-- **********************

set echo on
whenever sqlerror exit failure

delete from IIBUSER.BRK01_SCHEDULED_TRIGGER where TRIGGERFLOWNAME like 'INT0080%'; 

Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_OrgData'',''Sequential''','INT0080.SF_GET.FO_COMPANY.MAIN','INT0080.GET.FO.COMPANY.TRIGGER',to_timestamp('2021-08-20 13.15.00','RRRR-MM-DD HH24.MI.SS'),to_timestamp('2023-11-20 09.15.00','RRRR-MM-DD HH24.MI.SS'),null,null,null,'1',null,'No');
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_EmployeeData'',''Sequential''','INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER',to_timestamp('2021-08-20 13.30.00','RRRR-MM-DD HH24.MI.SS'),to_timestamp('2023-11-20 09.30.00','RRRR-MM-DD HH24.MI.SS'),null,null,null,'1',null,'No');

EXIT
