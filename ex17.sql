/* every1 who is older than 10 */
select person.id, first_name, last_name, dob, count(pet.id)
from person, pet, person_pet
where
  dob < date('now', '-10 years') and
  person_pet.person_id = person.id and
  person_pet.pet_id = pet.id
group by person.id;

/* everyone born before 1970 */
select person.id, first_name, last_name, person.age, person.dob, count(pet.id)
from person, pet, person_pet
where
  dob < date('1970-01-01') and
  person_pet.person_id = person.id and
  person_pet.pet_id = pet.id
group by person.id
having count(pet.id) < 2;

/* all pets purchased within 5 years */
select person_id, pet_id, purchased_on, count(person.id)
from person_pet, pet, person
where
  purchased_on > date('now', '-5 years') and
  person_pet.person_id = person.id and
  person_pet.pet_id = pet.id
group by pet.id
order by purchased_on desc;

/* all pets purchased between 1990 and 2000 */
select person_id, pet_id, purchased_on, count(person.first_name)
from person_pet, person, pet
where purchased_on > date('1990-01-01')
  and purchased_on < date('2000-01-01')
  and person_pet.person_id = person.id
  and person_pet.pet_id = pet.id
group by person_id
order by purchased_on;


/* link the pets from the last query */
select pet.name, pet.breed, pet.age, pet.dead, person_pet.purchased_on
from pet, person_pet
where
  purchased_on > date('1990-01-01') and
  purchased_on < date('2000-01-01') and
  person_pet.pet_id = pet.id
order by purchased_on, pet.age;

/* select pets, group by age, count how many pets we have in each age group */
select pet.age, count(pet.name)
from pet
where
  pet.age < 19
group by pet.age
order by pet.age desc
;


select strftime('%Y', dob) as dobYear, count(person.id)
from person
where dobYear < '2010'
group by dobYear
order by dob desc
;
