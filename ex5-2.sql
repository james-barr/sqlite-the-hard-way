SELECT * FROM pet WHERE age > 10;

SELECT * FROM person WHERE age > (
  SELECT age FROM person WHERE first_name = "James"
);

SELECT first_name FROM person WHERE age > 25 AND age < 30;

SELECT name FROM pet WHERE dead = 0 AND age < 1000 OR name LIKE 'A%'
