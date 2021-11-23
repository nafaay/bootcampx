/**
Get the total amount of time that a student has spent on all assignments.
*//

SELECT SUM(duration) 
FROM assignment_submissions 
JOIN students 
ON students.id = student_id 
WHERE students.name = 'Ibrahim Schimmel';