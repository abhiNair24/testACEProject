************************
* Author               : Jimmy Lindau (JIMA)
* History              : 20210601 Creation date
* Description          : SEA Vision Webservice URLs
*                      : This definition file creates the table INT0080_MISC Record values
*                      : 
************************

* Run manually for each environment

*******************************************************************
* Development Environment
*******************************************************************
Insert into IIBUSER.INT0080_MISC (URL,UNAME,PW,ISSUED_BY) values ('https://api12preview.sapsf.eu/odata/v2/','API_IC@LundbeckDev','ijn2e4AB3ZD8kzF','LundbeckDev');

*******************************************************************
* Test/QA Environment
*******************************************************************
Insert into IIBUSER.INT0080_MISC (URL,UNAME,PW,ISSUED_BY) values ('https://api012.successfactors.eu/odata/v2/','API_IC@LundbeckTest','4btqUKk8L4W2Qhb','LundbeckTest');

*******************************************************************
* Production Environment
*******************************************************************
Insert into IIBUSER.INT0080_MISC (URL,UNAME,PW,ISSUED_BY) values ('https://api012.successfactors.eu/odata/v2/','API_IC@Lundbeck','ijn2e4AB3ZD8kzF','Lundbeck');

