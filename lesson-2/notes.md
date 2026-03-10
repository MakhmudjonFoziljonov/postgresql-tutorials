# Lesson 2

This lesson covers basic data retrieval in PostgreSQL using the `SELECT` statement.

## Topics covered

- selecting all columns with `SELECT *`
- selecting specific columns
- using table aliases with `AS`
- creating calculated columns
- filtering rows with `WHERE`
- combining conditions with `AND`
- sorting results with `ORDER BY`
- sorting in descending order with `DESC`
- sorting by multiple columns
- removing duplicate values with `DISTINCT`

## keynotes

### 1. Selecting data
`SELECT *` returns all columns from a table.

Example:
- `SELECT * FROM weather;`

This is useful for quick testing, but it is generally not recommended in production code because changes to the table structure can affect the query results.

### 2. Selecting specific columns
You can select only the columns you need.

Example:
- `SELECT city, temp_hi, prcp, date FROM weather;`

This makes queries clearer and more efficient.

### 3. Using aliases
Aliases make queries shorter and easier to read.

Example:
- `SELECT wt.city, wt.temp_lo, wt.temp_hi, wt.prcp, wt.date FROM weather AS wt;`

Here, `wt` is an alias for the `weather` table.

### 4. Calculated columns
You can create values from expressions inside a query.

Example:
- `SELECT city, (temp_lo + temp_hi) / 2 AS temp_avg, date FROM weather;`

This creates a calculated column named `temp_avg`.

### 5. Filtering data with WHERE
`WHERE` is used to return only rows that match a condition.

Example:
- `SELECT * FROM weather WHERE city = 'Tashkent' AND prcp > 0.00;`

This returns only rows where the city is Tashkent and precipitation is greater than 0.

### 6. Sorting results
`ORDER BY` is used to sort query results.

Examples:
- `ORDER BY city`
- `ORDER BY city DESC`
- `ORDER BY city, temp_lo`

You can sort in ascending order by default, descending order with `DESC`, or sort by multiple columns.

### 7. Removing duplicates
`DISTINCT` removes duplicate values from the result.

Example:
- `SELECT DISTINCT city FROM weather ORDER BY city;`

This returns each city only once.

## Summary

In this lesson, I practiced how to retrieve, filter, sort, and organize data from a table using basic PostgreSQL `SELECT` queries.