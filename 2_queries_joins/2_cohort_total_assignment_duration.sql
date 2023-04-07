-- cohort total assignment duration
-- find all assignments that belong between start and end date for a selected cohort and output sum of duration

SELECT sum(assignment_submissions.duration) as total_cohort_duration
FROM assignment_submissions
JOIN students 
  ON students.id = student_id
JOIN cohorts
  ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';