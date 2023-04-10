-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.

SELECT assignments.day, count(assignments.id) as number_of_assignments, SUM(assignments.duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;