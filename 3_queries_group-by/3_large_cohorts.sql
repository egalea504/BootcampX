SELECT cohorts.name as cohort_name, count(students.*) as student_count
FROM students
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
-- only cohorts that have students with 18 students or more
HAVING count(students.*) >= 18
-- order by smallest to largest cohort
ORDER BY count(students.*);