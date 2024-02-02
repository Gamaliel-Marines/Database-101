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

# Normalization

## Purpose:

> Normalization is a database design technique that aims to organize data in a structured and efficient manner, minimizing data redundancy and dependency. The primary goal is to ensure data integrity and eliminate anomalies, such as update anomalies, insertion anomalies, and deletion anomalies, which may arise when the database is not properly organized.
> 

## Normal Forms:

1. **First Normal Form (1NF):**
    - Ensures that each column in a table contains atomic (indivisible) values, and there are no repeating groups or arrays.
    
    **Example:**
    
    ```
    | Student_ID | Subjects                    |
    |------------|-----------------------------|
    | 101        | Math, Physics, Chemistry    |
    
    ```
    
    Convert to 1NF:
    
    ```
    | Student_ID | Subject   |
    |------------|-----------|
    | 101        | Math      |
    | 101        | Physics   |
    | 101        | Chemistry |
    
    ```
    
2. **Second Normal Form (2NF):**
    - Builds on 1NF and ensures that non-key attributes are fully functionally dependent on the primary key.
    
    **Example:**
    
    ```
    | Order_ID | Product_ID | Product_Name | Supplier    |
    |----------|------------|--------------|-------------|
    | 1        | 101        | Laptop       | ABC Tech    |
    | 1        | 102        | Printer      | XYZ Supplies|
    
    ```
    
    Convert to 2NF:
    
    ```
    | Order_ID | Product_ID | Supplier    |
    |----------|------------|-------------|
    | 1        | 101        | ABC Tech    |
    | 1        | 102        | XYZ Supplies|
    
    ```
    
3. **Third Normal Form (3NF):**
    - Extends 2NF by ensuring that there is no transitive dependency, i.e., no non-prime attribute is dependent on another non-prime attribute.
    
    **Example:**
    
    ```
    | Employee_ID | Department | Manager    |
    |-------------|------------|------------|
    | 101         | IT         | John Smith |
    | 102         | HR         | Jane Doe   |
    
    ```
    
    Convert to 3NF:
    
    ```
    | Employee_ID | Department | Manager_ID |
    |-------------|------------|------------|
    | 101         | IT         | 1          |
    | 102         | HR         | 2          |
    
    | Manager_ID | Manager    |
    |------------|------------|
    | 1          | John Smith |
    | 2          | Jane Doe   |
    
    ```
    

Normalization continues with higher normal forms (4NF, 5NF, etc.), but 1NF, 2NF, and 3NF are the most commonly discussed and implemented.

## Benefits of Normalization:

1. **Reduces Data Redundancy:**
    - Eliminates repetitive data, reducing storage space and ensuring consistency.
2. **Minimizes Update Anomalies:**
    - Updates and modifications are less error-prone as data is stored in a structured manner.
3. **Enhances Data Integrity:**
    - Prevents data anomalies and maintains the integrity of the database.
4. **Facilitates Query Optimization:**
    - Well-structured tables make queries more straightforward and efficient.

Normalization is a crucial aspect of database design, and understanding the normal forms helps in creating robust and efficient database schemas.
