-- Questão 1
SELECT 
	COUNT("endDate") AS "currentExperiences"
FROM experiences;



-- Questão 2
SELECT 
	users.id,
	COUNT(educations) as educations
FROM users
JOIN educations
ON educations."userId" = users.id
GROUP BY users.id
ORDER BY users.id ASC;



-- Questão 3
SELECT 
	users.name AS writer,
	COUNT(testimonials) AS "testimonialCount"
FROM users
JOIN testimonials
ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.id;

-- Questão 4

SELECT 
	MAX(salary) AS "maximumSalary",
	roles.name AS "role"
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;
