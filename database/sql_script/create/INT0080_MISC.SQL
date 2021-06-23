--------------------------------------------------------
--  DDL for Table INT0080_MISC
--------------------------------------------------------
  CREATE TABLE "IIBUSER"."INT0080_MISC" 
   ("URL" VARCHAR2(255 BYTE),
	"UNAME" VARCHAR2(50), 
	"PW" VARCHAR2(50),
	"ISSUED_BY" VARCHAR2(50)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING;
--------------------------------------------------------
--  DDL for Index INT0080_MISC_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IIBUSER"."INT0080_MISC_PK" ON "IIBUSER"."INT0080_MISC" ("URL", "UNAME", "PW", "ISSUED_BY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS;
--------------------------------------------------------
--  Constraints for Table INT0080_MISC
--------------------------------------------------------

  ALTER TABLE "IIBUSER"."INT0080_MISC" MODIFY ("URL" NOT NULL ENABLE);
  ALTER TABLE "IIBUSER"."INT0080_MISC" MODIFY ("UNAME" NOT NULL ENABLE);
  ALTER TABLE "IIBUSER"."INT0080_MISC" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "IIBUSER"."INT0080_MISC" MODIFY ("ISSUED_BY" NOT NULL ENABLE);
  ALTER TABLE "IIBUSER"."INT0080_MISC" ADD CONSTRAINT "INT0080_MISC_PK" PRIMARY KEY ("URL", "UNAME", "PW", "ISSUED_BY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS;