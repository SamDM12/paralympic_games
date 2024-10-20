CREATE OR REPLACE PROCEDURE list_coaches (
    p_first_name    IN VARCHAR2 DEFAULT NULL,
    p_country       IN VARCHAR2 DEFAULT NULL,  -- Nacionalidad del competidor (país del entrenador)
    p_paralympics_year IN NUMBER DEFAULT NULL
)
AS
    -- Definir el cursor para obtener los entrenadores con los filtros aplicados
    CURSOR coaches_cursor IS
        SELECT 
            per.First_Name, 
            per.Last_Name, 
            nat.Nationality_Name, 
            par.Paralympics_Year,
            par_country.Country_Name AS Paralympics_Country
        FROM Coach coach
        JOIN Person per ON coach.ID_Person = per.ID_Person
        JOIN CoachXCompetitor cxp ON coach.ID_Coach = cxp.ID_Coach
        JOIN Competitor comp ON cxp.ID_Competitor = comp.ID_Competitor
        JOIN NationalityXPerson nxp ON comp.ID_Person = nxp.ID_Person
        JOIN Nationality nat ON nxp.ID_Nationality = nat.ID_Nationality
        JOIN Paralympic par ON par.ID_Paralympic = par.ID_Paralympic
        JOIN Country par_country ON par.ID_Country = par_country.ID_Country  -- País donde ocurre la olimpiada
        WHERE (p_first_name IS NULL OR per.First_Name = p_first_name)
        AND (p_country IS NULL OR nat.Nationality_Name = p_country)
        AND (p_paralympics_year IS NULL OR par.Paralympics_Year = p_paralympics_year);

    -- Variables para almacenar los resultados del cursor
    v_first_name        Person.First_Name%TYPE;
    v_last_name         Person.Last_Name%TYPE;
    v_nationality       Nationality.Nationality_Name%TYPE;
    v_paralympics_year     Paralympic.Paralympics_Year%TYPE;
    v_paralympics_country  Country.Country_Name%TYPE;

BEGIN
 
    OPEN coaches_cursor;

    -- Recorremos los resultados del cursor
    LOOP
        FETCH coaches_cursor INTO v_first_name, v_last_name, v_nationality, v_paralympics_year, v_paralympics_country;
        EXIT WHEN coaches_cursor%NOTFOUND;

        -- Procesamos los resultados, por ejemplo, imprimiendo los datos
        DBMS_OUTPUT.PUT_LINE('Coach Name: ' || v_first_name || ' ' || v_last_name ||
                             ', Nationality: ' || v_nationality ||
                             ', Paralympics Year: ' || v_paralympics_year ||
                             ', Paralympics Country: ' || v_paralympics_country);
    END LOOP;

    CLOSE coaches_cursor;
END;
/