ALTER TABLE CINEMAS
ADD CONSTRAINT chk_email_format
CHECK (
  REGEXP_LIKE(EMAIL, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$')
);

ALTER TABLE CINEMAS
ADD CONSTRAINT chk_phone_number_format
CHECK (REGEXP_LIKE(PHONE_NUMBER, '^\d{9}$'));