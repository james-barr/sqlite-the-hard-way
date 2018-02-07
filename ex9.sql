UPDATE person SET first_name = "Funny Guy"
  WHERE first_name = "Zed";

UPDATE pet SET name = "Fancy Pants"
  WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE person SET first_name = "Zed"
  WHERE first_name = "Funny Guy";

UPDATE pet SET name = "Uni-the Unicorn"
  WHERE id=0;

SELECT * FROM person;
SELECT * FROM pet;

UPDATE pet SET name = "DECEASED"
  WHERE dead = 1;

SELECT * FROM pet;
