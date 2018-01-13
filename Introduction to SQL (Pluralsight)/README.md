# Key learning points from Udacity [Introduction to SQL](https://app.pluralsight.com/library/courses/introduction-to-sql/table-of-contents)

>Witten by Paulina Grunwald

#### Content table:

1. Understanding Syntax
2. Querying Data with the SELECT Statement



## Understanding Syntax
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


# REFERENCES
- http://files.zeroturnaround.com/pdf/zt_sql_cheat_sheet.pdf
