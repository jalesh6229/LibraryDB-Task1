CREATE DATABASE LibraryDB;

-- Table: Authors
CREATE TABLE Authors (
    AuthorID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Bio TEXT
);

-- Table: Categories
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

-- Table: Books
CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20),
    PublishedYear INT,
    CategoryID INT REFERENCES Categories(CategoryID)
);

-- Table: BookAuthors (Many-to-Many)
CREATE TABLE BookAuthors (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Table: Members
CREATE TABLE Members (
    MemberID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    JoinDate DATE
);

-- Table: Loans
CREATE TABLE Loans (
    LoanID SERIAL PRIMARY KEY,
    BookID INT REFERENCES Books(BookID),
    MemberID INT REFERENCES Members(MemberID),
    LoanDate DATE,
    ReturnDate DATE
);
