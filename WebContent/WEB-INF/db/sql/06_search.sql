-- 担当者検索用
SELECT
	employee.emp_id, employee.emp_name, 
	department.dept_id, department.dept_name
FROM employee, department
WHERE employee.dept_id = department.dept_id;

-- 担当者更新用
SELECT
	employee.emp_id, employee.emp_name, employee.birthday, employee.hiredate, CASE WHEN employee.sex = 1 THEN '男性' ELSE '女性' END AS sex, employee.sal, employee.comm,
	department.dept_id, department.dept_name
FROM
	employee, department
WHERE
	employee.dept_id = department.dept_id;