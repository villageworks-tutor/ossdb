-- p.31 例題-1
SELECT * FROM employee;
-- p.31 例題-2
\d employee
-- p.32 例題-3
SELECT emp_name, birthday, sal FROM employee;
-- p.32 例題-4
SELECT emp_name, birthday, sal * 12 FROM employee;
-- p.33 例題-5
SELECT emp_name, birthday, sal * 12 AS 年収 FROM employee;
-- p.33 例題-6
SELECT emp_name, birthday, sal, CAST(sal * 12 AS INT) AS 年収 FROM employee;
-- p.34 例題-7
SELECT emp_name, birthday, sal, (sal * 12)::INT AS 年収 FROM employee;
-- p.34 例題-1
SELECT '担当者　' || emp_name || '　の誕生日は　' || birthday || '　です。' AS 誕生日 FROM employee;
-- p.35 例題-1
SELECT emp_name, to_char(birthday, 'Day Month DD, YYYY') FROM employee;
-- p.36 例題-2
SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
-- p.38 例題-1
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;
-- p.39 例題-1
SELECT emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) FROM employee;
-- p.40 例題-1
SELECT emp_name, sex FROM employee;
-- p.41 例題-2
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '男' 
                    ELSE '女' 
  END 
  FROM employee;
-- p.41 例題-3
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '男' 
                    ELSE '女' 
  END
  AS 性別
  FROM employee;
-- p.42 例題-4
SELECT emp_name, 
  CASE sex
    WHEN 1 THEN '男'
           ELSE '女'
  END
  AS 性別
  FROM employee;
-- p.42 例題-5
SELECT emp_name, birthday, sal, comm, sal + 
  CASE WHEN comm IS NULL THEN 0
                         ELSE comm
  END
  FROM employee;
-- p.43 例題-1
SELECT * FROM employee ORDER BY salbirthday;
-- p.43 例題-2
SELECT * FROM employee ORDER BY sal DESC;
-- p.44 例題-3
SELECT * FROM employee ORDER BY sex, sal DESC;
-- p.45 例題-4
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee ORDER BY 5 DESC;
-- p.45 例題-5
SELECT emp_name, birthday, sal, comm, sal + comm AS 月収 FROM employee ORDER BY 月収 DESC;
-- p.46 例題-1
SELECT * FROM employee ORDER BY sal DESC LIMIT 3;
-- p.46 例題-2
SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;
-- p.47 実習-1
SELECT * FROM product;
-- p.47 実習-2
SELECT prod_name, cost, discount FROM product;
-- p.48 実習-3
SELECT prod_name, cost, discount, cost * discount AS 割引価格 FROM product;
-- p.48 実習-4
SELECT prod_name, cost, discount, cost * COALESCE(discount, 1) AS 割引価格 FROM product;
-- p.49 実習-5
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS 割引価格 FROM product;
-- p.49 実習-6
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS 割引価格 FROM product ORDER BY 割引価格 DESC;
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS 割引価格 FROM product ORDER BY cost * COALESCE(discount, 1) DESC;
-- p.50 実習-7
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS 割引価格 FROM product ORDER BY 割引価格 DESC LIMIT 3;
