-- graduates who haven't added their github

SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;