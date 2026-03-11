# Lesson 3

This lesson covers joining related tables in PostgreSQL using different types of `JOIN`.

## Topics covered

- inserting data into a table with `INSERT`
- combining tables with legacy join syntax
- using `INNER JOIN`
- joining tables with `ON`
- selecting columns from joined tables
- using table aliases in joins
- using `LEFT OUTER JOIN`
- understanding matched and unmatched rows

## keynotes

### 1. Inserting data
`INSERT INTO` is used to add new rows to a table.

Example:
- `INSERT INTO cities VALUES ('Tashkent', '(123.0, 343.0)');`

This inserts a new city into the `cities` table with its location value.

### 2. Legacy join syntax
PostgreSQL also supports the older style of joining tables by listing them in the `FROM` clause and adding the match condition in `WHERE`.

Example:
- `SELECT * FROM weather, cities WHERE city = name;`

This returns rows where the `city` column from `weather` matches the `name` column from `cities`.

### 3. Using INNER JOIN
`JOIN` is the modern and clearer way to combine rows from related tables.

Example:
- `SELECT * FROM weather JOIN cities ON city = name;`

This query returns only rows where there is a match between the two tables.

### 4. Joining with specific columns
Instead of selecting all columns, you can return only the columns you need from the joined result.

Example:
- `SELECT wt.city, wt.temp_lo, wt.temp_hi, wt.prcp, wt.date FROM weather wt JOIN cities ct ON wt.city = ct.name;`

This makes the query easier to read and avoids unnecessary columns in the output.

### 5. Using table aliases in joins
Aliases help shorten table names and improve query readability.

Example:
- `FROM weather wt JOIN cities ct ON wt.city = ct.name`

Here, `wt` is an alias for `weather`, and `ct` is an alias for `cities`.

### 6. Using LEFT OUTER JOIN
`LEFT OUTER JOIN` returns all rows from the left table, even if there is no matching row in the right table.

Example:
- `SELECT * FROM weather LEFT OUTER JOIN cities ON city = name;`

This means every row from `weather` will appear in the result. If no matching city is found in `cities`, the columns from `cities` will contain `NULL`.

### 7. Understanding join results
Different join types produce different results:

- `INNER JOIN` returns only matching rows
- `LEFT OUTER JOIN` returns all rows from the left table and matching rows from the right table
- unmatched rows from the right table are not included unless they match the join condition

## Summary

In this lesson, I practiced how to combine related tables in PostgreSQL using join operations. I learned the difference between old-style joins and modern `JOIN` syntax, how to use aliases, and how `LEFT OUTER JOIN` keeps unmatched rows from the left table in the result.