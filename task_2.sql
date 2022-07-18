/*Find the ID and name of each employee who lives in the same city as the location of the company for which the employee works.*/
USE payroll;

SELECT works.ID, employee.name
FROM (company NATURAL JOIN works) JOIN employee
WHERE employee.city = company.city
AND works.ID = employee.ID;
