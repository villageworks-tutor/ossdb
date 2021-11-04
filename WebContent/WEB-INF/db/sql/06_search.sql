-- �S���Ҍ����p
SELECT
	employee.emp_id, employee.emp_name, 
	department.dept_id, department.dept_name
FROM employee, department
WHERE employee.dept_id = department.dept_id;

-- �S���ҍX�V�p
SELECT
	employee.emp_id, employee.emp_name, employee.birthday, employee.hiredate, CASE WHEN employee.sex = 1 THEN '�j��' ELSE '����' END AS sex, employee.sal, employee.comm,
	department.dept_id, department.dept_name
FROM
	employee, department
WHERE
	employee.dept_id = department.dept_id;