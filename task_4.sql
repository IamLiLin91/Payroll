/*Give all managers of the “Small Bank of Singapore” a 10 percent raise.*/
USE payroll;

UPDATE works, manages
SET salary = salary*1.1
WHERE works.ID = manages.manager_id
And name = "Small Bank of Singapore";