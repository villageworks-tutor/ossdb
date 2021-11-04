-- p.103 例題-1
SELECT
  emp_id, emp_name, sal 
FROM employee 
WHERE
  sal > (SELECT avg(sal) FROM employee)
ORDER BY emp_id;
-- p.104 例題-2
SELECT
  emp_id, emp_name, sal
FROM employee
WHERE
  sal = (SELECT max(sal) FROM employee);
-- p.104 例題-3
SELECT
  emp_id, emp_name, sal
FROM employee
WHERE
  sal = (SELECT sal FROM employee WHERE emp_id = 3)
ORDER BY emp_id;
-- p.104 例題-5
SELECT
  emp_id, emp_name, sal
FROM employee
WHERE
  sal = (SELECT sal FROM employee WHERE emp_id = 20);
-- p.105 例題-5【結合】
SELECT
  packedsales.psales_no, employee.emp_id, employee.emp_name, packedsales.total
FROM 
  packedsales JOIN employee ON packedsales.emp_id = employee.emp_id
WHERE
  total = (SELECT max(total) FROM packedsales);
-- p.105 例題-6【グループ化】
SELECT
  dept_id, avg(sal)
FROM
  employee
  GROUP BY dept_id
  HAVING avg(sal) > (SELECT avg(sal) FROM employee)
  ORDER BY dept_id;
-- p.105 例題-7【応用】相関幅照会
SELECT
  emp_id, emp_name, dept_id, sal
FROM
  employee
WHERE
  sal >= (SELECT avg(sal) FROM employee WHERE dept_id = employee.dept_id);
-- p.106 例題-1
SELECT
  emp_id, emp_name, sal
FROM
  employee
WHERE
  (sal, dept_id) = (SELECT sal, dept_id FROM employee WHERE emp_id = 3);
-- p.107 例題-1
SELECT
  emp_id, emp_name, dept_id
FROM
  employee
WHERE
  dept_id IN (SELECT dept_id FROM department);
SELECT
  emp_id, emp_name, employee.dept_id
FROM
  employee JOIN department ON employee.dept_id = department.dept_id;
-- p.108 例題-2
SELECT
  emp_id, emp_name, dept_id
FROM
  employee
WHERE
  dept_id NOT IN (SELECT dept_id FROM department);
-- p.108 例題-3
SELECT
  emp_id, emp_name, sal
FROM
  employee
WHERE
  sal >= ALL(SELECT avg(sal) FROM employee GROUP BY dept_id);
-- p.109 例題-4
SELECT
  emp_id, emp_name, sal
FROM
  employee
WHERE
  sal >= ANY (SELECT avg(sal) FROM employee GROUP BY dept_id);
-- p.110 例題-1
SELECT
  emp_id, emp_name, dept_id
FROM
  employee
WHERE
  NOT EXISTS (SELECT * FROM department WHERE dept_id = employee.dept_id);
-- p.110 実習-1
SELECT
  psales_no, prod_id, price
FROM
  sales
WHERE
  price = (SELECT max(price) FROM sales);
-- p.111 実習-2
SELECT
  psales_no, emp_id, cust_id, total
FROM
  packedsales
WHERE
  total > (SELECT avg(total) FROM packedsales);
-- p.111 実習-3【応用】
SELECT
  sales_no, prod_id, price
FROM
  sales
WHERE
  sales_no = 1 AND
  price <= ALL (SELECT avg(price) FROM sales GROUP BY prod_id);
-- p.112 実習-4【応用】
SELECT
  dept_id, dept_name
FROM
  department
WHERE
  dept_id NOT IN (SELECT dept_id FROM department);
