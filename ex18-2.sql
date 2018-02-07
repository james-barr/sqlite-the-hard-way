
select breed, count(id), sum(dead)
from pet
group by breed
;


select pr.age, avg(pe.age)
from person pr, pet pe, person_pet pt
where pr.id = pt.person_id and
  pe.id = pt.pet_id
group by pr.age
;

select breed, dead, min(pr.age)
from pet pe, person pr, person_pet pt
where pe.id = pt.pet_id and
  pr.id = pt.person_id
group by breed, dead
;

select pe.breed, max(pe.age), max(pr.age) as "Person Age"
from pet pe, person pr, person_pet pt
where pe.id = pt.pet_id and
  pr.id = pt.person_id
group by pe.breed
order by pe.breed desc
;
