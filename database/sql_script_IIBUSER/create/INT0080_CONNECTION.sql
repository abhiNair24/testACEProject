-- ************************
-- * Author               : Klaus Johansen (KLJ)
-- * History              : 2022-04-06 Table structure for oAuth/SAML authentication 
-- * Description          : Contains values needed to login to SF/PP oData interface
-- *                      : 
-- ************************
--------------------------------------------------------
--  DDL for Table INT0080_MISC
--------------------------------------------------------
  CREATE TABLE "IIBUSER"."INT0080_CONNECTION" 
   ("BASEURL" VARCHAR2(255),
	"CLIENT_ID" VARCHAR2(50), 
	"COMPANY_ID" VARCHAR2(50),
	"SAML_ASSERTION" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING;

--------------------------------------------------------
--  Constraints and index for Table INT0080_MISC
--------------------------------------------------------
ALTER TABLE INT0080_CONNECTION  MODIFY (BASEURL NOT NULL);
ALTER TABLE INT0080_CONNECTION  MODIFY (CLIENT_ID NOT NULL);
ALTER TABLE INT0080_CONNECTION  MODIFY (COMPANY_ID NOT NULL);
ALTER TABLE INT0080_CONNECTION  MODIFY (SAML_ASSERTION NOT NULL);
CREATE UNIQUE INDEX INT0080_CONNECTION_INDEX1 ON INT0080_CONNECTION (BASEURL, CLIENT_ID, COMPANY_ID);
