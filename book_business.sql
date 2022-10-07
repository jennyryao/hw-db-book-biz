DROP DATABASE IF EXISTS `book_business`;
CREATE DATABASE IF NOT EXISTS `book_business`; 
USE `book_business`;

-- --------------------------------------
--  TABLE BOOKS
-- --------------------------------------

CREATE TABLE `Books` (
	`BookID` 			int NOT NULL,
	`BookName` 			varchar (30) NOT NULL,
	`AuthorID` 			int NULL,	
	`Genre` 			varchar (30) NULL,
	`EditorID` 			int NULL,	
	`PublisherID`		int NULL,
    `Year`				int NULL 
); 

-- --------------------------------------
--  TABLE AUTHORS
-- --------------------------------------

CREATE TABLE `Authors` (
	`AuthorID` 			int NOT NULL,
	`AuthorName` 		varchar (30) NULL	
);

-- --------------------------------------
--  TABLE ROYALTIES
-- --------------------------------------

CREATE TABLE `Royalties` (
	`BookID` 			int NOT NULL,
	`AuthorID` 			int NOT NULL,
	`Royalties`			int NULL
);

-- --------------------------------------
--  TABLE ORDERS
-- --------------------------------------

CREATE TABLE `Orders` (
	`OrderID` 			int NOT NULL,
	`BookID` 			int NULL,	
	`CustomerID` 		int NULL,
	`CustomerName` 		varchar (30) NULL,
	`CustomerAddress` 	varchar (50) NULL
); 

-- --------------------------------------
--  TABLE EDITORS
-- --------------------------------------

CREATE TABLE `Editors` (
	`EditorID` 			int NOT NULL,
	`EditorName` 		varchar (30) NULL	
);

-- --------------------------------------
--  TABLE PUBLISHERS
-- --------------------------------------

CREATE TABLE `Publishers` (
	`PublisherID` 			int NOT NULL,
	`PublisherName` 		varchar (30) NULL,	
	`PublisherCountry` 		varchar (30) NULL	
);
