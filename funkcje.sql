-- Ranking dlugosci filmow --
create or replace FUNCTION get_movie_length_rank(movieid NUMBER) RETURN NUMBER IS
    v_rank NUMBER;
BEGIN
    SELECT length_rank INTO v_rank
    FROM (
        SELECT movie_id, 
            RANK() OVER (ORDER BY movie_length DESC) AS length_rank
        FROM Movies
    )
    WHERE movie_id = movieid;
    RETURN v_rank;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;  

-- wywolanie --
SELECT get_movie_length_rank(2) AS movie_rank FROM dual;

-- Wynagrodzenie pracownikow widelki --
CREATE OR REPLACE PROCEDURE show_employees_by_salary_range (
    min_salary IN NUMBER,
    max_salary IN NUMBER
)
IS
BEGIN
    FOR x IN (
        SELECT employee_id, first_name, last_name, salary
        FROM employees
        WHERE salary BETWEEN min_salary AND max_salary
        ORDER BY salary
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('ID: ' || x.employee_id || 
                             ', Imię: ' || x.first_name || 
                             ', Nazwisko: ' || x.last_name || 
                             ', Pensja: ' || x.salary);
    END LOOP;
END;

-- Wywolanie --
BEGIN
    show_employees_by_salary_range(3000, 6000);
END;