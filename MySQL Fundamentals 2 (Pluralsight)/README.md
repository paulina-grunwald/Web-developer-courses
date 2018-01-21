# Key learning points from Pluralsight [MySQL Fundamentals 2 by Pinal Dave](https://app.pluralsight.com/library/courses/mysql-fundamentals-part2/table-of-contents)

>Witten by Paulina Grunwald


### Content table:

1. Joins, Unions and Subqueries
2. MySQL Functions
3. MySQL Views
4. Stored Procedures and Stored Functionsh
5. Triggers and Events
6. Summary and Resources

# 1. Joins, Unions and Subqueries

## 1.1 Begining Joins

A SQL ```JOIN``` combines columns from tqo or more tables in a single result. There are 3 types of JOINS:
- Inner Join
- Outer Join
  - Left Outer Join
  - Right Outer Join
  - Full Outer Join
- Cross Join

- Self Join
- Equi Join
- Natural Join
- Straight Join

### 1.11 Inner JOIN
- Inner join returns rows when there is at least one match in both pf the tables.
- Avoid ambiguity by qualifying each column name with table name.
- Join table based on relationship as well ad-hoc.

There are two types of Inner Join syntaxes: Implicit and Explicit.

Example of Implicit Syntax:
```SQL
SELECT t1.*, t2*
FROM Table1 t1, Table2 t2
WHERE t1.ID = t2.ID
```

Example of Explicit Syntax (SQL-92):
```SQL
SELECT t1.*, t2.* /*select all the tables from t1 and t2*/
FROM Table t1 /*from clause*/
INNER JOIN Table2 t2 ON t1.ID = t2.ID
```

### 1.12 Outer Join
- LEFT OUTER join returns all the rows from the left table with the matching rows from the right table.
- If there are no columns matching the right table, it returns NULL values.

<img src="http://stevestedman.com/wp-content/uploads/LeftOuterJoinVenn.png" width="40%" height="40%">

# 2. MySQL Functions
# 3. MySQL Views
# 4. Stored Procedures and Stored Functions
# 5. Triggers and Events
# 6. Summary and Resources


# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
- https://www.w3schools.com/sql/sql_join_inner.asp

# IMAGES:
- http://stevestedman.com/wp-content/uploads/LeftOuterJoinVenn.png
