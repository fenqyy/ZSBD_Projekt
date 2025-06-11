-- BOOKING TEST -- 
BEGIN
    CRUD_BOOKING(
        crud => 'insert',
        showtimeid => 5,
        userid => 1,
        seatid => 103,
        payment => 'Paid'
    );
END;

BEGIN
    CRUD_BOOKING(
        crud => 'update',
        bookingid => 10,
        seatid => 104
    );
END;

BEGIN
    CRUD_BOOKING(
        crud => 'delete',
        bookingid => 10
    );
END;

-- CINEMA HALLS TEST --
BEGIN
    CRUD_HALLS(
        crud => 'insert',
        hallname => 'sala1',
        hallnumber => 3,
        cinemaid => 2
    );
END;

BEGIN
    CRUD_HALLS(
        crud => 'update',
        hallid => 3,
        hallnumber => 4
    );
END;

BEGIN
    CRUD_HALLS(
        crud => 'delete',
        hallid => 3
    );
END;

-- CINEMAS TEST -- 
BEGIN
    CRUD_CINEMAS(
        crud => 'insert',
        cinemaname => 'Helios',
        street => 'ul. Kwiatowa 104',
        phone => 890789123,
        v_email => 'helios@example.com',
        locationid => 2
    );
END;

BEGIN
    CRUD_CINEMAS(
        crud => 'update',
        cinemaid => 4,
        street => 'ul. Odzieżowa 49'
    );
END;

BEGIN
    CRUD_CINEMAS(
        crud => 'delete',
        cinemaid => 3
    );
END;

-- COUNTRY TEST --

BEGIN
    crud_country(
        crud => 'insert',
        countryname => 'Litwa'
    );
END;

BEGIN
    crud_country(
        crud => 'update',
        countryid => 3,
        countryname => 'Islandia'
    );
END;

BEGIN
    crud_country(
        crud => 'delete',
        countryid => 3
    );
END;

-- EMPLOYEE TEST --
BEGIN
    crud_employee(
        crud => 'insert',
        firstname => 'Jan',
        lastname => 'Kowalski',
        email => 'j.kowal@example.com',
        phonenumber => '111111111',
        jobid => 20,
        cinemaid => 4,
        hiredate => '20/10/10',
        salary => 4200,
        contracttype => 'Full-time',
        contractend => '25/11/11'
    );
END;

BEGIN
    crud_employee(
        crud => 'update',
        employeeid => 20,
        firstname => 'August'
    );
END;

BEGIN
    crud_employee(
        crud => 'delete',
        employeeid => 20
    );
END;

-- JOBS TEST --
BEGIN
    crud_jobs(
        crud => 'insert',
        v_jobname => 'Kierownik',
        minsalary => 3000,
        maxsalary => 7000
    );
END;

BEGIN
    crud_jobs(
        crud => 'update',
        jobid => 21,
        jobtitle => 'Nadkierownik'
    );
END;

BEGIN 
    crud_jobs(
        crud => 'delete',
        jobid => 21
    );
END;

-- LOCATION TEST --
BEGIN
    crud_locations(
        crud => 'insert',
        city => 'Boston',
        postalcode => '22-333',
        stateprovince => 'masasiuczets',
        countryid => 1
    );
END;

BEGIN
    crud_locations(
        crud => 'update',
        locationid => 4,
        stateprovince => 'Massachusetts'
    );
END;

BEGIN
    crud_locations(
        crud => 'delete',
        locationid = 4
    );
END;

-- MOVIES TEST --
BEGIN
    crud_movies(
        crud => 'insert',
        moviename => 'Bladerunner2049',
        movielength => '163',
        movieposter => 'bladerunner.jpg',
        movielanguage => 'Polish',
        releasedate => '17/10/03',
        moviedescription => 'K looking for android child',
        genre => 'Sci-Fi'
    );
END;

BEGIN
     crud_movies(
        crud => 'update',
        movieid => 5,
        moviename => 'Blade runner 2049'
    );
END;

BEGIN
    crud_movies(
        crud => 'delete',
        movieid => 5
    );
END;

-- SEATS TEST --
BEGIN
    crud_seats(
        crud => 'insert',
        hallid => 1,
        seatnumber => '106',
        seattype => 'VIP',
        seatstatus => 'Available'
    );
END;

BEGIN
    crud_seats(
        crud => 'update',
        seatid => 11,
        seatnumber => '107'
    );
END;

BEGIN 
    crud_seats(
        crud => 'delete',
        seatid => 11
    );
END;

-- SHOWTIMES TEST --
BEGIN
    crud_showtimes(
        crud => 'insert',
        showtimename => 'Super show',
        movieid => 2,
        hallid => 2,
        starttime => '25/07/13 14:30:00',
        endtime => '25/07/13 16:30:00',
        ticketprice => 29.99
    );
END;

BEGIN
    crud_showtimes(
        crud => 'update',
        showtimeid => 6,
        endtime => '25/07/13 19:30:00'
    );
END;

BEGIN
    crud_showtimes(
        crud => 'delete',
        showtimeid => 6
    );
END;

-- USERS TEST --
BEGIN
    crud_users(
        crud => 'insert',
        username => 'Gigachad',
        email => 'gigachad@example.com',
        phonenumber => '600700800'
    );
END;

BEGIN
    crud_users(
        crud => 'update',
        userid => 11,
        phonenumber => '123456789'
    );
END;

BEGIN
    crud_users(
        crud => 'delete',
        userid => 11
    );
END;