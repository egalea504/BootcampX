SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
-- join students table to get cohort id
JOIN students ON students.id = student_id
-- join cohorts table to get cohort name
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
-- from largest to lowest submissions
ORDER BY total_submissions DESC;