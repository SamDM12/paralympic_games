/*CREATE OR REPLACE PACKAGE addData AS
    PROCEDURE addPerson(idPerson OUT INT, firstName IN VARCHAR2, secondName IN VARCHAR2, firstLastName IN VARCHAR2, secondLastName IN VARCHAR2, country IN VARCHAR2, gener IN VARCHAR2, identification IN VARCHAR2);
    PROCEDURE addCompetitor(idCompetitor OUT INT, idPerson OUT INT, teamName IN VARCHAR2, competitorScore IN INT);
    PROCEDURE addCoach(idPerson OUT INT, idCoach OUT INT, idPerson IN VARCHAR2, teamName IN VARCHAR2);
    PROCEDURE addAdmin(idPerson OUT INT, idAdmin OUT INT, userName IN VARCHAR2, passWd IN VARCHAR2);
    PROCEDURE addCountry(idCountry OUT INT, countryName IN VARCHAR2);
    PROCEDURE addCompetition(idCompetition OUT INT, competitionName IN VARCHAR2, descriptionCompetition IN VARCHAR2, competitionDate IN DATE, paralimpicYear IN INT);
    PROCEDURE addDisability(idDisability OUT INT, disabilityName IN VARCHAR2);
    PROCEDURE addTeam(idTeam OUT INT, teamName VARCHAR2);
END addData;
*/
CREATE OR REPLACE PACKAGE getData AS
    PROCEDURE getCountry(cur OUT SYS_REFCURSOR);
    PROCEDURE getTeam(cur OUT SYS_REFCURSOR);
    PROCEDURE getCompetitor(cur OUT SYS_REFCURSOR);
    PROCEDURE getCoach(cur OUT SYS_REFCURSOR);
    PROCEDURE getOlimpic(cur OUT SYS_REFCURSOR);
    PROCEDURE getGenderType(cur OUT SYS_REFCURSOR);
    
END getData;
/

CREATE OR REPLACE PACKAGE BODY getData AS
    PROCEDURE getCountry(cur OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN cur FOR
            SELECT country_Name
            FROM COUNTRY;
    END getCountry;

    PROCEDURE getTeam (cur OUT SYS_REFCURSOR)IS
    BEGIN
        OPEN cur FOR
            SELECT teamName
            FROM team;
    END getTeam;

    PROCEDURE getCompetitor(cur OUT SYS_REFCURSOR) IS
    BEGIN
         OPEN cur FOR
            SELECT p.identificationNumber, p.FirstName, p.FirstLastName
            FROM person p
            JOIN competitor c ON p.id_person = c.id_person; 
    END getCompetitor;

    PROCEDURE getCoach(cur OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN cur FOR
            SELECT p.identificationNumber, p.FirstName, p.FirstLastName
            FROM person p
            JOIN coach c ON p.id_person = c.id_person; 
        END getCoach;
    PROCEDURE getOlimpic(cur OUT SYS_REFCURSOR) IS
    BEGIN
        OPEN cur FOR
            SELECT p.Paralympics_year, c.country_Name
            FROM paralympic p
            JOIN country c ON p.ID_country = c.ID_country;
    END getOlimpic;
    PROCEDURE getGenderType(cur OUT SYS_REFCURSOR) IS
    BEGIN 
        OPEN cur FOR
            SELECT genderType
            FROM genderType;
    END getGenderType; 
END getData;