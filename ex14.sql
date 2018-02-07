
ALTER TABLE person
ADD COLUMN dead INTEGER;

ALTER TABLE person
ADD COLUMN phone_number TEXT;

ALTER TABLE person
ADD COLUMN salary FLOAT;

ALTER TABLE person
ADD COLUMN dob DATETIME;

ALTER TABLE pet
ADD COLUMN dob DATETIME;

ALTER TABLE person_pet
ADD COLUMN purchased_on DATETIME;

ALTER TABLE pet
ADD COLUMN parent INTEGER;

UPDATE person
SET dead = 0;

UPDATE person
SET phone_number = "303-565-0000"
WHERE person.id = 0;


UPDATE person
SET phone_number = "720-565-0000"
WHERE person.id = 1;

UPDATE person
SET salary = 50000
WHERE person.id = 0;

UPDATE person
SET salary = 0
WHERE person.id = 1;

UPDATE person
SET dob = '1988-07-11 10:00:00'
WHERE person.id = 1;

UPDATE person
SET dob = '1978-06-11 10:00:00'
WHERE person.id = 0;

UPDATE pet
SET dob = '2017-06-11 10:00:00'
WHERE pet.id = 1;

UPDATE pet
SET dob = '1918-06-11 10:00:00'
WHERE pet.id = 0;

UPDATE pet
SET dob = "2013-10-13 01:00:00"
WHERE pet.id = 2;

UPDATE pet
SET parent = 0
WHERE pet.id IN (
  SELECT pet.id
  FROM person, pet, person_pet
  WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person_pet.person_id = 0
);

UPDATE pet
SET parent = 1
WHERE pet.id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
    person.id = person_pet.person_id AND
    pet.id = person_pet.pet_id AND
    person.first_name = "James"
);

INSERT INTO person ( first_name, last_name, age, dead, phone_number, salary, dob, height, weight )
VALUES ( "Jane", "Crow", 22, 0, "333-221-5553", 89000, "2001-12-01 12:01:25", 55, 101),
("Alex", "Sanchez", 88, 1, "888-222-1111", 0, "1925-05-01 10:01:01", 59, 190),
( "John", "Doe", 24, 0, "555-000-4444", 45000, "2000-12-01 00:01:00", 66, 188);

UPDATE person_pet
SET purchased_on = "2014-01-05 10:00:00"
WHERE person_pet.pet_id = 0;

UPDATE person_pet
SET purchased_on = "2013-16-05 09:00:00"
WHERE person_pet.pet_id = 1;

UPDATE person_pet
SET purchased_on = "2014-12-11 08:00:00"
WHERE person_pet.pet_id = 2;


UPDATE person
SET
  height = 70,
  weight = 150
WHERE
  person.id = 0;

UPDATE personxs
SET
  height = 78,
  weight = 180
WHERE
  person.first_name = "James";


SELECT * FROM person;
SELECT * FROM pet;
SELECT * FROM person_pet;


SELECT pet.name, person.first_name
FROM pet, person, person_pet
WHERE
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id;

SELECT pet.name, person.first_name
FROM pet, person, person_pet
WHERE
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  pet.parent = person.id;
