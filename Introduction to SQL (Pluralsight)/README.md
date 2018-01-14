# Key learning points from Udacity [Introduction to SQL](https://app.pluralsight.com/library/courses/introduction-to-sql/table-of-contents)

>Witten by Paulina Grunwald


### Content table:

1. Understanding Syntax
2. Querying Data with the SELECT Statement
3. Filtering Results with the WHERE Clause
4. Matching Different Data Tables with JOINs


## Querying Data with the SELECT Statement

__SELECT__ command helps to retrieve one or more rows from one or mor tables.Select table from the database:

```SQL
SELECT first_name FROM person;
```
__INSERT__ add one or more rows to the table:

```SQL
INSERT INTO database_name(col_1, col_2) VALUES (val_1, val_2);
```

__UPDATE__ modifies one or more rows in a table.

```SQL
UPDATE contacts SET last_name = "Dow" WHERE id = 1;
```

__DELETE__ delete one or more rows from one table.

```sql
DELETE FROM contacts WHERE id=2;
```

#  Querying Data with the SELECT Statement

We can query data using the select statement. This is the tipical syntax:

SELECT <COLUMN_NAME>, <COLUMN_NAME> FROM <TABLE_NAME> ;

__*__ - wildcard "SELECT list" character pulls all the columns from a

It's a good practice to always table quality names of your columns. Some databases will run faster in this way.
```sql
SELECT person.first_name, person.last_name FROM person
```


It's possible to alias the database name. For example instead of typing full database name e.g person we can alias it to p.

```sql
SELECT p.first_name, p.last_name FROM person
```

What are __unique__ first names of the people in the database?
```sql
SELECT DISTINCT p.first_name, p.last_name FROM person
```

## Filtering Results with the WHERE Clause

Functionalities of __WHERE__:
- contains the results set,
- comes after the FROM clause,
- contains boolean expressions.

```sql
SELECT p.last_name          /* SELECT CLAUSE */
FROM person -               /* FROM CLAUSE */
WHERE p.first_name = 'Jon'; /* WHERE CLAUSE */
```




The INNER JOIN keyword selects records that have matching values in both tables

# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp
