SELECT min(temp_hi)
FROM weather;
SELECT max(temp_lo)
FROM weather;

-- If we wanted to know what city (or cities) that reading occurred in
SELECT city
FROM weather
WHERE temp_lo = (SELECT max(temp_lo) FROM weather);

SELECT city, count(*), max(temp_lo)
FROM weather
WHERE city like 'T%'
GROUP BY city;

SELECT city, count(*) FILTER (WHERE temp_lo < 45), max(temp_lo)
    FROM weather
    GROUP BY city;