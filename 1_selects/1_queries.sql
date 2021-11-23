/** 
  Get the names of all of the students from a single cohort.
**/

SELECT id, name FROM students WHERE cohort_id = 1 ORDER BY name;

/** 
  Select the total number of students who were in the first 3 cohorts.
**/

SELECT COUNT(*) FROM students WHERE cohort_id IN (1, 2, 3);

/**
  Get all of the students that don't have an email or phone number. 
**/
SELECT * FROM student WHERE phone IS null OR email IS null;

/**
  Get all of the students without a gmail.com account and a phone number.
**/
SELECT * FROM students WHERE email NOT LIKE "%gmail%" AND phone IS null;

/**
  Get all of the students currently enrolled.
**/
SELECT name, id, cohort_id FROM students WHERE end_date IS null ORDER BY cohort_id;

/**
  Get all graduates without a linked Github account.
**/
SELECT name, email, phone FROM students WHERE github is null AND end_date IS NOT null;

