-- p.83 ó·ëË-1
SELECT employee.emp_id, employee.emp_name, department.dept_id, department.dept_name FROM employee JOIN department ON employee.dept_id = department.dept_id;
SELECT e.emp_id, e.emp_name, d.dept_id, d.dept_name FROM employee e JOIN department d ON e.dept_id = d.dept_id;
-- p.84 ó·ëË-2
SELECT department.dept_id, department.dept_name, department.mgr_id, employee.emp_id, employee.emp_name FROM department JOIN employee ON department.mgr_id = employee.emp_id;
-- p.85 ó·ëË-3ÅyâûópÅz
SELECT department.dept_id, department.dept_name, department.adept_id, department2.dept_name FROM department JOIN department department2 ON department.adept_id = department2.dept_id;
-- p.86 ó·ëË-4ÅyâûópÅz
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name, department.mgr_id, employee2.emp_name
FROM employee
  JOIN department ON employee.dept_id = department.dept_id
  JOIN employee employee2 ON employee2.emp_id = department.mgr_id;
-- p.86 ó·ëË-5ÅyâûópÅz
SELECT
  DISTINCT employee.emp_id, employee.emp_name, product.prod_id, product.prod_name, customer.cust_id, customer.cust_name
FROM employee
  JOIN packedsales ON employee.emp_id = packedsales.emp_id
  JOIN customer ON packedsales.cust_id = customer.cust_id
  JOIN sales ON packedsales.psales_no = sales.psales_no
  JOIN product ON sales.prod_id = product.prod_id
