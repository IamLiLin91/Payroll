/*Find the company name and its payroll amount that has the lowest payroll.*/
USE payroll;

SELECT name AS company_name, SUM(salary) AS lowest_payroll
FROM works
GROUP BY name
HAVING lowest_payroll = (
SELECT MIN(total)
FROM(SELECT name, SUM(salary) AS total
FROM works
GROUP BY name) AS work);