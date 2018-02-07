select sum(age) / count(id) as average_age from pet;

select avg(age) as average_age from pet;

select avg(length(name)) as Avg_name_length from pet;

select round(avg(age)) as average_rounded_age from pet;

select random();

select abs(random() % 20);

update pet set age = abs(random() % 20) where dead = 0;

select round(avg(age)) as average_age from pet;

update pet set age = abs(random() % 50) where dead = 0;

select round(avg(age)) as average_age from pet;

update pet set age = abs(random() % 90) where dead = 0;

select round(avg(age)) as avg_age from pet;

update pet set age = abs(random() % 90) where dead = 0;

select round(avg(age)) as avg_age from pet;

update pet set age = abs(random() % 90) where dead = 0;

select round(avg(age)) as avg_age from pet;
