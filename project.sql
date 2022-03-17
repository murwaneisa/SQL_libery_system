-- delete the database. 
Drop database libery;
-- create database libery.
CREATE database libery;
-- show all databases.
SHOW databases;
-- using the database
USE libery;
-- create book table
CREATE TABLE book(
`id` int auto_increment NOT NULL PRIMARY KEY,
`title` VARCHAR(60) NOT NULL,
`author` int,
 FOREIGN KEY (id) REFERENCES author(id),
`publication_year` DATE
);
-- create author table
CREATE TABLE author(
`id` int auto_increment NOT NULL PRIMARY KEY,
`first_name` VARCHAR(20),
`last_nam` VARCHAR(20)
); 
-- create client table
CREATE TABLE client(
`id` int auto_increment NOT NULL PRIMARY KEY,
`first_name` VARCHAR(20),
`last_nam` VARCHAR(20),
`joined_date` DATE
); 
-- loan table
CREATE TABLE loan(
`id` int auto_increment NOT NULL PRIMARY KEY,
`book` int,
FOREIGN KEY(id) REFERENCES book(id),
`clinet` int,
FOREIGN KEY(id) REFERENCES client(id),
`loan_date` DATE
);
-- view tables
SHOW TABLES;
-- solution for  Error code 1452 - Cannot add or update a child row: a foreign key constraint fails
set foreign_key_checks=0;

--- inserting to tables
INSERT INTO author VALUES(
5,
"Murwan",
"Eisa"
);
INSERT INTO book(id, title,author, publication_year) VALUES(
5,
"React JS book",
4,
"2020/10/18"
);

INSERT INTO client VALUES(
5,
"Amira",
"Abdallah",
"2021/4/2"
);

INSERT INTO loan VALUES(
5,
4,
4,
"2021/4/5"
); 

-- show tables value
SELECT * FROM book;
SELECT * FROM author;
SELECT * FROM loan;
SELECT * FROM client;