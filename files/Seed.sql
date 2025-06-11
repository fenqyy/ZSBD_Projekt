INSERT ALL
  INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME) VALUES (1, 'United States')
  INTO COUNTRIES VALUES (2, 'Poland')
--  INTO COUNTRIES VALUES (3, 'Germany')
--  INTO COUNTRIES VALUES (4, 'United Kingdom')
--  INTO COUNTRIES VALUES (5, 'Canada')
--  INTO COUNTRIES VALUES (6, 'Australia')
--  INTO COUNTRIES VALUES (7, 'France')
--  INTO COUNTRIES VALUES (8, 'Japan')
--  INTO COUNTRIES VALUES (9, 'Russia')
--  INTO COUNTRIES VALUES (10, 'Brazil')
SELECT 1 FROM DUAL;

--SELECT * FROM COUNTRIES;
--DELETE FROM COUNTRIES;


INSERT ALL
  INTO LOCATIONS (LOCATION_ID, CITY, STATE_PROVINCE, POSTAL_CODE, COUNTRY_ID) VALUES (1, 'New York', 'NY', '10001', 1)
  INTO LOCATIONS VALUES (2, 'Warsaw', 'Mazowieckie', '00-001', 2)
--  INTO LOCATIONS VALUES (3, 'Los Angeles', 'CA', '90001', 1)
--  INTO LOCATIONS VALUES (4, 'Chicago', 'IL', '60601', 1)
--  INTO LOCATIONS VALUES (5, 'Krakow', 'Malopolskie', '30-001', 2)
--  INTO LOCATIONS VALUES (6, 'Berlin', 'Berlin', '10115', 3)
--  INTO LOCATIONS VALUES (7, 'Munich', 'Bavaria', '80331', 3)
--  INTO LOCATIONS VALUES (8, 'London', 'England', 'SW1A 1AA', 4)
--  INTO LOCATIONS VALUES (9, 'Manchester', 'England', 'M1 1AE', 4)
--  INTO LOCATIONS VALUES (10, 'Toronto', 'Ontario', 'M5H 2N2', 5)
--  INTO LOCATIONS VALUES (11, 'Vancouver', 'British Columbia', 'V5K 0A1', 5)
--  INTO LOCATIONS VALUES (12, 'Sydney', 'NSW', '2000', 6)
--  INTO LOCATIONS VALUES (13, 'Melbourne', 'VIC', '3000', 6)
--  INTO LOCATIONS VALUES (14, 'Paris', 'Ile-de-France', '75001', 7)
--  INTO LOCATIONS VALUES (15, 'Lyon', 'Auvergne-Rhone-Alpes', '69001', 7)
--  INTO LOCATIONS VALUES (16, 'Tokyo', 'Tokyo', '100-0001', 8)
--  INTO LOCATIONS VALUES (17, 'Osaka', 'Osaka', '530-0001', 8)
--  INTO LOCATIONS VALUES (18, 'Moscow', 'Moscow', '101000', 9)
--  INTO LOCATIONS VALUES (19, 'Saint Petersburg', 'Saint Petersburg', '190000', 9)
--  INTO LOCATIONS VALUES (20, 'Rio de Janeiro', 'RJ', '20000-000', 10)
SELECT 1 FROM DUAL;

--SELECT * FROM LOCATIONS;
--DELETE FROM LOCATIONS;


INSERT ALL
  INTO CINEMAS (CINEMA_ID, CINEMA_NAME, STREET_ADDRESS, PHONE_NUMBER, EMAIL, LOCATION_ID)
    VALUES (1, 'Cinema City', '123 Broadway', '786579303', 'cinemacity@example.com', 1)
  INTO CINEMAS VALUES (2, 'Multikino', 'ul. Marszałkowska 100', '219540831', 'multikino@example.com', 2)
