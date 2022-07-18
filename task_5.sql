/*Delete all managers from the “First Bank of Singapore” who are earning more than SGD10k.*/
USE payroll;

DELETE employee
FROM works INNER JOIN employee INNER JOIN manages
WHERE works.ID = employee.ID
AND employee.ID = manages.manager_id
AND works.salary > 10000
AND works.name = "First Bank of Singapore";