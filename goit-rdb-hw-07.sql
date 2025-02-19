-- goit-rdb-hw-07

-- p1.png
SELECT id, date, 
    YEAR(date) AS year, 
    MONTH(date) AS month, 
    DAY(date) AS day
FROM orders;

-- p2.png
SELECT id, date, 
    DATE_ADD(date, INTERVAL 1 DAY) AS datetime_plus
FROM orders;

-- p3.png
SELECT id, date, 
    UNIX_TIMESTAMP(date) AS timestamp_date
FROM orders;

-- p4.png
SELECT COUNT(*) AS count_rows
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- p5.png
SELECT id, date, 
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM orders;

---------------------------
-- Thanks for attention!
---------------------------
