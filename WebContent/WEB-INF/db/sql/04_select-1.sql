-- p.31 ���-1
SELECT * FROM employee;
-- p.31 ���-2
\d employee
-- p.32 ���-3
SELECT emp_name, birthday, sal FROM employee;
-- p.32 ���-4
SELECT emp_name, birthday, sal * 12 FROM employee;
-- p.33 ���-5
SELECT emp_name, birthday, sal * 12 AS �N�� FROM employee;
-- p.33 ���-6
SELECT emp_name, birthday, sal, CAST(sal * 12 AS INT) AS �N�� FROM employee;
-- p.34 ���-7
SELECT emp_name, birthday, sal, (sal * 12)::INT AS �N�� FROM employee;
-- p.34 ���-1
SELECT '�S���ҁ@' || emp_name || '�@�̒a�����́@' || birthday || '�@�ł��B' AS �a���� FROM employee;
-- p.35 ���-1
SELECT emp_name, to_char(birthday, 'Day Month DD, YYYY') FROM employee;
-- p.36 ���-2
SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
-- p.38 ���-1
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;
-- p.39 ���-1
SELECT emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) FROM employee;
-- p.40 ���-1
SELECT emp_name, sex FROM employee;
-- p.41 ���-2
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '�j' 
                    ELSE '��' 
  END 
  FROM employee;
-- p.41 ���-3
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '�j' 
                    ELSE '��' 
  END
  AS ����
  FROM employee;
-- p.42 ���-4
SELECT emp_name, 
  CASE sex
    WHEN 1 THEN '�j'
           ELSE '��'
  END
  AS ����
  FROM employee;
-- p.42 ���-5
SELECT emp_name, birthday, sal, comm, sal + 
  CASE WHEN comm IS NULL THEN 0
                         ELSE comm
  END
  FROM employee;
-- p.43 ���-1
SELECT * FROM employee ORDER BY salbirthday;
-- p.43 ���-2
SELECT * FROM employee ORDER BY sal DESC;
-- p.44 ���-3
SELECT * FROM employee ORDER BY sex, sal DESC;
-- p.45 ���-4
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee ORDER BY 5 DESC;
-- p.45 ���-5
SELECT emp_name, birthday, sal, comm, sal + comm AS ���� FROM employee ORDER BY ���� DESC;
-- p.46 ���-1
SELECT * FROM employee ORDER BY sal DESC LIMIT 3;
-- p.46 ���-2
SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;
-- p.47 ���K-1
SELECT * FROM product;
-- p.47 ���K-2
SELECT prod_name, cost, discount FROM product;
-- p.48 ���K-3
SELECT prod_name, cost, discount, cost * discount AS �������i FROM product;
-- p.48 ���K-4
SELECT prod_name, cost, discount, cost * COALESCE(discount, 1) AS �������i FROM product;
-- p.49 ���K-5
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS �������i FROM product;
-- p.49 ���K-6
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS �������i FROM product ORDER BY �������i DESC;
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS �������i FROM product ORDER BY cost * COALESCE(discount, 1) DESC;
-- p.50 ���K-7
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS �������i FROM product ORDER BY �������i DESC LIMIT 3;
