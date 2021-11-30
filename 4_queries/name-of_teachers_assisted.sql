SELECT 
DISTINCT teachers.name as teacher, 
cohorts.name as cohort
FROM teachers
JOIN students ON student_id = students.id
JOIN assistance_requests ON teacher_id = teachers.id
JOIN cohorts ON cohort_id = cohorts.id
ORDER BY teacher;