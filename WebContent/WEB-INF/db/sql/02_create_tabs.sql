/**
 * �e�[�u���̑S�폜
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
 * �e�[�u���̍쐬
 */
---------------------------------------
-- ����e�[�u��
---------------------------------------
CREATE TABLE department (
  dept_id   INTEGER,     --���� ID
  dept_name VARCHAR(20), --���喼
  loc       VARCHAR(32), --�ꏊ
  mgr_id    INTEGER,     --�Ǘ��� ID
  adept_id  INTEGER      --�Ǘ����� ID
);
ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY (dept_id);

---------------------------------------
-- �S���҃e�[�u��
---------------------------------------
CREATE TABLE employee (
  emp_id    INTEGER,       -- �S����ID
  dept_id   INTEGER,       -- ����ID
  emp_name  VARCHAR(20),   -- �S���Ҏ���
  birthday  DATE,          -- ���N���̔����
  hiredate  DATE,          -- ���ДN���̔����
  sex       INTEGER,       -- ����
  sal       NUMERIC(9, 2), -- ���^�z
  comm      NUMERIC(7, 2)  -- �R�~�b�V����
);
ALTER TABLE employee ADD CONSTRAINT pk_employee PRIMARY KEY (emp_id);
ALTER TABLE employee ADD CONSTRAINT fk_employee FOREIGN KEY (dept_id) REFERENCES department(dept_id);

---------------------------------------
-- ���i�e�[�u��
---------------------------------------
CREATE TABLE product (
  prod_id   INTEGER,       -- ���iID
  prod_name VARCHAR(20),   -- ���i��
  model_no  VARCHAR(20),   -- �^��
  cost      NUMERIC(9, 2), -- �W�����i
  discount  NUMERIC(2, 2)  -- ���E������
);
ALTER TABLE product ADD CONSTRAINT pk_product PRIMARY KEY (prod_id);

---------------------------------------
-- �ڋq�e�[�u��
---------------------------------------
CREATE TABLE customer (
  cust_id   INTEGER,     -- �ڋqID
  cust_name VARCHAR(20), -- �ڋq����
  address   VARCHAR(40), -- �Z��
  tel       VARCHAR(20), -- �d�b�ԍ�
  fax       VARCHAR(20)  -- FAX�ԍ�
);
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (cust_id);

---------------------------------------
-- ����e�[�u��
---------------------------------------
CREATE TABLE packedsales (
  psales_no     INTEGER,      --����NO
  psales_date   DATE,         --������t
  emp_id        INTEGER,      --�S����ID
  cust_id       INTEGER,      --�ڋqID
  cust_address  VARCHAR(40),  --�͂���Z��
  cust_tel      VARCHAR(20),  --�͂���d�b�ԍ�
  delivery_date DATE,         --�͂��\���
  delivery_time TIME,         --�͂��\�莞��
  total         NUMERIC(9,2), --���㍇�v���z
  carriage      NUMERIC(9,2), --����
  excise        NUMERIC(9,2)  --����Ŋz
);
ALTER TABLE packedsales ADD CONSTRAINT pk_packedsales PRIMARY KEY (psales_no);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_emp  FOREIGN KEY (emp_id)  REFERENCES employee(emp_id);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_cust FOREIGN KEY (cust_id) REFERENCES customer(cust_id);

---------------------------------------
-- ���㖾�׃e�[�u��
---------------------------------------
CREATE TABLE sales (
  sales_no  INTEGER,      --���㖾��NO
  psales_no INTEGER,      --����NO
  prod_id   INTEGER,      --���iID
  quantity  NUMERIC(9,2), --����
  price     NUMERIC(9,2)  --����
--  PRIMARY KEY(sales_no, psales_no)
);
ALTER TABLE sales ADD CONSTRAINT pk_sales PRIMARY KEY (sales_no, psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_parent FOREIGN KEY (psales_no) REFERENCES packedsales(psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_product FOREIGN KEY (prod_id) REFERENCES product(prod_id);

---------------------------------------
-- ���N���^�e�[�u��
---------------------------------------
CREATE TABLE nextsalary (
emp_id INTEGER,         -- �S����ID
current NUMERIC(9, 2),  -- ���Y�N�x���^�z
next NUMERIC(9, 2)      -- ���N�x���^�z
);
ALTER TABLE nextsalary ADD CONSTRAINT pk_nextsalary PRIMARY KEY (emp_id);
ALTER TABLE nextsalary ADD CONSTRAINT fk_nextsalary FOREIGN KEY (emp_id) REFERENCES employee(emp_id);

---------------------------------------
-- �����e�[�u��
---------------------------------------
CREATE TABLE account(
  emp_id  INTEGER,  -- �S����ID
  balance INTEGER   -- �a���z
);
