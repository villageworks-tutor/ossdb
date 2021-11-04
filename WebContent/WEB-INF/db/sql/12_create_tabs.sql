DROP TABLE IF EXISTS goods CASCADE;
DROP TABLE IF EXISTS food CASCADE;
DROP TABLE IF EXISTS recipe CASCADE;
DROP TABLE IF EXISTS supplier CASCADE;

CREATE TABLE supplier (
  supplier_cd CHAR(6) NOT NULL,
  supplier_name VARCHAR(60) NOT NULL,
  addr VARCHAR(90),
  post_num VARCHAR(8),
  tel VARCHAR(20),
  fax VARCHAR(20)
);
ALTER TABLE supplier ADD CONSTRAINT pk_supplier PRIMARY KEY (supplier_cd);

CREATE TABLE goods (
  goods_cd CHAR(6) NOT NULL,
  goods_name VARCHAR(60) NOT NULL,
  price INT NOT NULL DEFAULT 0,
  calorry INT,
  sales_start DATE,
  manual_text TEXT
);
ALTER TABLE goods ADD CONSTRAINT pk_goods PRIMARY KEY (goods_cd);

CREATE TABLE food (
  food_cd CHAR(6) NOT NULL,
  food_name VARCHAR(60) NOT NULL,
  supplier_cd CHAR(6) NOT NULL,
  supplier_cost INT NOT NULL,
  supplier_unit VARCHAR(10) NOT NULL,
  convert_cost INT DEFAULT 1,
  recipe_unit VARCHAR(10) NOT NULL
);
ALTER TABLE food ADD CONSTRAINT pk_food PRIMARY KEY (food_cd);
ALTER TABLE food ADD CONSTRAINT fk_food FOREIGN KEY (supplier_cd) REFERENCES supplier (supplier_cd);

CREATE TABLE recipe (
  goods_cd CHAR(6) NOT NULL,
  food_cd CHAR(6) NOT NULL,
  necessary_num NUMERIC(7, 2) DEFAULT 1
);
ALTER TABLE recipe ADD CONSTRAINT pk_recipe PRIMARY KEY (goods_cd, food_cd);
ALTER TABLE recipe ADD CONSTRAINT fk_recipe_goods FOREIGN KEY (goods_cd) REFERENCES goods (goods_cd);
ALTER TABLE recipe ADD CONSTRAINT fk_recipe_food FOREIGN KEY (food_cd) REFERENCES food (food_cd);

