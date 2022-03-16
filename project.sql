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
`book_id` int auto_increment NOT NULL PRIMARY KEY,
`title` VARCHAR(60) NOT NULL,
`author` VARCHAR(60),
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
-- view tables
SHOW TABLES;