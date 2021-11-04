-- p.51 ���-1
SELECT emp_name, sal FROM employee WHERE sal >= 2000;
-- p.52 ���-2
SELECT emp_name, sal FROM employee WHERE sex = 2;
-- p.52 ���-3
SELECT emp_name, sal FROM employee WHERE emp_name = '�����@�O�]';
-- p.53 ���-4
SELECT emp_name, sal, birthday FROM employee WHERE birthday >= '1980-01-01';
-- p.53 ���-5
SELECT emp_name, sal, birthday FROM employee WHERE emp_id = 20;
-- p.54 ���-1
SELECT emp_name, sal FROM employee WHERE sal >= 2000 AND sal <= 3000;
-- p.55 ���-2
SELECT emp_name, sal FROM employee WHERE sex = 2 AND sal >= 2000;
-- p.55 ���-3
SELECT emp_name, sal FROM employee WHERE emp_id = 2 OR emp_id = 4 OR emp_id = 7;
SELECT emp_name, sal FROM employee WHERE emp_id IN (2, 4, 7);
-- p.56 ���-4
SELECT emp_name, sal FROM employee WHERE sex = 2 OR sal >= 2000;
-- p.56 ���-5
SELECT emp_name, sal FROM employee WHERE sex = 2 OR (sal >= 2000 AND sal <= 3000);
-- p.57 ���-6�y���p�z
SELECT emp_name, sal FROM employee WHERE NOT (sex = 2 OR (sal >= 2000 AND sal <= 3000));
SELECT emp_name, sal FROM employee WHERE sex != 2 AND sal < 2000 OR sal > 3000;
SELECT emp_name, sal FROM employee WHERE sal < 2000 OR sal > 3000 AND sex != 2;
-- p.58 ���-1
SELECT emp_name, sal FROM employee WHERE sal BETWEEN 2000 AND 3000;
-- p.59 ���-2
SELECT emp_name, sal FROM employee WHERE sal BETWEEN 2000 AND 3000 OR sex = 2;
-- p.59 ���-1
SELECT emp_name, sal FROM employee WHERE emp_id IN (2, 4, 7);
-- p.60 ���-1
SELECT * FROM customer WHERE address LIKE '%���s%';
-- p.60 ���-2
SELECT * FROM customer WHERE address NOT LIKE '�����s%';
-- p.61 ���-3
SELECT * FROM customer WHERE cust_name LIKE '_�c%';
-- p.62 �Q�l-1
SELECT 'abc' LIKE 'a%';
SELECT 'a%bc' LIKE 'aE%%' ESCAPE 'E'; -- ������ua%�v����������F�u%�v�𕶎���ƔF�����邽�߂ɃG�X�P�[�v�������uE�v�ɕύX����
-- p.62 �Q�l-2
SELECT 'Hello' LIKE 'hello';
SELECT 'Hello' ILIKE 'hello';
SELECT * FROM customer WHERE tel LIKE '06%' OR tel LIKE '07%';
SELECT * FROM customer WHERE tel SIMILAR TO '0(6|7)%';
-- p.64 ���-1
SELECT * FROM employee WHERE comm IS NOT NULL;
SELECT * FROM employee WHERE NOT (comm IS NULL);
-- p.65 ���K-1
SELECT * FROM product WHERE cost >= 20000;
-- p.65 ���K-2
SELECT cust_id, cust_name FROM customer WHERE fax IS NULL;
-- p.65 ���K-3
SELECT sales_no, psales_no, prod_id, price FROM sales WHERE psales_no BETWEEN 100 AND 199 ORDER BY price DESC;
-- p.66 ���K-4
SELECT prod_id, prod_name, cost * discount FROM product WHERE prod_id IN (102, 104, 106);
-- p.66 ���K-5
SELECT cust_id, cust_address, delivery_date FROM packedsales WHERE cust_address LIKE '%�a�J��%' AND delivery_date BETWEEN '1996-01-01' AND '1996-12-31';
-- p.66 ���K-6
SELECT cust_id, cust_name, tel FROM customer WHERE tel NOT SIMILAR TO '0(3|6)%';