--  INTO CINEMAS VALUES (3, 'Regal LA', '456 Hollywood Blvd', '3105551122', 'regalla@example.com', 3)
--  INTO CINEMAS VALUES (4, 'AMC Chicago', '789 State St', '3124449876', 'amcchicago@example.com', 4)
--  INTO CINEMAS VALUES (5, 'Kino Pod Baranami', 'Rynek Główny 27', '123456789', 'baranami@example.com', 5)
--  INTO CINEMAS VALUES (6, 'Zoo Palast', 'Hardenbergstraße 29A', '030254890', 'zoopalast@example.com', 6)
--  INTO CINEMAS VALUES (7, 'CinemaxX Munich', 'Sonnenstraße 12', '089552314', 'cinemaxxmunich@example.com', 7)
--  INTO CINEMAS VALUES (8, 'Odeon London', 'Leicester Square', '02079460123', 'odeonldn@example.com', 8)
--  INTO CINEMAS VALUES (9, 'Vue Manchester', 'The Printworks', '01618320123', 'vuemcr@example.com', 9)
--  INTO CINEMAS VALUES (10, 'Scotiabank Theatre', '259 Richmond St W', '4168721234', 'scotiabank@example.com', 10)
--  INTO CINEMAS VALUES (11, 'Cineplex Vancouver', '88 West Pender St', '6048729876', 'cineplexvan@example.com', 11)
--  INTO CINEMAS VALUES (12, 'Event Cinemas Sydney', '505 George St', '0298765432', 'eventsyd@example.com', 12)
--  INTO CINEMAS VALUES (13, 'Hoyts Melbourne Central', '211 La Trobe St', '0399991111', 'hoytsmel@example.com', 13)
--  INTO CINEMAS VALUES (14, 'UGC Ciné Cité Les Halles', 'Forum des Halles', '0145812323', 'ugcparis@example.com', 14)
--  INTO CINEMAS VALUES (15, 'Pathé Lyon', 'Rue de la République', '0472151515', 'pathelyon@example.com', 15)
--  INTO CINEMAS VALUES (16, 'Toho Cinemas Shinjuku', 'Kabukicho 1-19-1', '0355512345', 'tohotokyo@example.com', 16)
--  INTO CINEMAS VALUES (17, 'Aeon Osaka', '1-1-10 Abenosuji', '0662223456', 'aeonosaka@example.com', 17)
--  INTO CINEMAS VALUES (18, 'Formula Kino Moscow', 'Kutuzovsky Ave 12', '74950001234', 'formulamoscow@example.com', 18)
--  INTO CINEMAS VALUES (19, 'Velikan Park', 'Aleksandrovskiy Park 4', '7812321456', 'velikan@example.com', 19)
--  INTO CINEMAS VALUES (20, 'Cinepolis Rio', 'Av. das Américas 3900', '552135431234', 'cinepolisrio@example.com', 20)
SELECT 1 FROM DUAL;

--SELECT * FROM CINEMAS;
--DELETE FROM CINEMAS;


INSERT ALL
  INTO JOBS (JOB_ID, JOB_NAME, MIN_SALARY, MAX_SALARY) VALUES (1, 'Ticket Seller', 2000.0, 3200.0)
  INTO JOBS VALUES (2, 'Concession Stand Attendant', 1800.0, 3000.0)
  INTO JOBS VALUES (3, 'Usher', 1800.0, 2800.0)
  INTO JOBS VALUES (4, 'Projectionist', 2500.0, 4000.0)
  INTO JOBS VALUES (5, 'Cleaning Staff', 1500.0, 2200.0)
  INTO JOBS VALUES (6, 'Customer Service Representative', 2100.0, 3500.0)
  INTO JOBS VALUES (7, 'Cinema Manager', 4000.0, 7000.0)
  INTO JOBS VALUES (8, 'Assistant Manager', 3200.0, 5000.0)
  INTO JOBS VALUES (9, 'Security Guard', 2200.0, 4000.0)
  INTO JOBS VALUES (10, 'Maintenance Technician', 2500.0, 4200.0)
  INTO JOBS VALUES (11, 'Box Office Supervisor', 3000.0, 4800.0)
  INTO JOBS VALUES (12, 'Event Coordinator', 2800.0, 4500.0)
  INTO JOBS VALUES (13, 'Marketing Specialist', 3000.0, 5200.0)
  INTO JOBS VALUES (14, 'Film Programmer', 3500.0, 6000.0)
  INTO JOBS VALUES (15, 'Sound Technician', 2700.0, 4500.0)
  INTO JOBS VALUES (16, 'Ticket Inspector', 1800.0, 2800.0)
  INTO JOBS VALUES (17, 'Concession Manager', 2800.0, 4500.0)
  INTO JOBS VALUES (18, 'Projection Room Supervisor', 3200.0, 5200.0)
  INTO JOBS VALUES (19, 'Cleaning Supervisor', 2200.0, 3500.0)
  INTO JOBS VALUES (20, 'Customer Relations Manager', 3500.0, 6000.0)
