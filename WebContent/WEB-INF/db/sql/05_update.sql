-- p.120 ���-1
UPDATE employee SET sal = sal * 1.2;
SELECT * FROM employee;
-- p.121 ���-2
UPDATE employee SET sal = sal - 1000 WHERE sal >= 5000;
SELECT * FROM employee ORDER BY emp_id;
-- p.122 ���-3
UPDATE employee sal = (SELECT avg(sal) FROM employee) WHERE dept_id = 40;
SELECT * FROM employee ORDER BY emp_id;
-- p.122 ���-4
UPDATE employee SET birthday = null;
SELECT * FROM employee ORDER BY emp_id;
-- p.123 ���-5
UPDATE employee SET sal = 4000 WHERE dept_id = 40;
SELECT * FROM employee ORDER BY emp_id;
-- p.123 ���K-1
UPDATE department SET loc = '�_�ސ쌧���s' WHERE dept_id BETWEEN 20 AND 30;
SELECT * from department ORDER BY dept_id;
-- p.124 ���K-2
UPDATE department SET  mgr_id = (SELECT emp_id FROM employee WHERE sal = (SELECT min(sal) FROM employee)) WHERE adept_id = 40;
SELECT * FROM department ORDER BY dept_id;

