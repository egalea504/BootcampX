-- query for students who don't have a phone number or email

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL 
OR phone IS NULL;