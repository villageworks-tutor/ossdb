/**
 * テーブルの全削除
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
 * テーブルの作成
 */
---------------------------------------
-- 部門テーブル
---------------------------------------
CREATE TABLE department (
  dept_id   INTEGER,     --部門 ID
  dept_name VARCHAR(20), --部門名
  loc       VARCHAR(32), --場所
  mgr_id    INTEGER,     --管理者 ID
  adept_id  INTEGER      --管理部門 ID
);
ALTER TABLE department ADD CONSTRAINT pk_department PRIMARY KEY (dept_id);

---------------------------------------
-- 担当者テーブル
---------------------------------------
CREATE TABLE employee (
  emp_id    INTEGER,       -- 担当者ID
  dept_id   INTEGER,       -- 部署ID
  emp_name  VARCHAR(20),   -- 担当者氏名
  birthday  DATE,          -- 生年月の売上日
  hiredate  DATE,          -- 入社年月の売上日
  sex       INTEGER,       -- 性別
  sal       NUMERIC(9, 2), -- 給与額
  comm      NUMERIC(7, 2)  -- コミッション
);
ALTER TABLE employee ADD CONSTRAINT pk_employee PRIMARY KEY (emp_id);
ALTER TABLE employee ADD CONSTRAINT fk_employee FOREIGN KEY (dept_id) REFERENCES department(dept_id);

---------------------------------------
-- 製品テーブル
---------------------------------------
CREATE TABLE product (
  prod_id   INTEGER,       -- 商品ID
  prod_name VARCHAR(20),   -- 商品名
  model_no  VARCHAR(20),   -- 型番
  cost      NUMERIC(9, 2), -- 標準価格
  discount  NUMERIC(2, 2)  -- 限界割引率
);
ALTER TABLE product ADD CONSTRAINT pk_product PRIMARY KEY (prod_id);

---------------------------------------
-- 顧客テーブル
---------------------------------------
CREATE TABLE customer (
  cust_id   INTEGER,     -- 顧客ID
  cust_name VARCHAR(20), -- 顧客氏名
  address   VARCHAR(40), -- 住所
  tel       VARCHAR(20), -- 電話番号
  fax       VARCHAR(20)  -- FAX番号
);
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (cust_id);

---------------------------------------
-- 売上テーブル
---------------------------------------
CREATE TABLE packedsales (
  psales_no     INTEGER,      --売上NO
  psales_date   DATE,         --売上日付
  emp_id        INTEGER,      --担当者ID
  cust_id       INTEGER,      --顧客ID
  cust_address  VARCHAR(40),  --届け先住所
  cust_tel      VARCHAR(20),  --届け先電話番号
  delivery_date DATE,         --届け予定日
  delivery_time TIME,         --届け予定時刻
  total         NUMERIC(9,2), --売上合計金額
  carriage      NUMERIC(9,2), --送料
  excise        NUMERIC(9,2)  --消費税額
);
ALTER TABLE packedsales ADD CONSTRAINT pk_packedsales PRIMARY KEY (psales_no);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_emp  FOREIGN KEY (emp_id)  REFERENCES employee(emp_id);
ALTER TABLE packedsales ADD CONSTRAINT fk_packedsales_cust FOREIGN KEY (cust_id) REFERENCES customer(cust_id);

---------------------------------------
-- 売上明細テーブル
---------------------------------------
CREATE TABLE sales (
  sales_no  INTEGER,      --売上明細NO
  psales_no INTEGER,      --売上NO
  prod_id   INTEGER,      --商品ID
  quantity  NUMERIC(9,2), --数量
  price     NUMERIC(9,2)  --売価
--  PRIMARY KEY(sales_no, psales_no)
);
ALTER TABLE sales ADD CONSTRAINT pk_sales PRIMARY KEY (sales_no, psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_parent FOREIGN KEY (psales_no) REFERENCES packedsales(psales_no);
ALTER TABLE sales ADD CONSTRAINT fk_sales_product FOREIGN KEY (prod_id) REFERENCES product(prod_id);

---------------------------------------
-- 来年給与テーブル
---------------------------------------
CREATE TABLE nextsalary (
emp_id INTEGER,         -- 担当者ID
current NUMERIC(9, 2),  -- 当該年度給与額
next NUMERIC(9, 2)      -- 次年度給与額
);
ALTER TABLE nextsalary ADD CONSTRAINT pk_nextsalary PRIMARY KEY (emp_id);
ALTER TABLE nextsalary ADD CONSTRAINT fk_nextsalary FOREIGN KEY (emp_id) REFERENCES employee(emp_id);

---------------------------------------
-- 口座テーブル
---------------------------------------
CREATE TABLE account(
  emp_id  INTEGER,  -- 担当者ID
  balance INTEGER   -- 預金額
);
