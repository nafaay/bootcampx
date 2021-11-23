/**
  Get the total number of assignment submissions for each cohort.
*/


SELECT cohorts.name, COUNT(*) 
FROM assignment_submissions 
JOIN students 
ON student_id = students.id 
JOIN cohorts 
ON cohort_id = cohorts.id 
GROUP BY cohorts.name 
ORDER BY COUNT(*) DESC;