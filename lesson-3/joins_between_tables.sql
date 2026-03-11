INSERT INTO cities
VALUES ('Tashkent',
        '(123.0, 343.0)');

SELECT *
FROM weather,
     cities
WHERE city = name; -- old version

SELECT *
FROM weather
         JOIN cities ON city = name;

SELECT wt.city, wt.temp_lo, wt.temp_hi, wt.prcp, wt.date
FROM weather wt
         JOIN cities ct ON wt.city = ct.name;

SELECT *
FROM weather
         LEFT OUTER JOIN cities ON city = name;
--This query is called a left outer join
-- because the table mentioned on the left of the join operator will have each of its rows in the output at least once,
-- whereas the table on the right will only have those rows output that match some row of the left table

SELECT *
FROM weather
WHERE prcp > 0.00
  AND city = 'Tashkent';


SELECT DISTINCT city
FROM weather
ORDER BY city;

SELECT city, temp_lo, temp_hi, (temp_hi + temp_lo) / 2 temp_avg
FROM weather;

SELECT weather.city, weather.temp_hi, weather.date
FROM weather
ORDER BY city desc, date