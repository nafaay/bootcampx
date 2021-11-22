DROP TABLE IF EXISTS cohorts CASCADE;
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(15) NOT NULL,
  start_date DATE,
  end_date DATE
);


DROP TABLE IF EXISTS students CASCADE;
CREATE TABLE students(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255),
  phone VARCHAR(255),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);


