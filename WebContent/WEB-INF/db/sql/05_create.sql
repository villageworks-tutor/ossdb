-- p.114 例題-1
INSERT INTO employee
(emp_id, dept_id, emp_name, birthday, hiredate, sex, sal, comm) VALUES (20, 40, '山田　花子', '1980-01-02', CURRENT_DATE, 2, 4000, NULL);
SELECT * FROM employee;
-- p.116 例題-2
INSERT INTO employee
(emp_id, emp_name) VALUES (21, '渡辺　健一');
SELECT * FROM employee;
-- p.117 例題-3
INSERT INTO department (dept_id, dept_name, loc, mgr_id, adept_id) SELECT dept_id + 5, '第2' || dept_name, loc, mgr_id, dept_id FROM department;
SELECT * from department;
-- p.118 実習-1
INSERT INTO employee VALUES (100, 10, '丸野　一夫', '1972-07-01', '2008-10-31', 1, 5000, NULL);
SELECT * FROM employee;
-- p.119 実習-2
INSERT INTO customer (cust_id, cust_name) SELECT emp_id + 1000, emp_name FROM employee;
SELECT * FROM customer; 
