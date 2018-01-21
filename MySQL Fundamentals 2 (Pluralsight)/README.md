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

If the name of the column is long we can __alias__ it.

```SQL
SELECT replacement cost-rental_rate AS CostDiff,
  film_id As FilmId,
  lenght/60 AS TimeinHour
FROM sakila.film;

```

It's also possible to make aritmetical operations on the column which in the end will give us new insight of the data.

### Select statement and other functions
Important functions:
ROUND()
CEILING()
FLOOR()
CONTACT(first_name, ' ', last_name)
REVERSE()
DATE_FORMAT()
GET_FORMAT()

e.g

```SQL
SELECT amount,
       ROUND(amount) Amnt, ROUND(amount, 1) Amnt1
       FLOOR(amount) FloorAmnt, CEILING(amount) CeilingAmnt
FROM sakila.payment;
```

Left function in combination with contact helps us to retrieve selected number of letters from a string.

```SQL
SELECT CONCAT(first_name, ' ', last_name) AS FullName
       CONCAT(LEFT(first_name,1), LEFT(last_name. 1)) AS FirstInitial
FROM sakila.actor;
```

### Introducing WHERE clause


```SQL
SELECT actor_id, first_name, _last_name
FROM sakila.actor
WHERE actor_id = 100;
```

```SQL
SELECT actor_id, first_name, _last_name
FROM sakila.actor
WHERE first_name == 'Nick';
```


### Select statement and Logical Operators

WHERE clause logical Operators:


  | Operator       | Description                        |
  | :------------- | :--------------------------------- |
  | AND            | True if all conditions are True    |
  | OR             | True if any one condition is True  |
  | NOT            | Negate Logic                       |


  ```SQL
  SELECT actor_id, first_name, _last_name
  FROM sakila.actor
  WHERE first_name == 'Nick' OR first_name == 'Bob';
  ```

### Select statement and WHERE clause
WHERE clause other operators:
- IN (and NOT IN)
- BETWEEN (and NOT BETWEEN)
- LIKE (and NOT LIKE)
  - Wildcard - %
  - Wildcard- _
- NULL Clause (IS NULL and IS NOT NULL)

```SQL
SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK', 'JONNY', 'JOE');
```

Use of subquery:

```SQL
SELECT *
FROM sakila.actor
WHERE first_name IN ('NICK')
      OR actor_id IN
                  (SELECT actor_id)
                  FROM sakila.actor
                  WHERE last_name = "DEGENERES");
```

### Using Like in WHERE clause
LIKE operator works with Patterns

Find all the actors whos name starts with A:

```SQL
SELECt *
FROM sakila.actors
WHERE first_name LIKE '%A';
```
Find all the actors who's name starts with AL:

```SQL
SELECt *
FROM sakila.actors
WHERE first_name LIKE '%AL';
```

Find all the actor's whos name starts with A and fourth letter is L:

```SQL
SELECt *
FROM sakila.actors
WHERE first_name LIKE 'A__L';
```

Find the actor's name which starts with A and has E at the end:

```SQL
SELECt *
FROM sakila.actors
WHERE first_name LIKE 'A__E%';
```

Find the actors names which start with A and also include E:

```SQL
SELECt *
FROM sakila.actors
WHERE first_name LIKE 'A%E';
```

Find NULL values:

```SQL
SELECt *
FROM sakila.addresses
WHERE address2  IS NULL;
```

###  ORDER BY clause


```SQL
SELECT *
FROM sakila.addresess
ORDER BY distinct;
```

```SQL
SELECT
FROM sakila.address
ORDER BY distinct DESC;
```

# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp
