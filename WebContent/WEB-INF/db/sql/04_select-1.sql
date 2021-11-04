-- p.31 —á‘è-1
SELECT * FROM employee;
-- p.31 —á‘è-2
\d employee
-- p.32 —á‘è-3
SELECT emp_name, birthday, sal FROM employee;
-- p.32 —á‘è-4
SELECT emp_name, birthday, sal * 12 FROM employee;
-- p.33 —á‘è-5
SELECT emp_name, birthday, sal * 12 AS ”Nû FROM employee;
-- p.33 —á‘è-6
SELECT emp_name, birthday, sal, CAST(sal * 12 AS INT) AS ”Nû FROM employee;
-- p.34 —á‘è-7
SELECT emp_name, birthday, sal, (sal * 12)::INT AS ”Nû FROM employee;
-- p.34 —á‘è-1
SELECT '’S“–Ò@' || emp_name || '@‚Ì’a¶“ú‚Í@' || birthday || '@‚Å‚·B' AS ’a¶“ú FROM employee;
-- p.35 —á‘è-1
SELECT emp_name, to_char(birthday, 'Day Month DD, YYYY') FROM employee;
-- p.36 —á‘è-2
SELECT emp_name, to_char(sal, '9G999G999D99') FROM employee;
-- p.38 —á‘è-1
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;
-- p.39 —á‘è-1
SELECT emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) FROM employee;
-- p.40 —á‘è-1
SELECT emp_name, sex FROM employee;
-- p.41 —á‘è-2
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '’j' 
                    ELSE '—' 
  END 
  FROM employee;
-- p.41 —á‘è-3
SELECT emp_name, 
  CASE WHEN sex = 1 THEN '’j' 
                    ELSE '—' 
  END
  AS «•Ê
  FROM employee;
-- p.42 —á‘è-4
SELECT emp_name, 
  CASE sex
    WHEN 1 THEN '’j'
           ELSE '—'
  END
  AS «•Ê
  FROM employee;
-- p.42 —á‘è-5
SELECT emp_name, birthday, sal, comm, sal + 
  CASE WHEN comm IS NULL THEN 0
                         ELSE comm
  END
  FROM employee;
-- p.43 —á‘è-1
SELECT * FROM employee ORDER BY salbirthday;
-- p.43 —á‘è-2
SELECT * FROM employee ORDER BY sal DESC;
-- p.44 —á‘è-3
SELECT * FROM employee ORDER BY sex, sal DESC;
-- p.45 —á‘è-4
SELECT emp_name, birthday, sal, comm, sal + comm FROM employee ORDER BY 5 DESC;
-- p.45 —á‘è-5
SELECT emp_name, birthday, sal, comm, sal + comm AS Œû FROM employee ORDER BY Œû DESC;
-- p.46 —á‘è-1
SELECT * FROM employee ORDER BY sal DESC LIMIT 3;
-- p.46 —á‘è-2
SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;
-- p.47 ÀK-1
SELECT * FROM product;
-- p.47 ÀK-2
SELECT prod_name, cost, discount FROM product;
-- p.48 ÀK-3
SELECT prod_name, cost, discount, cost * discount AS Š„ˆø‰¿Ši FROM product;
-- p.48 ÀK-4
SELECT prod_name, cost, discount, cost * COALESCE(discount, 1) AS Š„ˆø‰¿Ši FROM product;
-- p.49 ÀK-5
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product;
-- p.49 ÀK-6
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY Š„ˆø‰¿Ši DESC;
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY cost * COALESCE(discount, 1) DESC;
-- p.50 ÀK-7
SELECT prod_name, cost, discount, to_char(cost * COALESCE(discount, 1), '9G999G999D99') AS Š„ˆø‰¿Ši FROM product ORDER BY Š„ˆø‰¿Ši DESC LIMIT 3;
