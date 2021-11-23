/**
  Get the total number of assignments for each day of bootcamp
  nombre of ssignments > 10 sorted by day 
**/

SELECT assignments.day, COUNT(assignments.*) 
FROM assignments 
GROUP BY assignments.day 
HAVING COUNT(assignments.*) >= 10 
ORDER BY day;