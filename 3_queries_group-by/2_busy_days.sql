-- total number of assignments per bootcamp day
-- days with 10 assignments or more = busy

SELECT day, count(assignments.*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(assignments.*) >= 10
ORDER BY day;