ORDER BY employee.emp_id;
-- p.87 ó·ëË-6ÅyåãçáÇ∆ÉOÉãÅ[ÉvÅz
SELECT
  department.dept_id, department.dept_name, 
  count(*), sum(employee.sal), avg(employee.sal), min(employee.sal), min(employee.sal), max(employee.sal)
FROM employee
  JOIN department ON employee.dept_id = department.dept_id
GROUP BY department.dept_id, department.dept_name
ORDER BY department.dept_id;
-- p.88 ó·ëË-7ÅyUSINGÅz
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee
  JOIN department USING(dept_id);
-- p.88 ó·ëË-8Åyé©ëRåãçáÅz
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee
  NATURAL JOIN department;
-- p.89 ó·ëË-9ÅyÉNÉçÉXåãçáÅz
SELECT
  *
FROM employee
  CROSS JOIN department;
-- p.90 ó·ëË-10
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee, department
WHERE employee.dept_id = department.dept_id;
-- p.90 ó·ëË-11
SELECT
  department.dept_id, department.dept_name, employee.emp_id, employee.emp_name
FROM department, employee
WHERE department.mgr_id = employee.emp_id;
-- p.91 ó·ëË-12
SELECT
  department.dept_id, department.dept_name, department2.adept_id, department2.dept_name
FROM department, department department2
WHERE department.adept_id = department2.dept_id;
-- p.92 ó·ëË-1
SELECT 
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee
  LEFT JOIN department ON employee.dept_id = department.dept_id;
-- p.92 ó·ëË-2
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee
  RIGHT JOIN department ON employee.dept_id = department.dept_id;
-- p.93 ó·ëË-3
SELECT
  employee.emp_id, employee.emp_name, department.dept_id, department.dept_name
FROM employee
  FULL JOIN department ON employee.dept_id = department.dept_id;
-- p.93 ó·ëË-4ÅyâûópÅz
SELECT
  employee.emp_id, employee.emp_name,
  department.dept_id, department.dept_name,
  department.mgr_id, employee2.emp_name
FROM employee
  LEFT JOIN department ON employee.dept_id = department.dept_id
  LEFT JOIN employee employee2 ON department.mgr_id = employee2.emp_id;
-- p.95 ó·ëË-1
SELECT 'CUSTOMER ' AS table, count(*) FROM customer
UNION
SELECT 'EMPLOYEE ', count(*) FROM employee
UNION
SELECT 'DEPARTMENT ', count(*) FROM department
UNION
SELECT 'PRODUCT ', count(*) FROM product
UNION
SELECT 'PACKEDSALES ', count(*) FROM packedsales
UNION
SELECT 'SALES ', count(*) FROM sales;
-- p.96 ó·ëË-2ÅyâûópÅz
SELECT * FROM department
EXCEPT
SELECT * FROM department
WHERE adept_id = 40;
-- p.96 é¿èK-1
SELECT
  customer.cust_name, customer.address, packedsales.delivery_date
FROM
  packedsales
  LEFT JOIN customer ON packedsales.cust_id = customer.cust_id
WHERE packedsales.psales_no = 3;
SELECT
  customer.cust_name, customer.address, packedsales.delivery_date
FROM
  packedsales
  INNER JOIN customer ON packedsales.cust_id = customer.cust_id
WHERE packedsales.psales_no = 3;
-- p.97 é¿èK-2
SELECT
  product.prod_name, sales.quantity * sales.price AS amount
FROM
  sales
  JOIN product ON sales.prod_id = product.prod_id
WHERE
  sales.quantity >= 3;
-- p.97 é¿èK-3ÅyâûópÅz
SELECT
  packedsales.psales_no, packedsales.psales_date, packedsales.total, sales.prod_id, sales.quantity, sales.price
FROM
  packedsales
  JOIN sales USING(psales_no)
  JOIN customer USING(cust_id)
WHERE
  customer.cust_name LIKE 'ìcíÜ%'
ORDER BY packedsales.psales_no;
-- p.98 é¿èK-4
SELECT
  employee.emp_id, employee.emp_name, avg(packedsales.total)
FROM
  packedsales
  JOIN employee ON packedsales.emp_id = employee.emp_id
GROUP BY employee.emp_id
ORDER BY employee.emp_id;
-- p.98 é¿èK-5
SELECT
  sales.prod_id, product.prod_name, sum(sales.price), sum(sales.price * sales.quantity)
FROM
  product
    JOIN sales ON product.prod_id = sales.prod_id
GROUP BY sales.prod_id, product.prod_name
HAVING sum(sales.price) >= 500000
ORDER BY sales.prod_id;
-- p.99 é¿èK-9ÅyâûópÅz
SELECT
  product.prod_name, sum(sales.price * sales.quantity) AS total
FROM
  sales
  JOIN product ON sales.prod_id = product.prod_id
GROUP BY sales.prod_id, product.prod_name
ORDER BY total DESC;
-- p.99 é¿èK-7ÅyâûópÅz
SELECT
  customer.cust_name, packedsales.cust_address, packedsales.delivery_date, product.prod_name, sales.quantity
FROM
  packedsales
  JOIN customer ON packedsales.cust_id = customer.cust_id
  JOIN sales ON packedsales.psales_no = sales.psales_no
  JOIN product ON sales.prod_id = product.prod_id
WHERE packedsales.psales_no = 3;
-- p.100 é¿èK-8ÅyâûópÅz
SELECT address FROM customer
UNION
SELECT loc AS address FROM department;
-- p.101 é¿èK-9ÅyâûópÅz
SELECT *, cost * COALESCE(discount, 1) * 0.95
FROM product
WHERE prod_id % 2 = 0
UNION
SELECT *, cost * COALESCE(discount, 1)
FROM product
WHERE prod_id % 2 = 1;
-- p.102 é¿èK-10ÅyâûópÅz
SELECT psales_no, emp_id, cust_id, cust_address
FROM packedsales
EXCEPT
SELECT psales_no, emp_id, cust_id, cust_address
FROM packedsales
WHERE
  psales_no BETWEEN 200 AND 800
  OR emp_id IN (2, 4)
  OR cust_id = 2
ORDER BY psales_no;
