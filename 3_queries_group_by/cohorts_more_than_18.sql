/**
Get all cohorts with 18 or more students
**/

SELECT cohorts.name, COUNT(students.*) 
FROM students 
JOIN cohorts 
ON cohorts.id = cohort_id 
GROUP BY cohorts.name 
HAVING COUNT(students.*) >= 18 
ORDER BY COUNT(students.*);