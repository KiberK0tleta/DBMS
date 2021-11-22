USE SQLAcademy3



SELECT COUNT(student_id)
	--last_name + ' ' + first_name + ' ' + last_name,
	--birth_date
FROM students
WHERE birth_date > (SELECT MAX(birth_date) FROM teachers)

SELECT * FROM students
ORDER BY birth_date DESC