-- p.69 例題-1
SELECT count(*), sum(sal), avg(sal), min(sal), max(sal) FROM employee;
-- p.69 例題-2
SELECT count(*), sum(sal), avg(sal), min(sal), max(sal) FROM employee WHERE dept_id = 30;
--p.69 例題-3
SELECT count(*) FROM employee WHERE comm IS NULL;
-- p.70 例題-4
SELECT count(DISTINCT dept_id) FROM employee;
-- p.70 例題-5【応用】
SELECT avg(nullif(COALESCE(next, current), 0)) FROM nextsalary;
-- p.71 参考
SELECT *, COALESCE(next, current), nullif(COALESCE(next, current), 0) FROM nextsalary;
-- p.73 例題-1
SELECT dept_id, count(*), avg(sal), min(sal), max(sal) FROM employee GROUP BY dept_id ORDER BY dept_id;
-- p.73 例題-2
SELECT sex, count(*) FROM employee GROUP BY sex ORDER BY sex;
-- p.74 例題-3
SELECT dept_id, sex, count(*), avg(sal) FROM employee GROUP BY dept_id, sex ORDER BY dept_id, sex;
-- p.74 例題-4
SELECT dept_id, sex, count(*), avg(sal) FROM employee GROUP BY dept_id, sex ORDER BY sex, dept_id;
-- p.75 例題-5
SELECT dept_id, sum(sal), avg(sal), min(sal), max(sal) FROM employee GROUP BY dept_id HAVING sum(sal) <= 5000 ORDER BY dept_id;
-- p.75 例題-6
SELECT dept_id, sum(sal), avg(sal), min(sal), min(sal) FROM employee WHERE sex = 1 GROUP BY dept_id HAVING sum(sal) <= 5000 ORDER BY dept_id;
-- p.76 例題-1
SELECT DISTINCT dept_id FROM employee ORDER BY dept_id;
-- p.76 （補足）
SELECT dept_id FROM employee ORDER BY dept_id;
-- p.77 例題-2
SELECT DISTINCT ON (dept_id) emp_name, dept_id, sal FROM employee ORDER BY dept_id, sal DESC;
-- p.77 （補足）
SELECT emp_name, dept_id, sal FROM employee ORDER BY dept_id, sal DESC; 
-- p.78 実習-1
SELECT sum(cost), avg(cost), min(cost), max(cost) FROM product;
-- p.78 実習-2
SELECT count(*), count(discount), count(DISTINCT discount), sum(discount), avg(discount), min(discount), max(discount) FROM product;
-- p.78 実習-3
SELECT discount, count(discount), sum(discount), avg(discount), min(discount), max(discount) FROM product GROUP BY discount ORDER BY discount;
-- p.79 実習-4
SELECT discount, count(discount), sum(discount), avg(discount), min(discount), max(discount) FROM product GROUP BY discount HAVING NOT count(discount) < 5 ORDER BY discount;
-- p.79 実習-5
SELECT discount, count(discount), sum(discount), avg(discount), min(discount), max(discount) FROM product WHERE cost >= 15000 GROUP BY discount ORDER BY discount;
-- p.79 実習-6
SELECT emp_id, avg(total) FROM packedsales GROUP BY emp_id ORDER BY emp_id;
-- p.80 実習-7
SELECT psales_date, sum(total) FROM packedsales GROUP BY psales_date ORDER BY sum(total) DESC LIMIT 5;
SELECT psales_date, sum(total) FROM packedsales GROUP BY psales_date ORDER BY 2 DESC LIMIT 5;
-- p.80 実習-8
SELECT emp_id FROM packedsales GROUP BY emp_id ORDER BY emp_id;
SELECT DISTINCT emp_id FROM packedsales ORDER BY 1;
