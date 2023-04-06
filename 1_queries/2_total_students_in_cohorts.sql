-- total number of students in any number of cohorts combined

SELECT count(id)
FROM students
WHERE cohort_id IN (1, 2, 3);