SELECT 1 FROM DUAL;

--SELECT * FROM JOBS;
--DELETE FROM JOBS;


INSERT ALL
  INTO EMPLOYEES (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, JOB_ID, CINEMA_ID, HIRE_DATE, SALARY, CONTRACT_TYPE, CONTRACT_END)
    VALUES (1, 'John', 'Doe', 'john.doe@example.com', '395310485', 1, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 4000.0, 'Full-Time', TO_DATE('2025-12-31', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '362950628', 2, 2, TO_DATE('2021-05-15', 'YYYY-MM-DD'), 2500.0, 'Part-Time', TO_DATE('2024-12-31', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (3, 'Emily', 'Johnson', 'emily.johnson@example.com', '512489321', 3, 1, TO_DATE('2022-03-01', 'YYYY-MM-DD'), 2100.0, 'Part-Time', TO_DATE('2025-03-01', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (4, 'Michael', 'Brown', 'michael.brown@example.com', '601234567', 4, 1, TO_DATE('2019-07-10', 'YYYY-MM-DD'), 3800.0, 'Full-Time', TO_DATE('2026-07-10', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (5, 'Laura', 'Davis', 'laura.davis@example.com', '723456789', 5, 2, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 1900.0, 'Part-Time', TO_DATE('2025-01-20', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (6, 'Robert', 'Wilson', 'robert.wilson@example.com', '634567890', 6, 1, TO_DATE('2020-09-01', 'YYYY-MM-DD'), 3100.0, 'Full-Time', TO_DATE('2025-09-01', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (7, 'Olivia', 'Taylor', 'olivia.taylor@example.com', '789012345', 7, 1, TO_DATE('2018-02-14', 'YYYY-MM-DD'), 5200.0, 'Full-Time', TO_DATE('2026-02-14', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (8, 'Daniel', 'Anderson', 'daniel.anderson@example.com', '345678901', 8, 2, TO_DATE('2021-08-05', 'YYYY-MM-DD'), 4200.0, 'Full-Time', TO_DATE('2025-08-05', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (9, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '956789012', 9, 1, TO_DATE('2022-06-10', 'YYYY-MM-DD'), 3300.0, 'Part-Time', TO_DATE('2026-06-10', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (10, 'James', 'Garcia', 'james.garcia@example.com', '567890123', 10, 2, TO_DATE('2020-11-30', 'YYYY-MM-DD'), 3900.0, 'Full-Time', TO_DATE('2025-11-30', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (11, 'Emma', 'Clark', 'emma.clark@example.com', '678901234', 11, 1, TO_DATE('2019-10-01', 'YYYY-MM-DD'), 3700.0, 'Full-Time', TO_DATE('2025-10-01', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (12, 'Liam', 'Lewis', 'liam.lewis@example.com', '789012346', 12, 2, TO_DATE('2022-04-15', 'YYYY-MM-DD'), 3100.0, 'Part-Time', TO_DATE('2026-04-15', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (13, 'Isabella', 'Lee', 'isabella.lee@example.com', '890123457', 13, 1, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 3300.0, 'Full-Time', TO_DATE('2025-12-31', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (14, 'William', 'Walker', 'william.walker@example.com', '901234568', 14, 2, TO_DATE('2019-06-18', 'YYYY-MM-DD'), 4400.0, 'Full-Time', TO_DATE('2026-06-18', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (15, 'Ava', 'Hall', 'ava.hall@example.com', '112233445', 15, 1, TO_DATE('2021-07-22', 'YYYY-MM-DD'), 3000.0, 'Part-Time', TO_DATE('2025-07-22', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (16, 'Ethan', 'Allen', 'ethan.allen@example.com', '223344556', 16, 2, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 2600.0, 'Part-Time', TO_DATE('2026-01-10', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (17, 'Mia', 'Young', 'mia.young@example.com', '334455667', 17, 1, TO_DATE('2020-03-25', 'YYYY-MM-DD'), 3100.0, 'Full-Time', TO_DATE('2025-03-25', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (18, 'Noah', 'King', 'noah.king@example.com', '445566778', 18, 2, TO_DATE('2021-09-19', 'YYYY-MM-DD'), 3700.0, 'Full-Time', TO_DATE('2026-09-19', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (19, 'Charlotte', 'Scott', 'charlotte.scott@example.com', '556677889', 19, 1, TO_DATE('2018-12-12', 'YYYY-MM-DD'), 2900.0, 'Part-Time', TO_DATE('2024-12-12', 'YYYY-MM-DD'))
  INTO EMPLOYEES VALUES (20, 'Benjamin', 'Green', 'benjamin.green@example.com', '667788990', 20, 2, TO_DATE('2022-02-02', 'YYYY-MM-DD'), 4100.0, 'Full-Time', TO_DATE('2027-02-02', 'YYYY-MM-DD'))
SELECT 1 FROM DUAL;

--SELECT * FROM EMPLOYEES;
--DELETE FROM EMPLOYEES;


INSERT ALL
  INTO CINEMA_HALLS (CINEMA_HALL_ID, HALL_NAME, HALL_NUMBER, CINEMA_ID) VALUES (1, 'Hall 1', 1, 1)
  INTO CINEMA_HALLS VALUES (2, 'Hall 2', 2, 2)
--  INTO CINEMA_HALLS VALUES (3, 'Hall 1', 1, 3)
--  INTO CINEMA_HALLS VALUES (4, 'Hall 1', 1, 4)
--  INTO CINEMA_HALLS VALUES (5, 'Hall 2', 2, 5)
--  INTO CINEMA_HALLS VALUES (6, 'Hall 1', 1, 6)
--  INTO CINEMA_HALLS VALUES (7, 'Hall 2', 2, 7)
--  INTO CINEMA_HALLS VALUES (8, 'Hall 1', 1, 8)
--  INTO CINEMA_HALLS VALUES (9, 'Hall 2', 2, 9)
--  INTO CINEMA_HALLS VALUES (10, 'Hall 1', 1, 10)
--  INTO CINEMA_HALLS VALUES (11, 'Hall 2', 2, 11)
--  INTO CINEMA_HALLS VALUES (12, 'Hall 1', 1, 12)
--  INTO CINEMA_HALLS VALUES (13, 'Hall 2', 2, 13)
--  INTO CINEMA_HALLS VALUES (14, 'Hall 1', 1, 14)
--  INTO CINEMA_HALLS VALUES (15, 'Hall 2', 2, 15)
--  INTO CINEMA_HALLS VALUES (16, 'Hall 1', 1, 16)
--  INTO CINEMA_HALLS VALUES (17, 'Hall 2', 2, 17)
--  INTO CINEMA_HALLS VALUES (18, 'Hall 1', 1, 18)
--  INTO CINEMA_HALLS VALUES (19, 'Hall 2', 2, 19)
--  INTO CINEMA_HALLS VALUES (20, 'Hall 1', 1, 20)
SELECT 1 FROM DUAL;

--SELECT * FROM CINEMA_HALLS;
--DELETE FROM CINEMA_HALLS;


INSERT ALL
  INTO SEATS (SEAT_ID,CINEMA_HALL_ID,SEAT_NUMBER,SEAT_TYPE,STATUS) VALUES (1,1,101,'Regular','Available')
  INTO SEATS VALUES (2, 1, 102, 'Regular', 'Available')
  INTO SEATS VALUES (3, 1, 103, 'Regular', 'Booked')
  INTO SEATS VALUES (4, 1, 104, 'VIP', 'Available')
  INTO SEATS VALUES (5, 1, 105, 'VIP', 'Booked')
  INTO SEATS VALUES (6, 2, 201, 'Regular', 'Available')
  INTO SEATS VALUES (7, 2, 202, 'Regular', 'Booked')
  INTO SEATS VALUES (8, 2, 203, 'VIP', 'Available')
  INTO SEATS VALUES (9, 2, 204, 'VIP', 'Available')
  INTO SEATS VALUES (10, 2, 205, 'Regular', 'Available')
--  INTO SEATS VALUES (11, 3, 301, 'Regular', 'Available')
--  INTO SEATS VALUES (12, 3, 302, 'Regular', 'Booked')
--  INTO SEATS VALUES (13, 3, 303, 'VIP', 'Available')
--  INTO SEATS VALUES (14, 3, 304, 'VIP', 'Booked')
--  INTO SEATS VALUES (15, 3, 305, 'Regular', 'Available')
--  INTO SEATS VALUES (16, 1, 106, 'Accessible', 'Available')
--  INTO SEATS VALUES (17, 1, 107, 'Accessible', 'Booked')
--  INTO SEATS VALUES (18, 2, 206, 'Accessible', 'Available')
--  INTO SEATS VALUES (19, 3, 306, 'Accessible', 'Booked')
--  INTO SEATS VALUES (20, 3, 307, 'Regular', 'Available')
SELECT 1 FROM DUAL;

--SELECT * FROM SEATS;
--DELETE FROM SHOWTIMES;


INSERT ALL
  INTO SHOWTIMES (SHOWTIME_ID, SHOWTIME_NAME, MOVIE_ID, CINEMA_HALL_ID, START_TIME, END_TIME, TICKET_PRICE) 
    VALUES (1, 'Morning Show', 1, 1, TO_TIMESTAMP('2025-06-11 10:00:00'), TO_TIMESTAMP('2025-06-11 12:30:00'), 10.0)
  INTO SHOWTIMES VALUES (2, 'Matinee Special', 2, 1, TO_TIMESTAMP('2025-06-11 13:00:00'), TO_TIMESTAMP('2025-06-11 15:30:00'), 11.5)
  INTO SHOWTIMES VALUES (3, 'Afternoon Delight', 3, 2, TO_TIMESTAMP('2025-06-11 14:00:00'), TO_TIMESTAMP('2025-06-11 16:30:00'), 9.0)
  INTO SHOWTIMES VALUES (4, 'Early Evening', 4, 2, TO_TIMESTAMP('2025-06-11 17:00:00'), TO_TIMESTAMP('2025-06-11 19:30:00'), 12.0)
--  INTO SHOWTIMES VALUES (5, 'Prime Time', 5, 3, TO_TIMESTAMP('2025-06-11 20:00:00'), TO_TIMESTAMP('2025-06-11 22:30:00'), 15.0)
--  INTO SHOWTIMES VALUES (6, 'Late Night', 1, 3, TO_TIMESTAMP('2025-06-11 23:00:00'), TO_TIMESTAMP('2025-06-12 01:30:00'), 8.5)
--  INTO SHOWTIMES VALUES (7, 'Midnight Madness', 2, 1, TO_TIMESTAMP('2025-06-12 00:00:00'), TO_TIMESTAMP('2025-06-12 02:30:00'), 7.0)
--  INTO SHOWTIMES VALUES (8, 'Breakfast Cinema', 3, 2, TO_TIMESTAMP('2025-06-12 08:00:00'), TO_TIMESTAMP('2025-06-12 10:30:00'), 6.5)
--  INTO SHOWTIMES VALUES (9, 'Early Show', 4, 1, TO_TIMESTAMP('2025-06-12 09:30:00'), TO_TIMESTAMP('2025-06-12 12:00:00'), 10.0)
--  INTO SHOWTIMES VALUES (10, 'Noon Show', 5, 2, TO_TIMESTAMP('2025-06-12 12:00:00'), TO_TIMESTAMP('2025-06-12 14:30:00'), 10.5)
--  INTO SHOWTIMES VALUES (11, 'Family Matinee', 1, 3, TO_TIMESTAMP('2025-06-12 13:30:00'), TO_TIMESTAMP('2025-06-12 16:00:00'), 9.0)
--  INTO SHOWTIMES VALUES (12, 'After School', 2, 1, TO_TIMESTAMP('2025-06-12 16:00:00'), TO_TIMESTAMP('2025-06-12 18:30:00'), 11.0)
--  INTO SHOWTIMES VALUES (13, 'Dinner Flick', 3, 2, TO_TIMESTAMP('2025-06-12 18:45:00'), TO_TIMESTAMP('2025-06-12 21:15:00'), 13.0)
--  INTO SHOWTIMES VALUES (14, 'Late Feature', 4, 3, TO_TIMESTAMP('2025-06-12 21:30:00'), TO_TIMESTAMP('2025-06-12 00:00:00'), 14.5)
--  INTO SHOWTIMES VALUES (15, 'Classic Replay', 5, 1, TO_TIMESTAMP('2025-06-13 10:00:00'), TO_TIMESTAMP('2025-06-13 12:15:00'), 7.5)
--  INTO SHOWTIMES VALUES (16, 'Indie Hour', 1, 2, TO_TIMESTAMP('2025-06-13 12:30:00'), TO_TIMESTAMP('2025-06-13 15:00:00'), 8.0)
--  INTO SHOWTIMES VALUES (17, 'Action Blast', 2, 3, TO_TIMESTAMP('2025-06-13 15:30:00'), TO_TIMESTAMP('2025-06-13 18:00:00'), 12.5)
--  INTO SHOWTIMES VALUES (18, 'Comedy Hour', 3, 1, TO_TIMESTAMP('2025-06-13 18:15:00'), TO_TIMESTAMP('2025-06-13 20:45:00'), 11.0)
--  INTO SHOWTIMES VALUES (19, 'Sci-fi Night', 4, 2, TO_TIMESTAMP('2025-06-13 21:00:00'), TO_TIMESTAMP('2025-06-14 00:00:00'), 13.5)
--  INTO SHOWTIMES VALUES (20, 'Horror Midnight', 5, 3, TO_TIMESTAMP('2025-06-14 00:15:00'), TO_TIMESTAMP('2025-06-14 02:45:00'), 9.5)
SELECT 1 FROM DUAL;

--SELECT * FROM SHOWTIMES;
--DELETE FROM SHOWTIMES;


INSERT ALL
  INTO MOVIES (MOVIE_ID, MOVIE_NAME, MOVIE_LENGTH, MOVIE_POSTER, MOVIE_LANGUAGE, RELEASE_DATE, MOVIE_DESCRIPTION, GENRE)
    VALUES (1, 'Inception', 148, 'inception.jpg', 'English', TO_DATE('2010-07-16', 'YYYY-MM-DD'), 'Dream within a dream', 'Sci-Fi')
  INTO MOVIES VALUES (2, 'The Dark Knight', 152, 'dark_knight.jpg', 'English', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 'Batman faces the Joker.', 'Action')
  INTO MOVIES VALUES (3, 'Interstellar', 169, 'interstellar.jpg', 'English', TO_DATE('2014-11-07', 'YYYY-MM-DD'), 'A journey beyond the stars.', 'Sci-Fi')
  INTO MOVIES VALUES (4, 'Parasite', 132, 'parasite.jpg', 'Korean', TO_DATE('2019-05-30', 'YYYY-MM-DD'), 'Two families cross paths in an unexpected way.', 'Thriller')
--  INTO MOVIES VALUES (5, 'Coco', 105, 'coco.jpg', 'Spanish', TO_DATE('2017-10-20', 'YYYY-MM-DD'), 'A boy travels to the Land of the Dead.', 'Animation')
--  INTO MOVIES VALUES (6, 'Avatar', 162, 'avatar.jpg', 'English', TO_DATE('2009-12-18', 'YYYY-MM-DD'), 'Humans explore Pandora.', 'Sci-Fi')
--  INTO MOVIES VALUES (7, 'The Godfather', 175, 'godfather.jpg', 'English', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 'Crime family legacy.', 'Crime')
--  INTO MOVIES VALUES (8, 'Spirited Away', 125, 'spirited_away.jpg', 'Japanese', TO_DATE('2001-07-20', 'YYYY-MM-DD'), 'A girl trapped in a spirit world.', 'Fantasy')
--  INTO MOVIES VALUES (9, '1917', 119, '1917.jpg', 'English', TO_DATE('2019-12-25', 'YYYY-MM-DD'), 'A WWI mission to save lives.', 'War')
--  INTO MOVIES VALUES (10, 'Whiplash', 106, 'whiplash.jpg', 'English', TO_DATE('2014-10-10', 'YYYY-MM-DD'), 'A drummer and his ruthless teacher.', 'Drama')
--  INTO MOVIES VALUES (11, 'La La Land', 128, 'la_la_land.jpg', 'English', TO_DATE('2016-12-09', 'YYYY-MM-DD'), 'Love and ambition in LA.', 'Romance')
--  INTO MOVIES VALUES (12, 'Inside Out', 95, 'inside_out.jpg', 'English', TO_DATE('2015-06-19', 'YYYY-MM-DD'), 'Emotions inside a young girl’s mind.', 'Animation')
--  INTO MOVIES VALUES (13, 'Joker', 122, 'joker.jpg', 'English', TO_DATE('2019-10-04', 'YYYY-MM-DD'), 'An origin story of the infamous villain.', 'Drama')
--  INTO MOVIES VALUES (14, 'The Matrix', 136, 'matrix.jpg', 'English', TO_DATE('1999-03-31', 'YYYY-MM-DD'), 'Reality is not what it seems.', 'Sci-Fi')
--  INTO MOVIES VALUES (15, 'Gladiator', 155, 'gladiator.jpg', 'English', TO_DATE('2000-05-05', 'YYYY-MM-DD'), 'A general becomes a slave, then hero.', 'Action')
--  INTO MOVIES VALUES (16, 'Amélie', 122, 'amelie.jpg', 'French', TO_DATE('2001-04-25', 'YYYY-MM-DD'), 'A whimsical Parisian story.', 'Romance')
--  INTO MOVIES VALUES (17, 'The Lion King', 88, 'lion_king.jpg', 'English', TO_DATE('1994-06-24', 'YYYY-MM-DD'), 'A lion cub’s journey to adulthood.', 'Animation')
--  INTO MOVIES VALUES (18, 'Titanic', 195, 'titanic.jpg', 'English', TO_DATE('1997-12-19', 'YYYY-MM-DD'), 'A love story on a doomed ship.', 'Drama')
--  INTO MOVIES VALUES (19, 'Pulp Fiction', 154, 'pulp_fiction.jpg', 'English', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 'Intersecting crime stories.', 'Crime')
--  INTO MOVIES VALUES (20, 'The Grand Budapest Hotel', 99, 'grand_budapest.jpg', 'English', TO_DATE('2014-03-28', 'YYYY-MM-DD'), 'Adventures of a hotel concierge.', 'Comedy')
SELECT 1 FROM DUAL;

--SELECT * FROM MOVIES;
--DELETE FROM MOVIES;


INSERT ALL
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (1, 'Alice', 'alice@example.com', 126855092)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (2, 'Bob', 'bob@example.com', 134567892)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (3, 'Charlie', 'charlie@example.com', 145679302)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (4, 'Diana', 'diana@example.com', 154378921)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (5, 'Edward', 'edward@example.com', 162345678)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (6, 'Fiona', 'fiona@example.com', 173456789)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (7, 'George', 'george@example.com', 184567890)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (8, 'Hannah', 'hannah@example.com', 195678901)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (9, 'Ian', 'ian@example.com', 206789012)
    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (10, 'Julia', 'julia@example.com', 217890123)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (11, 'Kevin', 'kevin@example.com', 228901234)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (12, 'Laura', 'laura@example.com', 239012345)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (13, 'Michael', 'michael@example.com', 240123456)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (14, 'Nina', 'nina@example.com', 251234567)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (15, 'Oscar', 'oscar@example.com', 262345678)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (16, 'Paula', 'paula@example.com', 273456789)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (17, 'Quentin', 'quentin@example.com', 284567890)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (18, 'Rachel', 'rachel@example.com', 295678901)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (19, 'Steve', 'steve@example.com', 306789012)
--    INTO USERS (USER_ID,USER_NAME,EMAIL,PHONE_NUMBER) VALUES (20, 'Tina', 'tina@example.com', 317890123)
SELECT 1 FROM DUAL;

--SELECT * FROM USERS;
--DELETE FROM USERS;


INSERT ALL
   INTO BOOKINGS (BOOKING_ID, SHOWTIME_ID, USER_ID, SEAT_ID, PAYMENT_STATUS, PURCHASE_DATE)
    VALUES (1, 1, 1, 101, 'Paid', TO_TIMESTAMP('2025-06-10 12:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (2, 1, NULL, 102, 'Paid', TO_TIMESTAMP('2025-06-10 14:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (3, 2, 2, 201, 'Paid', TO_TIMESTAMP('2025-06-11 09:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (4, 2, NULL, 202, 'Paid', TO_TIMESTAMP('2025-06-11 11:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (5, 3, 3, 301, 'Paid', TO_TIMESTAMP('2025-06-12 13:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (6, 3, NULL, 302, 'Paid', TO_TIMESTAMP('2025-06-12 16:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (7, 4, NULL, 401, 'Paid', TO_TIMESTAMP('2025-06-13 10:15:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO BOOKINGS VALUES (8, 4, 4, 402, 'Paid', TO_TIMESTAMP('2025-06-13 12:10:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM DUAL;