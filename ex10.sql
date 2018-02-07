SELECT * FROM pet;

UPDATE pet SET name = "Zed's PET" WHERE id IN (
  SELECT pet.id
  FROM pet, person, person_pet
  WHERE
    pet.id = person_pet.pet_id AND
    person.id = person_pet.person_id AND
    person.first_name = "Zed"
);

SELECT * FROM pet;
