************************
* Author               : Jimmy Lindau (JIMA)
* History              : 20210819 Creation date
* Description          : Scheduled Trigger values for IIB Framework DB
*                      : This definition file creates the Scheduled Trigger
*                      : 
************************

* Run manually for each environment

*******************************************************************
* Development Environment
*******************************************************************
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_OrgData'',''Sequential''','INT0080.SF_GET.FO_COMPANY.MAIN','INT0080.GET.FO.COMPANY.TRIGGER',to_timestamp('2021-08-19 15:45:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_EmployeeData'',''Sequential''','INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER',to_timestamp('2021-08-19 16:00:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');

*******************************************************************
* Test/QA Environment
*******************************************************************
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_OrgData'',''Sequential''','INT0080.SF_GET.FO_COMPANY.MAIN','INT0080.GET.FO.COMPANY.TRIGGER',to_timestamp('2021-08-19 15:45:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_EmployeeData'',''Sequential''','INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER',to_timestamp('2021-08-19 16:00:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');

*******************************************************************
* Production Environment
*******************************************************************
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_OrgData'',''Sequential''','INT0080.SF_GET.FO_COMPANY.MAIN','INT0080.GET.FO.COMPANY.TRIGGER',to_timestamp('2021-08-19 15:45:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');
Insert into IIBUSER.BRK01_SCHEDULED_TRIGGER (TRIGGERID,TRIGGERFLOWNAME,TRIGGERQUEUE,STARTTIME,NEXTSCHEDULE,YEAR,MONTH,DAY,HOUR,MINUT,ACTIVE) values ('''SF_To_HRDB_EmployeeData'',''Sequential''','INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER',to_timestamp('2021-08-19 16:00:00','RRRR-MM-DD HH24:MI:SS'),null,null,null,null,'3',null,'No');
