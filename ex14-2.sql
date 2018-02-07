BEGIN TRANSACTION;

SELECT *
FROM person
WHERE first_name = "James";

UPDATE person
SET
  height = 199
WHERE
  first_name = "James";

SELECT *
FROM person
WHERE first_name = "James";

INSERT INTO person (
  first_name,
  last_name,
  age,
  weight,
  height
)
VALUES(
  "Mary",
  "Little",
  99,
  100,
  50
);

SELECT *
FROM person
WHERE first_name = "Mary";


COMMIT TRANSACTION;
