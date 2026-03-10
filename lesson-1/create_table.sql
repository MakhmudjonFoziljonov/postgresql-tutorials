CREATE TABLE weather(
    city        varchar(50) ,
    temp_lo     int,        -- low temperature
    temp_hi     int,        -- high temperature
    prcp        real,       -- precipitation
    date        date
);

CREATE TABLE cities (
    name            varchar(80),
    location        point   -- The 'point' type is an example of a PostgreSQL-specific data type.
);

DROP TABLE  cities;