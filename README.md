# SQL-Developer-Internship-Task-8
# Task 8: Stored Procedures and Functions

## Task Goal
Learn to create reusable SQL blocks using:

- CREATE PROCEDURE (for logic-based tasks)
- CREATE FUNCTION (to return calculated results)

## What I Did
- Created a **procedure `IssueLoan`** that inserts a new loan record with parameters.
- Created a **function `GetFineTotalByMember`** that returns total unpaid fines for a given member.

## How to Use
### 1. Issue a new loan
- CALL IssueLoan(1, 2, 1, '2025-06-25', '2025-07-05');
### 2. Check fine total
- SELECT GetFineTotalByMember(1) AS TotalUnpaidFine;

## Files
`description_routines`: contains procedure and function definitions
`create_functions.sql`: contains query for CREATE FUNCTION
`create_procedures.sql`: contains query for CREATE PROCEDURE
`library_schema.sql`: contains schema of tables
`output for library_schema.png`: Output for library_schema.sql
`README.md`: explanation and usage

## Tools Used
- One compiler / MySQL Workbench
