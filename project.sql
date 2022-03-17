DROP database libery;
CREATE database libery;
SHOW databases;
USE libery;

-- CREATE TABLES--------
CREATE TABLE author(
`author_id` int auto_increment NOT NULL PRIMARY KEY,
`author_firstname` VARCHAR(20),
`author_lastname` VARCHAR(20)
); 

CREATE TABLE book(
`book_id` int auto_increment NOT NULL PRIMARY KEY,
`book_title` VARCHAR(60) NOT NULL,
`book_author` int,
 FOREIGN KEY (book_author) REFERENCES author(author_id),
`publication_year` DATE
);

CREATE TABLE client(
`client_id` int auto_increment NOT NULL PRIMARY KEY,
`client_firstname` VARCHAR(20),
`client_lastname` VARCHAR(20),
`client_joined_date` DATE
); 

CREATE TABLE loan(
`loan_id` int auto_increment NOT NULL PRIMARY KEY,
`book` int,
FOREIGN KEY(book) REFERENCES book(book_id),
`client` int,
FOREIGN KEY(client) REFERENCES client(client_id),
`loan_date` DATE
); 

-- solution for  Error code 1452 - Cannot add or update a child row: a foreign key constraint fails
set foreign_key_checks=0;
-- inserting values to tables
INSERT INTO author VALUES(
5,
"Malin",
"Eklund"
);
INSERT INTO book(book_id, book_title,book_author, publication_year) VALUES(
5,
"java book",
3,
"2000/11/18"
);

INSERT INTO client VALUES(
5,
"sally",
"Adem",
"1995/4/2"
);

INSERT INTO loan VALUES(
5,
1,
5,
"2021/4/5"
); 

-- showing tables values
SELECT * FROM book;
SELECT * FROM author;
SELECT * FROM loan;
SELECT * FROM client;
-- updating and deleting  tables
UPDATE book SET book_title = "C# book" WHERE book_id=1;
UPDATE book SET book_title = "Python book", book_author = 2 WHERE book_id=2;
DELETE FROM author WHERE author_id = 3;

-- inner join
SELECT * FROM book inner JOIN author ON book.book_author = author.author_id;

-- joind the book and author first and last name
SELECT book.*, author.author_firstname, author.author_lastname
FROM book left join author on author.author_id = book.book_author;

-- join the 3 tables
SELECT loan.loan_id, book.book_title, client.client_firstname,client.client_lastname, loan.loan_date 
FROM loan INNER join book on loan.book = book.book_id
INNER JOIN  client on loan.client = client.client_id;

















