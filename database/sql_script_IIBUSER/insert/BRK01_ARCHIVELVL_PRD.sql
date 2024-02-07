-- **********************
-- Author               : Jimmy Lindau (JIMA)
-- History              : 2023-11-20 Creation date
-- Description          : Setup archive level
-- OBS OBS OBS          : This script is only provided for convenience. 
--                      : Script and table entries can be changed at any time without a CRQ. 
-- Revision             : $Id$
-- Script               : $URL$
-- **********************

set echo on
whenever sqlerror exit failure

delete from IIBUSER.BRK01_ARCHIVELVL where FLOWNAME like 'INT0080%';

Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.COMPANY.MAIN','INT0080.PROCESS.COMPANY','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.COSTCENTER.MAIN','INT0080.PROCESS.COSTCENTER','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.COUNTRY.MAIN','INT0080.PROCESS.COUNTRY','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.EMPLOYEE.MAIN','INT0080.PROCESS.EMPLOYEE','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','1','1');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.LOCATION.MAIN','INT0080.PROCESS.LOCATION','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.PROCESS.ORGUNIT.MAIN','INT0080.PROCESS.ORGUNIT','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.COUNTRY.MAIN','INT0080.GET.COUNTRY','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_BUSINESSUNIT.MAIN','INT0080.GET.FO.BUSINESSUNIT','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_COMPANY.MAIN','INT0080.GET.FO.COMPANY.TRIGGER','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_COSTCENTER.MAIN','INT0080.GET.FO.COSTCENTER','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_DEPARTMENT.MAIN','INT0080.GET.FO.DEPARTMENT','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_DIVISION.MAIN','INT0080.GET.FO.DIVISION','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.FO_LOCATION.MAIN','INT0080.GET.FO.LOCATION','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','2','0','0');
Insert into IIBUSER.BRK01_ARCHIVELVL (FLOWNAME,SOURCE,ARCHIVELVL,INPUTARCHQUEUE,OUTPUTARCHQUEUE,EXPIRY,CONFIDENTIAL,ERRORIGNORE) values ('INT0080.SF_GET.PERPERSON.MAIN','INT0080.GET.PERPERSON.TRIGGER','3','ICC.ARCHIVE.DB.MSG.IN','ICC.ARCHIVE.DB.MSG.OUT','1','1','1');

EXIT