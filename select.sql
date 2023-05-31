SELECT *
FROM workers
WHERE id = 3;

SELECT *
FROM workers
WHERE salary > 400;

SELECT salary, extract(years from age(birthday))
FROM workers
WHERE first_name = 'Jenya';

SELECT *
FROM workers
WHERE first_name = 'Petya';

SELECT *
FROM workers
WHERE extract(years from age(birthday)) >= 27
  AND salary < 1000;

SELECT *
FROM workers
WHERE extract(years from age(birthday)) BETWEEN 25 AND 30;


SELECT *
FROM workers
WHERE salary > 300
  OR length(first_name) < 6;

