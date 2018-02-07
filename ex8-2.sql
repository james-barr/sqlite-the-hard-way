SELECT * FROM pet;

DELETE FROM pet WHERE pet.id IN (
  SELECT pet.id
  FROM pet, person_pet, person
  WHERE
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    person.first_name = "James"
);

SELECT * FROM pet;

SELECT first_name FROM person;

DELETE FROM person WHERE person.id IN (
  SELECT person.id
  FROM pet, person_pet, person
  WHERE
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    pet.dead = 1
);

SELECT first_name FROM person
