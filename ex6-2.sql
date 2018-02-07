SELECT pet.id, pet.name, pet.breed, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.first_name = "James";



SELECT pet.id, pet.name, pet.breed, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
  pet.id = person_pet.pet_id AND
  person.id = person_pet.person_id AND
  person.id = 1;
