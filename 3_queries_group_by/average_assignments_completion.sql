/**
  Get currently enrolled students' average assignment completion time.
**/

SELECT students.name, AVG(duration) 
AS Average 
FROM students  
JOIN assignment_submissions 
ON student_id = students.id 
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY Average DESC;