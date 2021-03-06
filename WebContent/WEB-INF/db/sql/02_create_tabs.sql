/**
 * e[uÌSí
 */
DROP TABLE IF EXISTS sales       CASCADE;
DROP TABLE IF EXISTS packedsales CASCADE;
DROP TABLE IF EXISTS nextsalary  CASCADE;
DROP TABLE IF EXISTS employee    CASCADE;
DROP TABLE IF EXISTS customer    CASCADE;
DROP TABLE IF EXISTS product     CASCADE;
DROP TABLE IF EXISTS department  CASCADE;
DROP TABLE IF EXISTS account;

/**
 * e[uÌì¬
 */
---------------------------------------
-- åe[u
---------------------------------------
CREATE TABLE department (
  dept_id   INTEGER,     --å ID
  dept_name VARCHAR(20), --å¼
  loc       VARCHAR(32), --ê
  mgr_id    INTEGER,     --ÇÒ ID
  adept_id  INTEGER      --Çå ID
);
ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY (dept_id);

---------------------------------------
-- SÒe[u
---------------------------------------
CREATE TABLE employee (
  emp_id    INTEGER,       -- SÒID
  dept_id   INTEGER,       -- ID
  emp_name  VARCHAR(20),   -- SÒ¼
  birthday  DATE,          -- ¶NÌãú
  hiredate  DATE,          -- üÐNÌãú
  sex       INTEGER,       -- «Ê
  sal       NUMERIC(9, 2), -- ^z
  comm      NUMERIC(7, 2)  -- R~bV
);
ALTER TABLE employee ADD CONSTRAINT pk_employee PRIMARY KEY (emp_id);
ALTER TABLE employee ADD CONSTRAINT fk_employee FOREIGN KEY (dept_id) REFERENCES department(dept_id);

---------------------------------------
-- »ie[u
---------------------------------------
CREATE TABLE product (
  prod_id   INTEGER,       -- ¤iID
  prod_name VARCHAR(20),   -- ¤i¼
  model_no  VARCHAR(20),   -- ^Ô
  cost      NUMERIC(9, 2), -- W¿i
  discount  NUMERIC(2, 2)  -- ÀEø¦
);
ALTER TABLE product ADD CONSTRAINT pk_product PRIMARY KEY (prod_id);

---------------------------------------
-- Úqe[u
---------------------------------------
CREATE TABLE customer (
  cust_id   INTEGER,     -- ÚqID
  cust_name VARCHAR(20), -- Úq¼
  address   VARCHAR(40), -- Z
  tel       VARCHAR(20), -- dbÔ
  fax       VARCHAR(20)  -- FAXÔ
);
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (cust_id);

---------------------------------------
-- ãe[u
---------------------------------------
CREATE TABLE packedsales (
  psales_no     INTEGER,      --ãNO
  psales_date   DATE,         --ãút
  emp_id        INTEGER,      --SÒID
  cust_id       INTEGER,      --ÚqID
  cust_address  VARCHAR(40),  --Í¯æZ
  cust_tel      VARCHAR(20),  --Í¯ædbÔ
  delivery_date DATE,         --Í¯\èú
  delivery_time TIME,         --Í¯\è
  total         NUMERIC(9,2), --ãvàz
  carriage      NUMERIC(9,2), --¿
  excise        NUMERIC(9,2)  --ÁïÅz
);
ALTER TABLE packedsales ADD CONSTRAINT pk_packedsales PRIMARY KEY (psales_no);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_emp  FOREIGN KEY (emp_id)  REFERENCES employee(emp_id);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_cust FOREIGN KEY (cust_id) REFERENCES customer(cust_id);

---------------------------------------
-- ã¾×e[u
---------------------------------------
CREATE TABLE sales (
  sales_no  INTEGER,      --ã¾×NO
  psales_no INTEGER,      --ãNO
  prod_id   INTEGER,      --¤iID
  quantity  NUMERIC(9,2), --Ê
  price     NUMERIC(9,2)  --¿
--  PRIMARY KEY(sales_no, psales_no)
);
ALTER TABLE sales ADD CONSTRAINT pk_sales PRIMARY KEY (sales_no, psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_parent FOREIGN KEY (psales_no) REFERENCES packedsales(psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_product FOREIGN KEY (prod_id) REFERENCES product(prod_id);

---------------------------------------
-- N^e[u
---------------------------------------
CREATE TABLE nextsalary (
emp_id INTEGER,         -- SÒID
current NUMERIC(9, 2),  -- YNx^z
next NUMERIC(9, 2)      -- Nx^z
);
ALTER TABLE nextsalary ADD CONSTRAINT pk_nextsalary PRIMARY KEY (emp_id);
ALTER TABLE nextsalary ADD CONSTRAINT fk_nextsalary FOREIGN KEY (emp_id) REFERENCES employee(emp_id);

---------------------------------------
-- ûÀe[u
---------------------------------------
CREATE TABLE account(
  emp_id  INTEGER,  -- SÒID
  balance INTEGER   -- aàz
);
