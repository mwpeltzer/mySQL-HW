DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name DECIMAL(10,2) NULL,
  price INT NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (id)
);