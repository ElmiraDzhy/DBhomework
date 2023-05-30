CREATE TABLE workers (
    id serial PRIMARY KEY ,
    first_name varchar(250) NOT NULL CHECK ( first_name != '' ),
    last_name varchar(250) NOT NULL CHECK ( last_name != '' ),
    salary numeric NOT NULL CHECK ( salary > 0 ),
    birthday date NOT NULL,
    CONSTRAINT "invalid_birthday" CHECK ( extract(year from birthday ) > 1900 AND birthday < CURRENT_TIMESTAMP)
);