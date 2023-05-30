DELETE
FROM workers
WHERE id = 4;

DELETE
FROM workers
WHERE first_name = 'Petya';

DELETE
FROM workers
WHERE extract(years from age(birthday)) > 40;