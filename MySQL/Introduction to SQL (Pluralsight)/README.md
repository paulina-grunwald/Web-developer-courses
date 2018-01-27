# Key learning points from Pluralsight [Introduction to SQL](https://app.pluralsight.com/library/courses/introduction-to-sql/table-of-contents)

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
FROM person                 /* FROM CLAUSE */
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

__COUNT__ - count of the column specified (includes NULL if * is used)

__MAX__ - maximum value of column (does not include NULL values)

__MIN__ - minimum value of column (does not include NULL values)

__AVG__ - average of all value of  the column (does not include NULL values, only numeric column)

__SUM__ - average of all value of  the column (does not include NULL values, only numeric column)

__Q:__ What is the total number of times I've contacted my contacts?

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

__Q:__ What is the count of every unique first name among my contacts?

```SQl
SELECT
COUNT( p.person_first_name),
p.first_name
FROM person p
GROUP by p.first_name;
```

## HAVING
- Works like WHERE works against Select
__Q:__ What is the count of unique first names among my contacts that appear at least 5 times?


```SQl
SELECT
COUNT( p.person_first_name as FirstNameCount),
p.person_first_name
FROM person p
GROUP by p.first_name;
HAVING FirstNameCount > 1;
```


__Q__:  Who are the people in my contact list that have the first name JOn and have a birthday later than 1965?

```SQl
SELECT p.person_first_name, p.person_last_name
FROM person p
WHERE p.first_name = 'Jon'
AND p.birthday > '12/31/1965';
```

__Q:__ Who are all the people in my contact list that have the first name Jon or a last name of Flanders?

```SQl
SELECT p.person_first_name, p.person_last_name
FROM person p
WHERE p._first_name = 'JON'
OR p._last_name = "Flanders";
```


# Matching Different Data Tables with JOINs

## The JOIN Clause
- Merges multiple tables into one result set.
- FROM clause includes all tables.
- Separates each table with a comma.
- WHERE clause typically included.
- Expressions with columns from each table.
- There are different types of join.

INNER JOIN:
- Most typical JOIN.
- Matches column in first table to second.
- Primary key to Foreign key is most common.
- Doesn't deal with NULL values.

__Q:__ What are all the first names and e-mail addresses I have?

INNER JOIN:
- Most typical JOIN.
- Emphasizes relational nature of database.
- Matches column in first table to second (we will use frimary key in first table and foreign key in other table).

```SQl
SELECT
p.first_name, p.last_name
e.email_address
FROM person p
INNER JOIN
email_address e
ON /* on clause specifiecs which two columns we want to relate*/
p.person_id = e.email_address_person_id;
/* primary key = foregin key */
```


OTHER JOIN:
- Deal with NULL VALUES. If there is no data matching in one or both of the tables OUTER JOIN will work (it will not work in INNER JOIN )
-  FULL OUTER JOIN will return all joined rows and NULL values whre no match in either table.

__Q:__ What are my contacts and their e-mail addresses, including those i don't have e-mail for?

```SQL
SELECT
p.first_name, p.last_name
FROM person p
LEFT OUTER JOIN /*takes into the account NULL values*/
email_address e
ON p.person_id =
e.email_address_person_id;
```

__!__ If there is no value in email_address all columns will be returned )this would not be a case when using INNER JOIN).

RIGH OUTER JOIN is opposite to LEFT OUTER JOIN.  It returns all values formt he right side and null values from the left side of the table.

FULL OUTER JOIN => we have to UNION two queries (LEFT and RIGHT OUTHER JOIN)

SELF JOIN
- You can join a table on itself.
- No special syntax.
- Same table on left and right side of JOIN.
- Useful when table contains hierarchical data.



# Adding, Changing, and Removing Data

__CRUD__ - Create, Read ,Update and Delete

## INSERT INTO
- We can use INSERT INTO command to insert data in the table.
- We can insert only data into one table at the time.

```SQL
INSERT INTO
person (person_id,
first_name,
last_name,
contacted_number,
date_last_contacted,
date_added)
VALUES
(1, 'Jon', 'Flanders', 0, NULL, '2016-05-12 11:21:45');
```

## BULK INSERT
- Allows inserting into one table and one column but we can insert multiple tows.
- Useful when we want to create join table.


```SQL
INSERT INTO
person p
SELECT * FROM old_peson op
WHERE  op.person_id > 380;
```


## UPDATE
- Modifies column(s) in a single table

```SQL
UPDATE
email_address. e
SET
e.email_address = 'aaron@mail.com'
where
e.email_address_id = 5;
```


## DELETE FROM
- Deletes one or more rows in a table.
- Use WHERE! It's a good practice!

```SQL
DELETE FROM person
WHERE
p.id = 5;
```


# Creating Database Tables
DDL - Data Definition Language

## Create database
```SQL
CREATE DATABASE Contacts; /*Create database*/

USE DATABASE Contact;  /* Once it's executed all the other queries*/
SELECT * FROM person p; /* will be scoped to Contacts database */

/*or write a query that will connect to chosen database*/
SELECT * FROM
Contact.person p
```

## Create Table
Using create table command we need to list all columns name and type.

```SQl
CREATE TABLE
email_address
(email_address_id INTEGER, email_address_person_id INTEGER,
 email_address VARCHAR(55)); /*restrict number of char. to 55*/
```
## NULL Values
We can choose to be able to accept NULL values into our database. If the column is requires it should not have null values. NOT NULL has to be specified.

```SQl
CREATE TABLE
email_address
(email_address_id INTEGER NOT NULL ,
 email_address_person_id INTEGER,
 email_address VARCHAR(55) NOT NULL); /*restrict number of char. to 55*/
```

## Primary Key
- Primary Key column must have unique value per row.
- Can not be NULL.

```SQl
CREATE TABLE
email_address
(email_address_id INTEGER PRIMARY KEY ,
 email_address_person_id INTEGER,
 email_address VARCHAR(55) NOT NULL); /*restrict number of char. to 55*/
```

## Constraint Key
- Way to add keys in one grouping,
- Primary or forgein keys

## Alter Table
- Used to change an exiting table.
- Add/remove column.
- Change column data type, constrains.

## Drop table
- Removes table and all data from the database.

```SQL
DROP TABLE person;
```

# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp
