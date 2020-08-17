-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Category(
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    category_name VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Product(
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(50) NOT NULL, 
    price DECIMAL (5,2) NOT NULL,
    stock INTEGER(11) NOT NULL,
    category_id INTEGER(11),
    PRIMARY KEY (id)
);

CREATE TABLE Tag(
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    tag_name VARCHAR(50),
    PRIMARY KEY (id)
);

CREATE TABLE ProductTag(
    id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_id INTEGER(11),
    tag_id INTEGER(11),
    PRIMARY KEY (id)
);

