CREATE OR REPLACE PROCEDURE list_administrators (
    p_first_name IN VARCHAR2 DEFAULT NULL  -- Filtro por nombre del administrador
)
AS
    -- Se define el administrador con el filtro de nombre. 
    CURSOR admins_cursor IS
        SELECT 
            per.First_Name, 
            per.Last_Name
        FROM Administrator admin
        JOIN Person per ON admin.ID_Person = per.ID_Person
        WHERE (p_first_name IS NULL OR per.First_Name = p_first_name);

    -- Variables para almacenar los resultados del cursor
    v_first_name      Person.First_Name%TYPE;
    v_last_name       Person.Last_Name%TYPE;

BEGIN
    OPEN admins_cursor;

    -- Se recorren los resultados del cursor
    LOOP
        FETCH admins_cursor INTO v_first_name, v_last_name;
        EXIT WHEN admins_cursor%NOTFOUND;

        -- Se procesan e imprimen los datos. 
        DBMS_OUTPUT.PUT_LINE('Administrator Name: ' || v_first_name || ' ' || v_last_name);
    END LOOP;

    CLOSE admins_cursor;
END;
/