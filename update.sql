UPDATE workers
SET salary = 500
WHERE first_name = 'Oleg';

UPDATE workers
SET birthday = '1987-09-09'
WHERE id = 4;

UPDATE workers
SET salary = 700
WHERE salary > 500;

UPDATE workers
SET birthday = '1999-09-09'
WHERE id BETWEEN 2 AND 5;

UPDATE workers
SET first_name = 'Jenya',
    salary     = 900
WHERE first_name = 'Sasha';