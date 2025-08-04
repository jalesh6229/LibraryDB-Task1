# 📚 Library Management Database – Task 1

## 🎯 Objective
Design and implement a well-structured relational database schema for a Library Management System using PostgreSQL.

## 📁 Repository Contents
- `schema_pg.sql`: SQL script to create tables and define relationships (PostgreSQL compatible)
- `ER-diagram.png`: Visual representation of entity relationships
- `README.md`: Documentation and explanation

## 🧰 Tools Used
- PostgreSQL (pgAdmin)
- dbdiagram.io (for ERD)
- GitHub

## 🧱 Tables Overview
- **Authors**: Stores author details
- **Categories**: Book genres/types
- **Books**: Book details including category
- **BookAuthors**: Many-to-many link between books and authors
- **Members**: Registered library members
- **Loans**: Tracks which member borrowed which book and when

## 🚀 How to Use
1. Clone this repository.
2. Open `pgAdmin` and create a database named `librarydb`.
3. Open the `schema_pg.sql` file in Query Tool and execute it.
4. Use `ER-diagram.png` to understand table relationships.

---

### 📌 Outcome
This schema covers key concepts such as:
- Primary and foreign keys
- One-to-many and many-to-many relationships
- Normalized design for scalability


