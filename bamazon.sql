DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Flathead Screwdriver", "Tools", 6.59, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Toilet Paper", "Personal Hygiene", 9.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vacuum", "Home Care", 49.99, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Apples", "Produce", 3.00, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Socks", "Clothing", 12.99, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Patio Chair", "Home & Patio", 19.99, 45);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nintendo DS", "Toys & Video Games", 99.99, 300);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rogue One", "Entertainment", 19.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Basketball", "Sports, Fitness and Outdoors", 6.59, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Crock Pot", "Household", 49.99, 20);