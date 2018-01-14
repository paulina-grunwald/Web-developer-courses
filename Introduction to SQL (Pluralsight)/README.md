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


## The AND  keyword

- Combines expressions,
- If both values are TRUE, row is included
- If either is FALSE, row is excluded.

```sql
SELECT p.first_name, p.last_name
FROM person
WHERE p.first_name = 'Jon'
AND p.birthdate > '12/01/1980';
```

## The OR keyword
- Combines two expressions,
- If either are TRUE, row is included,
- If both are FALSE, row is excluded.

```sql
SELECT p.first_name, p.last_name
FROM person
WHERE p.first_name = 'Jon'
OR p.person_contacted_number > 5;
```

## BETWEEN operator
- Acts on column and two values,

__Q__: Who are all the people in my contact list that I have contacted at least once but no more than 20 times?

```sql
SELECT p.firstname, p.last_name
FROM person p
WHERE p.contacted
BETWEEN 1 AND 20;
```

## LIKE operator
- A more fuzzy version of =.
- String with special character inside/

__Q__: Who are the people in my contact list that have a first ame that begins with letter J?

```sql
SELECT p.firstname, p.last_name
FROM person p
WHERE p.firstname
LIKE 'J%';
```
If you want to find name that contains 'o'you need to use LIKE '%o%'.

## IN operator
__Q__: Who are all people in my contact list that are named Jon or Fritz?

```sql
SELECT p.firstname, p.last_name
FROM person p
WHERE p.firstname
IN ('Jon', 'Fritz');
```

## IS
- Special operator,
- Like a equals operator,
- But just for values that might be NULL.

```sql
SELECT p.firstname, p.last_name
FROM person p
WHERE p.last_name
IS NULL;
```
Database will look for the last_name that are null.

## IS NOT operator
The same as is but looks for expressions that are not null.

## IS AND IS encountered

# Shaping Result with ORDER BY and GROUP BY

## ORDER BY
- Allows sorting of result set,
- After the WHERE clause (if there is one),
- Specify one or more columns,
- Separate columns by column,
- ASC (default) and DESC for ordering of the values.

```SQl
SELECT p.person_first_name, p.person_last_name
FROM person p
ORDER BY p.person_last_name;
```

## SET Function
- Compute new values from column values,
- Use in place of columns in SELECT clause,
- Passes column name to function,
- Helps us to ask more interesting questions.

COUNT - count of the column specified (includes NULL if * is used)

MAX - maximum value of column (does not include NULL values)

MIN - minimum value of column (does not include NULL values)

AVG - average of all value of  the column (does not include NULL values, only numeric column)

SUM - average of all value of  the column (does not include NULL values)

```SQl
SELECT COUNT (p.person_first_name)
FROM person p
WHERE p.person_last_name = 'Ahern';
```

```SQl
SELECT MAX(p.person_contacted_number)
FROM person p;
```

## Set Function And Qualifiers
- Often used together,
- Add inside of the function,
- Run against DISTINCT column values.

__Q__: What is the count of unique first names among my contacts?

```SQL
SELECT COUNT (DISTINCT p.person_first_name)
FROM person p;

```

## GROUP BY
- Allows multiple columns with a set function,
- Breaks results set into subsets,
- Runs set functions against each subset,
- Result set returns 1 row per subset,
- Subset is dictated by column in Group BY,
- Column must appear in the SELECT LIST.

__Q__: What is the count of every unique first name among my contacts?
`
```SQl
SELECT
COUNT( p.person_first_name),
p.person_first_name
FROM person p
GROUP by p.first_name;
```

## HAVING
- Works like WHERE works against Select
__Q__: What is the count of unique first names among my contacts that appear at least 5 times?


```SQl
SELECT
COUNT( p.person_first_name),
p.person_first_name
FROM person p
GROUP by p.first_name;
HAVING COUNT(DISTINCT p.first_name) >= 5
```

# Matching Different Data Tables with JOINs

# Adding, Changing, and Removing Data

# Creating Database Tables


The INNER JOIN keyword selects records that have matching values in both tables

# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp
