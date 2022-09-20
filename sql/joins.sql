-- User Input: Who is head of department {department_name}
SELECT l.name AS "Name"
FROM department AS d 
JOIN lector AS l 
ON d.head_id = l.id WHERE d.name = "Sport";

SELECT d.name AS "Department", l.name AS "Name"
FROM department AS d 
JOIN lector AS l 
ON d.head_id = l.id;

-- User Input: Show {department_name} statistics.

SELECT dep.name AS "department", l.name AS "lector", deg.name AS "degree"
FROM department AS dep
RIGHT JOIN employments AS e
ON e.department_id = dep.id
RIGHT JOIN lector AS l
ON e.lector_id = l.id
LEFT JOIN degree AS deg
ON l.degree_id = deg.id;

SELECT l.name, deg.name, dep.name 
FROM employments AS e
RIGHT JOIN department AS dep
ON e.department_id= dep.id
RIGHT JOIN lector AS l
ON e.lector_id = l.id
LEFT JOIN degree AS deg
ON l.degree_id = deg.id where dep.name = "Math";

SELECT deg.name AS "degree", COUNT(l.degree_id) AS "count"
FROM department AS dep
RIGHT JOIN employments AS e
ON e.department_id = dep.id
RIGHT JOIN lector AS l
ON e.lector_id = l.id
LEFT JOIN degree AS deg
ON l.degree_id = deg.id where dep.name = "Math";
-- SELECT d.name AS "Department", "Assistants", " Associate professors", "Professors"
-- FROM department as d;


-- User Input: Show the average salary for the department {department_name}.

-- User Input: Show count of employee for {department_name}

--  User Input: Global search by {template}.   
