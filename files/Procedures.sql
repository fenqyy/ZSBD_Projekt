BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
    job_name        => 'archive_finished_showtimes',
    job_type        => 'PLSQL_BLOCK',
    job_action      => '
      BEGIN
        INSERT INTO showtime_archive (id, start_time, end_time, ..., archive_timestamp)
        SELECT id, start_time, end_time, ..., SYSTIMESTAMP
        FROM showtimes
        WHERE end_time < SYSTIMESTAMP;

        DELETE FROM showtimes
        WHERE end_time < SYSTIMESTAMP;

        COMMIT;
      END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=MINUTELY; INTERVAL=10',
    enabled         => TRUE
  );
END;
/