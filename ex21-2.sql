/* select all pets who are older than 10, count by alive / dead */
select breed, age, dead, count(id)
from pet
where age > 10
group by age;

select *
from pet
where breed = "Unicorn"
  and age > 10;

create view old_pets as
  select breed, age, dead, count(id)
  from pet
  where age > 10
  group by age;

select *
from old_pets
where breed = "Unicorn"
  and dead = 1;

drop view old_pets;
