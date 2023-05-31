/*

1. Вивести всі дані робітників + колонку з кількості літер у повному імені
2. Вивести робітників по троє
3. Вивести робітника, в якого місяць народження - лютий, або кількість років > 30
4. Вивести робітника, в якого в наступному місяці буде день народження

*/

SELECT *, character_length(concat(first_name, last_name)) AS "Fullname"
FROM workers;

SELECT *
FROM workers
LIMIT 3 OFFSET 0;

SELECT *
FROM workers
WHERE extract(month from birthday) = 2
   OR extract(years from age(birthday)) > 30;

INSERT INTO workers (first_name, last_name, salary, birthday) VALUES ('test', 'testovich', 2000, '1990-06-06');

SELECT *
FROM workers
WHERE extract(month from birthday) - extract(month from current_timestamp) = 1;
