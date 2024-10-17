--------------------------------------------------------
-- Archivo creado  - jueves-octubre-17-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINISTRATOR
--------------------------------------------------------

  CREATE TABLE "PG"."ADMINISTRATOR" 
   (	"ID_ADMIN" NUMBER(5,0), 
	"ID_PERSON" NUMBER(5,0), 
	"PASSWORD_ADMIN" VARCHAR2(20 BYTE), 
	"USERNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table CANTON
--------------------------------------------------------

  CREATE TABLE "PG"."CANTON" 
   (	"ID_CANTON" NUMBER(5,0), 
	"CANTON_NAME" VARCHAR2(15 BYTE), 
	"ID_PROVINCE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COACH
--------------------------------------------------------

  CREATE TABLE "PG"."COACH" 
   (	"ID_COACH" NUMBER(5,0), 
	"ID_PERSON" NUMBER(5,0), 
	"ID_TEAM" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COACHXCOMPETITOR
--------------------------------------------------------

  CREATE TABLE "PG"."COACHXCOMPETITOR" 
   (	"ID_COACHXCOMPETITOR" NUMBER(5,0), 
	"ID_COACH" NUMBER(5,0), 
	"ID_COMPETITOR" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COMPETITION
--------------------------------------------------------

  CREATE TABLE "PG"."COMPETITION" 
   (	"ID_COMPETITION" NUMBER(5,0), 
	"COMPETITIONNAME" VARCHAR2(15 BYTE), 
	"COMPETITIONDATE" DATE, 
	"COMPETITIONDESCRIPTION" VARCHAR2(30 BYTE), 
	"ID_COMPETITIONTYPE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COMPETITIONTYPE
--------------------------------------------------------

  CREATE TABLE "PG"."COMPETITIONTYPE" 
   (	"ID_COMPETITIONTYPE" NUMBER(5,0), 
	"TYPEDESCRIPTION" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COMPETITOR
--------------------------------------------------------

  CREATE TABLE "PG"."COMPETITOR" 
   (	"ID_COMPETITOR" NUMBER(5,0), 
	"CLASIFICATIONSCORE" NUMBER(5,0), 
	"ID_PERSON" NUMBER(5,0), 
	"ID_TEAM" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COMPETITORXCOMPETITION
--------------------------------------------------------

  CREATE TABLE "PG"."COMPETITORXCOMPETITION" 
   (	"ID_COMPETITORXCOMPETITION" NUMBER(5,0), 
	"ID_COMPETITOR" NUMBER(5,0), 
	"ID_COMPETITION" NUMBER(5,0), 
	"TIMERECORDED" NUMBER(10,0), 
	"SCORE" NUMBER(5,0), 
	"POSITIONRECORDED" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COMPETITORXDISABILITY
--------------------------------------------------------

  CREATE TABLE "PG"."COMPETITORXDISABILITY" 
   (	"ID_COMPETITORXDISABILITY" NUMBER(5,0), 
	"ID_COMPETITOR" NUMBER(5,0), 
	"ID_DISABILITY" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COUNTRY
--------------------------------------------------------

  CREATE TABLE "PG"."COUNTRY" 
   (	"ID_COUNTRY" NUMBER(5,0), 
	"COUNTRY_NAME" VARCHAR2(15 BYTE), 
	"ID_PICTURE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table COUNTRYXPARALYMPIC
--------------------------------------------------------

  CREATE TABLE "PG"."COUNTRYXPARALYMPIC" 
   (	"ID_COUNTRYXPARALYMPIC" NUMBER(5,0), 
	"ID_PARALYMPIC" NUMBER(5,0), 
	"ID_COUNTRY" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table DISABILITY
--------------------------------------------------------

  CREATE TABLE "PG"."DISABILITY" 
   (	"ID_DISABILITY" NUMBER(5,0), 
	"DISABILITYNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table DISTRICT
--------------------------------------------------------

  CREATE TABLE "PG"."DISTRICT" 
   (	"ID_DISTRICT" NUMBER(5,0), 
	"DISTRICT_NAME" VARCHAR2(15 BYTE), 
	"ID_CANTON" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table EMAIL
--------------------------------------------------------

  CREATE TABLE "PG"."EMAIL" 
   (	"ID_EMAIL" NUMBER(5,0), 
	"EMAILADRESS" VARCHAR2(20 BYTE), 
	"ID_PERSON" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table GENDERTYPE
--------------------------------------------------------

  CREATE TABLE "PG"."GENDERTYPE" 
   (	"ID_GENDERTYPE" NUMBER(5,0), 
	"GENDERTYPE" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table IDENTIFICATIONTYPE
--------------------------------------------------------

  CREATE TABLE "PG"."IDENTIFICATIONTYPE" 
   (	"ID_IDENTIFICATIONTYPE" NUMBER(5,0), 
	"IDENTIFICATIONTYPE" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table MEDAL
--------------------------------------------------------

  CREATE TABLE "PG"."MEDAL" 
   (	"ID_MEDAL" NUMBER(5,0), 
	"ID_MEDALTYPE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table MEDALTYPE
--------------------------------------------------------

  CREATE TABLE "PG"."MEDALTYPE" 
   (	"ID_MEDALTYPE" NUMBER(5,0), 
	"TYPENAME" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table MEDALXCOMPETITIONXCOMPETITOR
--------------------------------------------------------

  CREATE TABLE "PG"."MEDALXCOMPETITIONXCOMPETITOR" 
   (	"ID_MEDALXCOMPXCOMP" NUMBER(5,0), 
	"ID_MEDAL" NUMBER(5,0), 
	"ID_COMPETITORXCOMPETITION" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table NATIONALITY
--------------------------------------------------------

  CREATE TABLE "PG"."NATIONALITY" 
   (	"ID_NATIONALITY" NUMBER(5,0), 
	"NATIONALITYNAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table NATIONALITYXPERSON
--------------------------------------------------------

  CREATE TABLE "PG"."NATIONALITYXPERSON" 
   (	"ID_NATIONALITYXPERSON" NUMBER(5,0), 
	"ID_NATIONALITY" NUMBER(5,0), 
	"ID_PERSON" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PARALYMPIC
--------------------------------------------------------

  CREATE TABLE "PG"."PARALYMPIC" 
   (	"ID_PARALYMPIC" NUMBER(5,0), 
	"PARALYMPICS_YEAR" NUMBER(4,0), 
	"ID_COUNTRY" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PARALYMPICXCOMPETITION
--------------------------------------------------------

  CREATE TABLE "PG"."PARALYMPICXCOMPETITION" 
   (	"ID_PARALYMPICXCOMPETITION" NUMBER(5,0), 
	"ID_PARALYMPIC" NUMBER(5,0), 
	"ID_COMPETITION" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "PG"."PERSON" 
   (	"ID_PERSON" NUMBER(5,0), 
	"IDENTIFICATIONNUMBER" NUMBER(5,0), 
	"FIRSTNAME" VARCHAR2(15 BYTE), 
	"SECONDNAME" VARCHAR2(15 BYTE), 
	"FIRSTLASTNAME" VARCHAR2(15 BYTE), 
	"SECONDLASTNAME" VARCHAR2(15 BYTE), 
	"BIRTHDATE" DATE, 
	"ID_PICTURE" NUMBER(5,0), 
	"ID_COUNTRY" NUMBER(5,0), 
	"ID_GENDERTYPE" NUMBER(5,0), 
	"ID_IDENTIFICATIONTYPE" NUMBER(5,0), 
	"AGE" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PERSONXPHONE
--------------------------------------------------------

  CREATE TABLE "PG"."PERSONXPHONE" 
   (	"ID_PHONEXPERSON" NUMBER(5,0), 
	"ID_PERSON" NUMBER(5,0), 
	"ID_PHONE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PHONE
--------------------------------------------------------

  CREATE TABLE "PG"."PHONE" 
   (	"ID_PHONE" NUMBER(5,0), 
	"PHONENUMBER" NUMBER(10,0), 
	"ID_PHONETYPE" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PHONETYPE
--------------------------------------------------------

  CREATE TABLE "PG"."PHONETYPE" 
   (	"ID_PHONETYPE" NUMBER(5,0), 
	"PHONETYPE" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table PICTURE
--------------------------------------------------------

  CREATE TABLE "PG"."PICTURE" 
   (	"ID_PICTURE" NUMBER(5,0), 
	"IMAGE" BLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" 
 LOB ("IMAGE") STORE AS BASICFILE (
  TABLESPACE "PG_DATA" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) ;
--------------------------------------------------------
--  DDL for Table PROVINCE
--------------------------------------------------------

  CREATE TABLE "PG"."PROVINCE" 
   (	"ID_PROVINCE" NUMBER(5,0), 
	"PROVINCE_NAME" VARCHAR2(15 BYTE), 
	"ID_COUNTRY" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table SCORE
--------------------------------------------------------

  CREATE TABLE "PG"."SCORE" 
   (	"ID_SCORE" NUMBER(5,0), 
	"QUANTITY" NUMBER(5,0), 
	"ID_COMPETITION" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
--------------------------------------------------------
--  DDL for Table TEAM
--------------------------------------------------------

  CREATE TABLE "PG"."TEAM" 
   (	"ID_TEAM" NUMBER(5,0), 
	"TEAMNAME" VARCHAR2(15 BYTE), 
	"QUANTITYMEMBERS" NUMBER(5,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA" ;
REM INSERTING into PG.ADMINISTRATOR
SET DEFINE OFF;
REM INSERTING into PG.CANTON
SET DEFINE OFF;
REM INSERTING into PG.COACH
SET DEFINE OFF;
REM INSERTING into PG.COACHXCOMPETITOR
SET DEFINE OFF;
REM INSERTING into PG.COMPETITION
SET DEFINE OFF;
REM INSERTING into PG.COMPETITIONTYPE
SET DEFINE OFF;
REM INSERTING into PG.COMPETITOR
SET DEFINE OFF;
REM INSERTING into PG.COMPETITORXCOMPETITION
SET DEFINE OFF;
REM INSERTING into PG.COMPETITORXDISABILITY
SET DEFINE OFF;
REM INSERTING into PG.COUNTRY
SET DEFINE OFF;
REM INSERTING into PG.COUNTRYXPARALYMPIC
SET DEFINE OFF;
REM INSERTING into PG.DISABILITY
SET DEFINE OFF;
REM INSERTING into PG.DISTRICT
SET DEFINE OFF;
REM INSERTING into PG.EMAIL
SET DEFINE OFF;
REM INSERTING into PG.GENDERTYPE
SET DEFINE OFF;
REM INSERTING into PG.IDENTIFICATIONTYPE
SET DEFINE OFF;
REM INSERTING into PG.MEDAL
SET DEFINE OFF;
REM INSERTING into PG.MEDALTYPE
SET DEFINE OFF;
REM INSERTING into PG.MEDALXCOMPETITIONXCOMPETITOR
SET DEFINE OFF;
REM INSERTING into PG.NATIONALITY
SET DEFINE OFF;
REM INSERTING into PG.NATIONALITYXPERSON
SET DEFINE OFF;
REM INSERTING into PG.PARALYMPIC
SET DEFINE OFF;
REM INSERTING into PG.PARALYMPICXCOMPETITION
SET DEFINE OFF;
REM INSERTING into PG.PERSON
SET DEFINE OFF;
REM INSERTING into PG.PERSONXPHONE
SET DEFINE OFF;
REM INSERTING into PG.PHONE
SET DEFINE OFF;
REM INSERTING into PG.PHONETYPE
SET DEFINE OFF;
REM INSERTING into PG.PICTURE
SET DEFINE OFF;
REM INSERTING into PG.PROVINCE
SET DEFINE OFF;
REM INSERTING into PG.SCORE
SET DEFINE OFF;
REM INSERTING into PG.TEAM
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table MEDALTYPE
--------------------------------------------------------

  ALTER TABLE "PG"."MEDALTYPE" ADD PRIMARY KEY ("ID_MEDALTYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
 
  ALTER TABLE "PG"."MEDALTYPE" MODIFY ("TYPENAME" CONSTRAINT "TYPE_NAME_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COACHXCOMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."COACHXCOMPETITOR" ADD PRIMARY KEY ("ID_COACHXCOMPETITOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSONXPHONE
--------------------------------------------------------

  ALTER TABLE "PG"."PERSONXPHONE" ADD PRIMARY KEY ("ID_PHONEXPERSON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRYXPARALYMPIC
--------------------------------------------------------

  ALTER TABLE "PG"."COUNTRYXPARALYMPIC" ADD PRIMARY KEY ("ID_COUNTRYXPARALYMPIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONE
--------------------------------------------------------

  ALTER TABLE "PG"."PHONE" MODIFY ("PHONENUMBER" CONSTRAINT "PHONE_NUMBER_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."PHONE" ADD PRIMARY KEY ("ID_PHONE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITOR" MODIFY ("CLASIFICATIONSCORE" CONSTRAINT "CLASIFICATION_SCORE_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."COMPETITOR" ADD PRIMARY KEY ("ID_COMPETITOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPETITORXCOMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITORXCOMPETITION" ADD PRIMARY KEY ("ID_COMPETITORXCOMPETITION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENDERTYPE
--------------------------------------------------------

  ALTER TABLE "PG"."GENDERTYPE" MODIFY ("GENDERTYPE" CONSTRAINT "GENDER_TYPE_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."GENDERTYPE" ADD PRIMARY KEY ("ID_GENDERTYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SCORE
--------------------------------------------------------

  ALTER TABLE "PG"."SCORE" MODIFY ("QUANTITY" CONSTRAINT "QUANTITY_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."SCORE" ADD PRIMARY KEY ("ID_SCORE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPETITORXDISABILITY
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITORXDISABILITY" ADD PRIMARY KEY ("ID_COMPETITORXDISABILITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NATIONALITY
--------------------------------------------------------

  ALTER TABLE "PG"."NATIONALITY" MODIFY ("NATIONALITYNAME" CONSTRAINT "NATIONALITY_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."NATIONALITY" ADD PRIMARY KEY ("ID_NATIONALITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMINISTRATOR
--------------------------------------------------------

  ALTER TABLE "PG"."ADMINISTRATOR" MODIFY ("PASSWORD_ADMIN" CONSTRAINT "PASSWORD_ADMIN_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."ADMINISTRATOR" ADD PRIMARY KEY ("ID_ADMIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
 
  ALTER TABLE "PG"."ADMINISTRATOR" MODIFY ("USERNAME" CONSTRAINT "USERNAME_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROVINCE
--------------------------------------------------------

  ALTER TABLE "PG"."PROVINCE" MODIFY ("PROVINCE_NAME" CONSTRAINT "PROVINCE_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."PROVINCE" ADD PRIMARY KEY ("ID_PROVINCE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PICTURE
--------------------------------------------------------

  ALTER TABLE "PG"."PICTURE" ADD PRIMARY KEY ("ID_PICTURE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DISABILITY
--------------------------------------------------------

  ALTER TABLE "PG"."DISABILITY" MODIFY ("DISABILITYNAME" CONSTRAINT "DISABILITY_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."DISABILITY" ADD PRIMARY KEY ("ID_DISABILITY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDALXCOMPETITIONXCOMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."MEDALXCOMPETITIONXCOMPETITOR" ADD PRIMARY KEY ("ID_MEDALXCOMPXCOMP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEDAL
--------------------------------------------------------

  ALTER TABLE "PG"."MEDAL" ADD PRIMARY KEY ("ID_MEDAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PARALYMPICXCOMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."PARALYMPICXCOMPETITION" ADD PRIMARY KEY ("ID_PARALYMPICXCOMPETITION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DISTRICT
--------------------------------------------------------

  ALTER TABLE "PG"."DISTRICT" MODIFY ("DISTRICT_NAME" CONSTRAINT "DISTRICT_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."DISTRICT" ADD PRIMARY KEY ("ID_DISTRICT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONETYPE
--------------------------------------------------------

  ALTER TABLE "PG"."PHONETYPE" MODIFY ("PHONETYPE" CONSTRAINT "PHONE_TYPE_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."PHONETYPE" ADD PRIMARY KEY ("ID_PHONETYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITION" MODIFY ("COMPETITIONDATE" CONSTRAINT "COMPETITION_DATE_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."COMPETITION" MODIFY ("COMPETITIONNAME" CONSTRAINT "COMPETITION_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."COMPETITION" MODIFY ("COMPETITIONDESCRIPTION" CONSTRAINT "DESCRIPTION_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."COMPETITION" ADD PRIMARY KEY ("ID_COMPETITION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CANTON
--------------------------------------------------------

  ALTER TABLE "PG"."CANTON" MODIFY ("CANTON_NAME" CONSTRAINT "CANTON_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."CANTON" ADD PRIMARY KEY ("ID_CANTON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PARALYMPIC
--------------------------------------------------------

  ALTER TABLE "PG"."PARALYMPIC" MODIFY ("PARALYMPICS_YEAR" CONSTRAINT "PARALYMPICS_YEAR_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."PARALYMPIC" ADD PRIMARY KEY ("ID_PARALYMPIC")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMAIL
--------------------------------------------------------

  ALTER TABLE "PG"."EMAIL" MODIFY ("EMAILADRESS" CONSTRAINT "EMAIL_ADRESS_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."EMAIL" ADD PRIMARY KEY ("ID_EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TEAM
--------------------------------------------------------

  ALTER TABLE "PG"."TEAM" ADD PRIMARY KEY ("ID_TEAM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
 
  ALTER TABLE "PG"."TEAM" MODIFY ("TEAMNAME" CONSTRAINT "TEAM_NAME_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NATIONALITYXPERSON
--------------------------------------------------------

  ALTER TABLE "PG"."NATIONALITYXPERSON" ADD PRIMARY KEY ("ID_NATIONALITYXPERSON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table IDENTIFICATIONTYPE
--------------------------------------------------------

  ALTER TABLE "PG"."IDENTIFICATIONTYPE" MODIFY ("IDENTIFICATIONTYPE" CONSTRAINT "IDENTIFICATION_TYPE_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."IDENTIFICATIONTYPE" ADD PRIMARY KEY ("ID_IDENTIFICATIONTYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PG"."PERSON" ADD PRIMARY KEY ("ID_PERSON")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COACH
--------------------------------------------------------

  ALTER TABLE "PG"."COACH" ADD PRIMARY KEY ("ID_COACH")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "PG"."COUNTRY" MODIFY ("COUNTRY_NAME" CONSTRAINT "COUNTRY_NAME_NOT_NULL" NOT NULL ENABLE);
 
  ALTER TABLE "PG"."COUNTRY" ADD PRIMARY KEY ("ID_COUNTRY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPETITIONTYPE
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITIONTYPE" ADD PRIMARY KEY ("ID_COMPETITIONTYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "PG_DATA"  ENABLE;
 
  ALTER TABLE "PG"."COMPETITIONTYPE" MODIFY ("TYPEDESCRIPTION" CONSTRAINT "TYPE_DESCRIPTION_NOT_NULL" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ADMINISTRATOR
--------------------------------------------------------

  ALTER TABLE "PG"."ADMINISTRATOR" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CANTON
--------------------------------------------------------

  ALTER TABLE "PG"."CANTON" ADD FOREIGN KEY ("ID_PROVINCE")
	  REFERENCES "PG"."PROVINCE" ("ID_PROVINCE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COACH
--------------------------------------------------------

  ALTER TABLE "PG"."COACH" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
 
  ALTER TABLE "PG"."COACH" ADD FOREIGN KEY ("ID_TEAM")
	  REFERENCES "PG"."TEAM" ("ID_TEAM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COACHXCOMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."COACHXCOMPETITOR" ADD FOREIGN KEY ("ID_COACH")
	  REFERENCES "PG"."COACH" ("ID_COACH") ENABLE;
 
  ALTER TABLE "PG"."COACHXCOMPETITOR" ADD FOREIGN KEY ("ID_COMPETITOR")
	  REFERENCES "PG"."COMPETITOR" ("ID_COMPETITOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITION" ADD FOREIGN KEY ("ID_COMPETITIONTYPE")
	  REFERENCES "PG"."COMPETITIONTYPE" ("ID_COMPETITIONTYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITOR" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
 
  ALTER TABLE "PG"."COMPETITOR" ADD FOREIGN KEY ("ID_TEAM")
	  REFERENCES "PG"."TEAM" ("ID_TEAM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPETITORXCOMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITORXCOMPETITION" ADD FOREIGN KEY ("ID_COMPETITION")
	  REFERENCES "PG"."COMPETITION" ("ID_COMPETITION") ENABLE;
 
  ALTER TABLE "PG"."COMPETITORXCOMPETITION" ADD FOREIGN KEY ("ID_COMPETITOR")
	  REFERENCES "PG"."COMPETITOR" ("ID_COMPETITOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPETITORXDISABILITY
--------------------------------------------------------

  ALTER TABLE "PG"."COMPETITORXDISABILITY" ADD FOREIGN KEY ("ID_DISABILITY")
	  REFERENCES "PG"."DISABILITY" ("ID_DISABILITY") ENABLE;
 
  ALTER TABLE "PG"."COMPETITORXDISABILITY" ADD FOREIGN KEY ("ID_COMPETITOR")
	  REFERENCES "PG"."COMPETITOR" ("ID_COMPETITOR") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRY
--------------------------------------------------------

  ALTER TABLE "PG"."COUNTRY" ADD FOREIGN KEY ("ID_PICTURE")
	  REFERENCES "PG"."PICTURE" ("ID_PICTURE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRYXPARALYMPIC
--------------------------------------------------------

  ALTER TABLE "PG"."COUNTRYXPARALYMPIC" ADD FOREIGN KEY ("ID_PARALYMPIC")
	  REFERENCES "PG"."PARALYMPIC" ("ID_PARALYMPIC") ENABLE;
 
  ALTER TABLE "PG"."COUNTRYXPARALYMPIC" ADD FOREIGN KEY ("ID_COUNTRY")
	  REFERENCES "PG"."COUNTRY" ("ID_COUNTRY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DISTRICT
--------------------------------------------------------

  ALTER TABLE "PG"."DISTRICT" ADD FOREIGN KEY ("ID_CANTON")
	  REFERENCES "PG"."CANTON" ("ID_CANTON") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMAIL
--------------------------------------------------------

  ALTER TABLE "PG"."EMAIL" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEDAL
--------------------------------------------------------

  ALTER TABLE "PG"."MEDAL" ADD FOREIGN KEY ("ID_MEDALTYPE")
	  REFERENCES "PG"."MEDALTYPE" ("ID_MEDALTYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEDALXCOMPETITIONXCOMPETITOR
--------------------------------------------------------

  ALTER TABLE "PG"."MEDALXCOMPETITIONXCOMPETITOR" ADD FOREIGN KEY ("ID_MEDAL")
	  REFERENCES "PG"."MEDAL" ("ID_MEDAL") ENABLE;
 
  ALTER TABLE "PG"."MEDALXCOMPETITIONXCOMPETITOR" ADD FOREIGN KEY ("ID_COMPETITORXCOMPETITION")
	  REFERENCES "PG"."COMPETITORXCOMPETITION" ("ID_COMPETITORXCOMPETITION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NATIONALITYXPERSON
--------------------------------------------------------

  ALTER TABLE "PG"."NATIONALITYXPERSON" ADD FOREIGN KEY ("ID_NATIONALITY")
	  REFERENCES "PG"."NATIONALITY" ("ID_NATIONALITY") ENABLE;
 
  ALTER TABLE "PG"."NATIONALITYXPERSON" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARALYMPIC
--------------------------------------------------------

  ALTER TABLE "PG"."PARALYMPIC" ADD FOREIGN KEY ("ID_COUNTRY")
	  REFERENCES "PG"."COUNTRY" ("ID_COUNTRY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARALYMPICXCOMPETITION
--------------------------------------------------------

  ALTER TABLE "PG"."PARALYMPICXCOMPETITION" ADD FOREIGN KEY ("ID_PARALYMPIC")
	  REFERENCES "PG"."PARALYMPIC" ("ID_PARALYMPIC") ENABLE;
 
  ALTER TABLE "PG"."PARALYMPICXCOMPETITION" ADD FOREIGN KEY ("ID_COMPETITION")
	  REFERENCES "PG"."COMPETITION" ("ID_COMPETITION") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PG"."PERSON" ADD FOREIGN KEY ("ID_PICTURE")
	  REFERENCES "PG"."PICTURE" ("ID_PICTURE") ENABLE;
 
  ALTER TABLE "PG"."PERSON" ADD FOREIGN KEY ("ID_COUNTRY")
	  REFERENCES "PG"."COUNTRY" ("ID_COUNTRY") ENABLE;
 
  ALTER TABLE "PG"."PERSON" ADD FOREIGN KEY ("ID_GENDERTYPE")
	  REFERENCES "PG"."GENDERTYPE" ("ID_GENDERTYPE") ENABLE;
 
  ALTER TABLE "PG"."PERSON" ADD FOREIGN KEY ("ID_IDENTIFICATIONTYPE")
	  REFERENCES "PG"."IDENTIFICATIONTYPE" ("ID_IDENTIFICATIONTYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSONXPHONE
--------------------------------------------------------

  ALTER TABLE "PG"."PERSONXPHONE" ADD FOREIGN KEY ("ID_PERSON")
	  REFERENCES "PG"."PERSON" ("ID_PERSON") ENABLE;
 
  ALTER TABLE "PG"."PERSONXPHONE" ADD FOREIGN KEY ("ID_PHONE")
	  REFERENCES "PG"."PHONE" ("ID_PHONE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PHONE
--------------------------------------------------------

  ALTER TABLE "PG"."PHONE" ADD FOREIGN KEY ("ID_PHONETYPE")
	  REFERENCES "PG"."PHONETYPE" ("ID_PHONETYPE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PROVINCE
--------------------------------------------------------

  ALTER TABLE "PG"."PROVINCE" ADD FOREIGN KEY ("ID_COUNTRY")
	  REFERENCES "PG"."COUNTRY" ("ID_COUNTRY") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCORE
--------------------------------------------------------

  ALTER TABLE "PG"."SCORE" ADD FOREIGN KEY ("ID_COMPETITION")
	  REFERENCES "PG"."COMPETITION" ("ID_COMPETITION") ENABLE;
