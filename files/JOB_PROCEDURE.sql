CREATE OR REPLACE PROCEDURE archive_finished_showtimes_proc IS
BEGIN
  INSERT INTO showtimes_archive (SHOWTIME_ID, SHOWTIME_NAME, MOVIE_ID, CINEMA_HALL_ID, START_TIME, END_TIME, TICKET_PRICE, ARCHIVE_TIMESTAMP)
  SELECT SHOWTIME_ID, SHOWTIME_NAME, MOVIE_ID, CINEMA_HALL_ID, START_TIME, END_TIME, TICKET_PRICE, SYSTIMESTAMP
  FROM showtimes
  WHERE end_time < (SYSTIMESTAMP AT TIME ZONE 'UTC') 
  + INTERVAL '2' HOUR ;

  DELETE FROM showtimes
  WHERE end_time < (SYSTIMESTAMP AT TIME ZONE 'UTC') 
  + INTERVAL '2' HOUR ;

  COMMIT;
END;
/

DECLARE
  l_job NUMBER;
BEGIN
  -- Rejestracja joba, który wywoła Twoją procedurę
  DBMS_JOB.SUBMIT(
    job       => l_job,
    what      => 'BEGIN archive_finished_showtimes_proc; END;',
    next_date => SYSDATE,
    interval  => 'SYSDATE + 60/(24*60)'  -- co 10 minut
  );
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Stworzono job o ID = ' || l_job);
END;
/

// wyświetlenie jobow
SELECT job, last_date, next_date, broken
FROM USER_JOBS;

// usuwanie jobow
BEGIN
  DBMS_JOB.REMOVE(46);
  COMMIT;
END;
/