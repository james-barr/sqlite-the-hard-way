SELECT * FROM pet;

UPDATE pet SET name = "Zed's Dead Pet" WHERE pet.id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    person.first_name = "Zed" AND
    pet.dead = 1
);


SELECT * FROM pet;
