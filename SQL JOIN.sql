CREATE TABLE users (
id int NOT NULL PRIMARY KEY,
email varchar(20),
name varchar(30),
password varchar(50),
address varchar(100),
role varchar(10),
status varchar(20),
create_at timestamp,
update_at timestamp
)

INSERT INTO users (id,email,name,password,address,role,status) VALUES
(1, "du@email.com", "Dudung", "dudung123", "Cimahi", "Member", "Aktif"),
(2, "da@email.com", "Dadang", "dadang123", "Ciamis", "Member", "Aktif"),
(3, "di@email.com", "Diding", "diding123", "Cianjur", "Member", "Aktif"),
(4, "de@email.com", "Dedeng", "dedeng123", "Cimalaka", "Member", "Aktif"),
(5, "do@email.com", "Dodong", "dodong123", "Cisarua", "Member", "Aktif");



CREATE TABLE categories(
categories_id INT NOT NULL PRIMARY KEY,
users_id INT,
code VARCHAR(5),
name VARCHAR(30),
slug VARCHAR(50),
description VARCHAR(100),
status VARCHAR(100),
photo VARCHAR(50)
)

INSERT INTO categories (categories_id, users_id, code, name, slug, description, status, photo) VALUES
(1, 1, "12345", "Pisau", "Blade", "Peralatan Rumah Tangga", "Ready", "pisau.jpg" ),
(2, 2, "23456", "Gunting", "Kenko", "Peralatan Rumah Tangga", "Ready", "gunting.jpg"),
(3, 3, "11232", "Kulkas", "Philips", "Elektronik", "Ready", "kulkas.jpg");



CREATE TABLE products (
products_id int NOT NULL PRIMARY KEY,
users_id int,
categories_id int,
code varchar(5),
name varchar(50),
slug varchar(50),
description longtext,
photo varchar(50),
qty double,
unit varchar(100),
price double,
status varchar(100)
)

INSERT INTO products (products_id, users_id, categories_id, code, name, slug, description, photo, qty, unit, price, status) VALUES 
(1, 3, 1, "12345", "Pisau", "Blade", "Peralatan Rumah Tangga", "pisau.jpg", "60", "Made in Indonesia", "50.000", "Ready"),
(2, 2, 2, "23456", "Gunting", "Kenko", "Peralatan Rumah Tangga", "gunting.jpg", "60", "Made in Indonesia", "150.000", "Ready"),
(3, 1, 3, "11232", "Kulkas", "Philips", "Elektronik", "kulkas.jpg", "3", "Made in Korea", "400.000", "Ready");



SELECT products.products_id, categories.categories_id, users.id FROM products
LEFT JOIN users
on users.id = products.products_id 
LEFT JOIN categories 
on categories.categories_id = products.products_id 

