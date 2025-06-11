-- BOOKINGS CRUD --

create or replace PROCEDURE crud_booking (
    crud       IN VARCHAR2,
    bookingid  IN BOOKINGS.booking_id%TYPE DEFAULT NULL,
    showtimeid IN BOOKINGS.showtime_id%TYPE DEFAULT NULL,
    userid     IN BOOKINGS.user_id%TYPE DEFAULT NULL,
    seatid     IN BOOKINGS.seat_id%TYPE DEFAULT NULL,
    payment    IN BOOKINGS.payment_status%TYPE DEFAULT NULL,
    purchase   IN BOOKINGS.purchase_date%TYPE DEFAULT SYSDATE
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO BOOKINGS (showtime_id, user_id, seat_id, payment_status, purchase_date)
            VALUES (showtimeid, userid, seatid, payment, purchase);
            DBMS_OUTPUT.PUT_LINE('Dodano rezerwacje.');
        WHEN 'update' THEN
            UPDATE BOOKINGS
            SET showtime_id    = NVL(showtimeid, showtime_id),
                user_id        = NVL(userid, user_id),
                seat_id        = NVL(seatid, seat_id),
                payment_status = NVL(payment, payment_status),
                purchase_date  = NVL(purchase, purchase_date)
            WHERE booking_id = bookingid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono rezerwacji do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano rezerwację.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM BOOKINGS WHERE booking_id = bookingid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono rezerwacji do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto rezerwację.');
            END IF;
        ELSE
            RAISE error_crud;
    END CASE;
EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- CINEMA_HALLS CRUD --
CREATE OR REPLACE PROCEDURE CRUD_HALLS (
    crud IN VARCHAR2,
    hallid IN CINEMA_HALLS.cinema_hall_id%TYPE DEFAULT NULL,
    hallname IN CINEMA_HALLS.hall_name%TYPE DEFAULT NULL,
    hallnumber IN CINEMA_HALLS.hall_number%TYPE DEFAULT NULL,
    cinemaid IN CINEMA_HALLS.cinema_id%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO CINEMA_HALLS (hall_name, hall_number, cinema_id)
            VALUES (hallname, hallnumber, cinemaid);
            DBMS_OUTPUT.PUT_LINE('Dodano salę.');
        WHEN 'update' THEN
            UPDATE CINEMA_HALLS
            SET cinema_hall_id   = NVL(hallid, cinema_hall_id),
                hall_name        = NVL(hallname, hall_name),
                hall_number      = NVL(hallnumber, hall_number),
                cinema_id        = NVL(cinemaid, cinema_id)
            WHERE cinema_hall_id = hallid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono sali do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano salę.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM CINEMA_HALLS WHERE cinema_hall_id = hallid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono sali do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto salę.');
            END IF;
        ELSE
            RAISE error_crud;
    END CASE;
EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- CINEMAS CRUD-- 
CREATE OR REPLACE PROCEDURE crud_cinemas (
    crud        IN VARCHAR2,
    cinemaid    IN Cinemas.cinema_id%TYPE DEFAULT NULL,
    cinemaname  IN Cinemas.cinema_name%TYPE DEFAULT NULL,
    street      IN Cinemas.street_address%TYPE DEFAULT NULL,
    phone       IN Cinemas.phone_number%TYPE DEFAULT NULL,
    v_email     IN Cinemas.email%TYPE DEFAULT NULL,
    locationid  IN Cinemas.location_id%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO Cinemas (cinema_name, street_address, phone_number, email, location_id)
            VALUES (cinemaname, street, phone, v_email, locationid);
            DBMS_OUTPUT.PUT_LINE('Dodano kino.');
        WHEN 'update' THEN
            UPDATE Cinemas
            SET cinema_name    = NVL(cinemaname, cinema_name),
                street_address        = NVL(street, street_address),
                phone_number        = NVL(phone, phone_number),
                email = NVL(v_email, email),
                location_id  = NVL(locationid, location_id)
            WHERE cinema_id = cinemaid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono kina do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano kino.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM Cinemas WHERE cinema_id = cinemaid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono kina do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto kino.');
            END IF;
        ELSE
            RAISE error_crud;
    END CASE;
EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- COUNTRIES CRUD--
CREATE OR REPLACE PROCEDURE crud_country (
    crud         IN VARCHAR2,
    countryid    IN Countries.country_id%TYPE DEFAULT NULL,
    countryname  IN Countries.country_name%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO Countries (country_name)
            VALUES (countryname);
            DBMS_OUTPUT.PUT_LINE('Dodano kraj.');

        WHEN 'update' THEN
            UPDATE Countries
            SET country_name = NVL(countryname, country_name)
            WHERE country_id = countryid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono kraju do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano kraj.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM Countries WHERE country_id = countryid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono kraju do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto kraj.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- EMPLOYEES CRUD -- 
CREATE OR REPLACE PROCEDURE crud_employee (
    crud           IN VARCHAR2,
    employeeid     IN Employees.employee_id%TYPE DEFAULT NULL,
    firstname      IN Employees.first_name%TYPE DEFAULT NULL,
    lastname       IN Employees.last_name%TYPE DEFAULT NULL,
    email          IN Employees.email%TYPE DEFAULT NULL,
    phonenumber    IN Employees.phone_number%TYPE DEFAULT NULL,
    jobid          IN Employees.job_id%TYPE DEFAULT NULL,
    cinemaid       IN Employees.cinema_id%TYPE DEFAULT NULL,
    hiredate       IN Employees.hire_date%TYPE DEFAULT NULL,
    salary         IN Employees.salary%TYPE DEFAULT NULL,
    contracttype   IN Employees.contract_type%TYPE DEFAULT NULL,
    contractend    IN Employees.contract_end%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO Employees (
                first_name, last_name, email, phone_number,
                job_id, cinema_id, hire_date, salary,
                contract_type, contract_end
            )
            VALUES (
                firstname, lastname, email, phonenumber,
                jobid, cinemaid, hiredate, salary,
                contracttype, contractend
            );
            DBMS_OUTPUT.PUT_LINE('Dodano pracownika.');

        WHEN 'update' THEN
            UPDATE Employees
            SET first_name     = NVL(firstname, first_name),
                last_name      = NVL(lastname, last_name),
                email          = NVL(email, email),
                phone_number   = NVL(phonenumber, phone_number),
                job_id         = NVL(jobid, job_id),
                cinema_id      = NVL(cinemaid, cinema_id),
                hire_date      = NVL(hiredate, hire_date),
                salary         = NVL(salary, salary),
                contract_type  = NVL(contracttype, contract_type),
                contract_end   = NVL(contractend, contract_end)
            WHERE employee_id = employeeid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono pracownika do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano pracownika.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM Employees WHERE employee_id = employeeid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono pracownika do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto pracownika.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- JOBS CRUD -- 
CREATE OR REPLACE PROCEDURE crud_jobs (
    crud       IN VARCHAR2,
    jobid      IN jobs.job_id%TYPE DEFAULT NULL,
    v_jobname   IN jobs.job_name%TYPE DEFAULT NULL,
    minsalary  IN jobs.min_salary%TYPE DEFAULT NULL,
    maxsalary  IN jobs.max_salary%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO jobs (job_name, min_salary, max_salary)
            VALUES (v_jobname, minsalary, maxsalary);
            DBMS_OUTPUT.PUT_LINE('Dodano stanowisko pracy.');
        WHEN 'update' THEN
            UPDATE jobs
            SET job_name = NVL(v_jobname, job_name),
                min_salary = NVL(minsalary, min_salary),
                max_salary = NVL(maxsalary, max_salary)
            WHERE job_id = jobid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono stanowiska do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano stanowisko.');
            END IF;
        WHEN 'delete' THEN
            DELETE FROM jobs WHERE job_id = jobid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono stanowiska do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto stanowisko.');
            END IF;
        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- LOCATIONS CRUD --
CREATE OR REPLACE PROCEDURE crud_locations (
    crud          IN VARCHAR2,
    locationid    IN locations.location_id%TYPE DEFAULT NULL,
    city          IN locations.city%TYPE DEFAULT NULL,
    postalcode    IN locations.postal_code%TYPE DEFAULT NULL,
    stateprovince IN locations.state_province%TYPE DEFAULT NULL,
    countryid     IN locations.country_id%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO locations (city, postal_code, state_province, country_id)
            VALUES (city, postalcode, stateprovince, countryid);
            DBMS_OUTPUT.PUT_LINE('Dodano lokalizację.');
        WHEN 'update' THEN
            UPDATE locations
            SET city = NVL(city, city),
                postal_code = NVL(postalcode, postal_code),
                state_province = NVL(stateprovince, state_province),
                country_id = NVL(countryid, country_id)
            WHERE location_id = locationid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono lokalizacji do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano lokalizację.');
            END IF;
        WHEN 'delete' THEN
            DELETE FROM locations WHERE location_id = locationid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono lokalizacji do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto lokalizację.');
            END IF;
        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- MOVIES CRUD --
CREATE OR REPLACE PROCEDURE crud_movies (
    crud              IN VARCHAR2,
    movieid           IN movies.movie_id%TYPE DEFAULT NULL,
    moviename         IN movies.movie_name%TYPE DEFAULT NULL,
    movielength       IN movies.movie_length%TYPE DEFAULT NULL,
    movieposter       IN movies.movie_poster%TYPE DEFAULT NULL,
    movielanguage     IN movies.movie_language%TYPE DEFAULT NULL,
    releasedate       IN movies.release_date%TYPE DEFAULT NULL,
    moviedescription  IN movies.movie_description%TYPE DEFAULT NULL,
    genre             IN movies.genre%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO movies (
                movie_name, movie_length, movie_poster,
                movie_language, release_date, movie_description, genre
            )
            VALUES (
                moviename, movielength, movieposter,
                movielanguage, releasedate, moviedescription, genre
            );
            DBMS_OUTPUT.PUT_LINE('Dodano film.');

        WHEN 'update' THEN
            UPDATE movies
            SET
                movie_name        = NVL(moviename, movie_name),
                movie_length      = NVL(movielength, movie_length),
                movie_poster      = NVL(movieposter, movie_poster),
                movie_language    = NVL(movielanguage, movie_language),
                release_date      = NVL(releasedate, release_date),
                movie_description = NVL(moviedescription, movie_description),
                genre             = NVL(genre, genre)
            WHERE movie_id = movieid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono filmu do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano film.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM movies WHERE movie_id = movieid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono filmu do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto film.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- SEATS CRUD --
CREATE OR REPLACE PROCEDURE crud_seats (
    crud           IN VARCHAR2,
    seatid         IN seats.seat_id%TYPE DEFAULT NULL,
    hallid         IN seats.cinema_hall_id%TYPE DEFAULT NULL,
    seatnumber     IN seats.seat_number%TYPE DEFAULT NULL,
    seattype       IN seats.seat_type%TYPE DEFAULT NULL,
    seatstatus     IN seats.status%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO seats (cinema_hall_id, seat_number, seat_type, status)
            VALUES (hallid, seatnumber, seattype, seatstatus);
            DBMS_OUTPUT.PUT_LINE('Dodano miejsce.');

        WHEN 'update' THEN
            UPDATE seats
            SET
                cinema_hall_id = NVL(hallid, cinema_hall_id),
                seat_number    = NVL(seatnumber, seat_number),
                seat_type      = NVL(seattype, seat_type),
                status         = NVL(seatstatus, status)
            WHERE seat_id = seatid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono miejsca do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano miejsce.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM seats WHERE seat_id = seatid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono miejsca do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto miejsce.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- SHOWTIMES CRUD --
CREATE OR REPLACE PROCEDURE crud_showtimes (
    crud           IN VARCHAR2,
    showtimeid     IN SHOWTIMES.showtime_id%TYPE DEFAULT NULL,
    showtimename   IN SHOWTIMES.showtime_name%TYPE DEFAULT NULL,
    movieid        IN SHOWTIMES.movie_id%TYPE DEFAULT NULL,
    hallid         IN SHOWTIMES.cinema_hall_id%TYPE DEFAULT NULL,
    starttime      IN SHOWTIMES.start_time%TYPE DEFAULT NULL,
    endtime        IN SHOWTIMES.end_time%TYPE DEFAULT NULL,
    ticketprice    IN SHOWTIMES.ticket_price%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO SHOWTIMES (showtime_name, movie_id, cinema_hall_id, start_time, end_time, ticket_price)
            VALUES (showtimename, movieid, hallid, starttime, endtime, ticketprice);
            DBMS_OUTPUT.PUT_LINE('Dodano seans.');

        WHEN 'update' THEN
            UPDATE SHOWTIMES
            SET showtime_name   = NVL(showtimename, showtime_name),
                movie_id        = NVL(movieid, movie_id),
                cinema_hall_id  = NVL(hallid, cinema_hall_id),
                start_time      = NVL(starttime, start_time),
                end_time        = NVL(endtime, end_time),
                ticket_price    = NVL(ticketprice, ticket_price)
            WHERE showtime_id = showtimeid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono seansu do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano seans.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM SHOWTIMES WHERE showtime_id = showtimeid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono seansu do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto seans.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;

-- USERS CRUD --
CREATE OR REPLACE PROCEDURE crud_users (
    crud         IN VARCHAR2,
    userid       IN USERS.user_id%TYPE DEFAULT NULL,
    username     IN USERS.user_name%TYPE DEFAULT NULL,
    email        IN USERS.email%TYPE DEFAULT NULL,
    phonenumber  IN USERS.phone_number%TYPE DEFAULT NULL
)
IS
    error_crud EXCEPTION;
BEGIN
    CASE crud
        WHEN 'insert' THEN
            INSERT INTO USERS (user_name, email, phone_number)
            VALUES (username, email, phonenumber);
            DBMS_OUTPUT.PUT_LINE('Dodano użytkownika.');

        WHEN 'update' THEN
            UPDATE USERS
            SET user_name    = NVL(username, user_name),
                email        = NVL(email, email),
                phone_number = NVL(phonenumber, phone_number)
            WHERE user_id = userid;

            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono użytkownika do aktualizacji.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Zaktualizowano użytkownika.');
            END IF;

        WHEN 'delete' THEN
            DELETE FROM USERS WHERE user_id = userid;
            IF SQL%ROWCOUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('Nie znaleziono użytkownika do usunięcia.');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Usunięto użytkownika.');
            END IF;

        ELSE
            RAISE error_crud;
    END CASE;

EXCEPTION
    WHEN error_crud THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: Nieznana akcja "' || crud || '"');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Błąd: ' || SQLERRM);
END;