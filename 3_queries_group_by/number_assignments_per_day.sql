/**
  Get the total number of assignments for each day of bootcamp.
**/
SELECT assignments.day, COUNT(assignments.*) 
FROM assignments 
GROUP BY assignments.day 
ORDER BY day;