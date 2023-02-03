/*
CREATE TABLE and INSERT VALUES queries for testing purposes.
The answer query for the task 2C is in SQL_Query.sql file.
*/

CREATE TABLE people (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE phones (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    number TEXT
);

INSERT INTO people 
VALUES 
(1, 'John', 'Smith'),
(2, 'Mary', 'Jones'),
(3, 'Gerhard', 'Feuerhaufen'),
(4, 'Rami', 'Pitkäniemi'),
(5, 'Anna', 'Kråkström');

INSERT INTO phones 
VALUES 
(1, 2, '+1 213 621 0002'),
(2, 2, '+1 800 444 4444'),
(3, 1, '+1 604 444 4444'),
(4, 1, '+44 20 8759 9036'),
(5, 4, '+358 50 333 3333'),
(6, 5, '+46 771 793 336');
