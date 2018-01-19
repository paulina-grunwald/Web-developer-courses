# Key learning points from Pluralsight [MySQL Fundamentals by Pinal Dave](https://app.pluralsight.com/library/courses/mysql-fundamentals-part1/table-of-contents)

>Witten by Paulina Grunwald


### Content table:

1. Introduction
2. Installations and GUI Tools
3. Fundamentals of RDBMS and Database Designs
4. Introduction MYSQL Workbench
5. Data Retrieval Techniques
6. Data Modification Techniques
7. Summary and Resources


# 5. Data Retrieval Techniques
```
SELECT Column_List
FROM Table_Name
WHERE Filter_condition
ORDER BY Column_List
LIMIT Row_limit
```
### Basic Syntax of the SELECT statement

Besides running queries on our database we can also perform mathematical operations or ask for the current date or e.g value of PI
```SQL
SELECT 2+2
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT PI();
SELECT MOD(45,7);
SELECT SQRT(25);
```

### Execute all rows and columns from database sakila and table actor:

```SQL
SELECT * FROM sakila.actor;
/*or*/
USE sakila;
SELECT * FROM actor;
```

### Order data based on a column
```SQL
SELECT *
FROM sakila.actor
ORDER BY first_name DESC;
```

### Retrieve selected columns from table
```SQL
SELECT first_name, last_name
FROM sakila.actor
ORDER BY first_name ASC;
```

### Retrieve selected columns and rows

```SQL
SELECT first_name, last_name
FROM sakila.actor
WHERE actor_id > 100 /*condition*/
ORDER BY first_name, last_name DESC; /*first name will be ordered asc and last_name desc*/
```

### Working with Arithmetic Expressions
- Retrieve column names using aliases,
- Retrieve values based on arithmetic expressions
  - multiplication ( * )
  - divistion (/)
  - integer division (DIV)
  - modulo (% or MOD)
  - addition (+)
  - substraction (-)



# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp
