SELECT * FROM person_pet;

DELETE FROM person_pet WHERE person_pet.pet_id IN (
  SELECT person_pet.pet_id
  FROM person_pet, pet
  WHERE
    person_pet.pet_id = pet.id AND
    pet.dead = 1
);

SELECT * FROM person_pet;
