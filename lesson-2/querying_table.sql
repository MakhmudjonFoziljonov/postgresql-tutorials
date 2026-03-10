SELECT *
FROM weather; -- Here * is a shorthand for “all columns”.

SELECT city, temp_hi, prcp, date
FROM weather;

SELECT wt.city, wt.temp_lo, wt.temp_hi, wt.prcp, wt.date
FROM weather as wt; -- as -> alias

SELECT city, (temp_lo + temp_hi) / 2 temp_avg, date
FROM weather; -- Notice how the AS clause is used to relabel the output column. (The AS clause is optional.)


SELECT *
FROM weather
WHERE city = 'Tashkent'
  AND prcp > 0.00;

SELECT *
FROM weather
ORDER BY city;
-- You can request that the results of a query be returned in sorted order

SELECT *
FROM weather
ORDER BY city desc;

SELECT * FROM weather
    ORDER BY city, temp_lo;


SELECT DISTINCT city
    FROM weather
    ORDER BY city;     -- You can request that duplicate rows be removed from the result of a query

-- While SELECT * is useful for off-the-cuff queries,
-- it is widely considered bad style in production code,
-- since adding a column to the table would change the results.