-- p.114 ���-1
INSERT INTO employee
(emp_id, dept_id, emp_name, birthday, hiredate, sex, sal, comm) VALUES (20, 40, '�R�c�@�Ԏq', '1980-01-02', CURRENT_DATE, 2, 4000, NULL);
SELECT * FROM employee;
-- p.116 ���-2
INSERT INTO employee
(emp_id, emp_name) VALUES (21, '�n�Ӂ@����');
SELECT * FROM employee;
-- p.117 ���-3
INSERT INTO department (dept_id, dept_name, loc, mgr_id, adept_id) SELECT dept_id + 5, '��2' || dept_name, loc, mgr_id, dept_id FROM department;
SELECT * from department;
-- p.118 ���K-1
INSERT INTO employee VALUES (100, 10, '�ۖ�@��v', '1972-07-01', '2008-10-31', 1, 5000, NULL);
SELECT * FROM employee;
-- p.119 ���K-2
INSERT INTO customer (cust_id, cust_name) SELECT emp_id + 1000, emp_name FROM employee;
SELECT * FROM customer; 
