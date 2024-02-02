# Database-101
## Definition:

> A **database** is a structured collection of data, organized to be easily accessed, managed, and updated. It serves as a central repository for storing and retrieving information.
> 

## Key Components:

1. **Tables:**
    - Basic building blocks of a database.
    - Represent entities (e.g., customers, products) and consist of rows and columns.
2. **Rows:**
    - Also known as records or tuples.
    - Each row represents a single data entry in the table.
3. **Columns:**
    - Also known as fields or attributes.
    - Each column represents a specific type of data (e.g., name, age, address).

## Database Types:

1. **Relational Databases:**
    - Organize data into tables with predefined relationships.
    - Examples: MySQL, PostgreSQL, SQLite.
2. **Non-rel Databases:**
    - Do not rely on a fixed schema.
    - Types include document-oriented (MongoDB), key-value (Redis), and graph databases (Neo4j).

## Database Operations:

1. **CRUD Operations:**
    - **Create:** Inserting new records into the database.
    - **Read:** Retrieving data from the database.
    - **Update:** Modifying existing records.
    - **Delete:** Removing records from the database.
2. **Query Language:**
    - SQL (Structured Query Language) is commonly used for relational databases.
    - NoSQL databases often have their own query languages.

## Database Management System (DBMS):

1. **Definition:**
    - Software that facilitates the creation, maintenance, and use of databases.
2. **Examples:**
    - For relational databases: MySQL, Oracle, Microsoft SQL Server.
    - For NoSQL databases: MongoDB, Cassandra, Redis.

# Indexing

## Purpose

Indexing is a database optimization technique designed to enhance the speed of data retrieval operations. By creating an index on one or more columns of a table, the database system can quickly locate the rows that satisfy a specific condition, significantly reducing the time required to search and access data.

## Types of Indexing

1. **Single-Level Indexing:**
    - In a single-level index, there is a direct mapping between the index entries and the actual data rows. It's a straightforward lookup structure.
    
    **Example:**
    Suppose you have a table `students` with columns `student_id` and `name`. A single-level index on the `student_id` column would directly point to the corresponding rows in the table, making the retrieval of information faster.
    
    ```sql
    CREATE INDEX idx_student_id ON students(student_id);
    
    ```
    
2. **Multi-Level Indexing:**
    - Multi-level indexing involves creating a hierarchical structure of indexes, where each level of the index refers to another level until reaching the actual data.
    
    **Example:**
    Consider a table `employees` with columns `employee_id` and `salary`. A multi-level index on the `salary` column might have multiple levels, starting with a high-level index pointing to mid-level indexes, and eventually leading to the actual data.
    
    ```sql
    CREATE INDEX idx_salary ON employees(salary);
    
    ```
    

## Advantages of Indexing:

1. **Faster Data Retrieval:**
    - Indexing accelerates the search process, making data retrieval operations more efficient.
2. **Improved Query Performance:**
    - Queries that involve conditions on indexed columns can be executed more swiftly.
3. **Enhanced Sorting:**
    - Indexes aid in sorting data, benefiting queries that require ordered results.

## Disadvantages of Indexing:

1. **Overhead during Updates:**
    - Maintaining indexes during data insertion, update, or deletion operations can introduce overhead.
2. **Increased Storage Space:**
    - Indexes consume additional storage space, impacting the overall database size.

## Considerations:

- **Choosing Columns for Indexing:**
    - Columns frequently used in WHERE clauses or involved in JOIN operations are good candidates for indexing.
- **Trade-off:**
    - While indexing improves query performance, it may come with the cost of increased storage and potential overhead during data modifications.
