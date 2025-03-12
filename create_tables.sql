CREATE DATABASE SQL_Recap;
USE SQL_Recap;
CREATE TABLE Authors(
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL,
    Country VARCHAR(100)
);

CREATE TABLE Books(
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(50),
    PublishedYear INT
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Borrowers(
    BorrowerID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    MembershipDate DATE
);