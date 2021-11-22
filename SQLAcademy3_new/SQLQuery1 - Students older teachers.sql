USE SQLAcademy3
GO
--INSERT INTO students (last_name, first_name, middle_name, birth_date, year_of_stady, rating, attandence, study_droup)
--VALUES
--	(N'Васильев ', N'Сергей', N'Александрович', N'1975-12-25', 1, 91, 95, 3),
--	(N'Васильева ', N'Маргорита', N'Сергеевна', N'1977-11-25', 2, 95, 97, 4)

SELECT 
	last_name + ' ' + first_name + ' ' + last_name,
	birth_date
FROM students
WHERE birth_date < (SELECT MIN(birth_date) FROM teachers)

--UNION
--SELECT 
--	last_name + ' ' + first_name + ' ' + last_name,
--	birth_date
--FROM teachers

