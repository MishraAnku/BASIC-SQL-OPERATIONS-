# BASIC-SQL-OPERATIONS-
SQL
Some basic SQL operations.

SQL (Structured Query Language) is a programming language used for managing and manipulating relational databases. Here are some fundamental SQL operations:

1. SELECT: The SELECT statement is used to retrieve data from one or more tables. It is the most commonly used SQL command and is used to query data from the database. Syntax:

    ```sql
    SELECT column1, column2, ...
    FROM table_name;
    ```

    Example:

    ```sql
    SELECT first_name, last_name
    FROM employees;
    ```

2. INSERT: The INSERT statement is used to insert new records (rows) into a table. Syntax:

    ```sql
    INSERT INTO table_name (column1, column2, ...)
    VALUES (value1, value2, ...);
    ```

    Example:

    ```sql
    INSERT INTO customers (name, email)
    VALUES ('John Doe', 'john@example.com');
    ```

3. UPDATE: The UPDATE statement is used to modify existing records in a table. Syntax:

    ```sql
    UPDATE table_name
    SET column1 = value1, column2 = value2, ...
    WHERE condition;
    ```

    Example:

    ```sql
    UPDATE employees
    SET salary = 50000
    WHERE department = 'Sales';
    ```

4. DELETE: The DELETE statement is used to delete records from a table. Syntax:

    ```sql
    DELETE FROM table_name
    WHERE condition;
    ```

    Example:

    ```sql
    DELETE FROM customers
    WHERE id = 5;
    ```

5. JOIN: The JOIN clause is used to combine rows from two or more tables based on a related column between them. There are several types of JOINs including INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN. Syntax:

    ```sql
    SELECT columns
    FROM table1
    INNER JOIN table2 ON table1.column = table2.column;
    ```

    Example:

    ```sql
    SELECT orders.order_id, customers.name
    FROM orders
    INNER JOIN customers ON orders.customer_id = customers.customer_id;
    ```

These are some of the basic SQL operations used for querying, modifying, and managing data in a relational database.
