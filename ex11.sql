/* this should fail because 0 is already taken as an id */
INSERT INTO person (id, first_name, last_name, age)
  VALUES (0, 'Frank', 'Smith', 100);

/* we can force it by doing an INSERT or REPLACE */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
  VALUES (0, "Frank", "Smith", 100);

SELECT * FROM person;

/* AND shorthand for this is just REPLACE */
REPLACE INTO person (id, first_name, last_name, age)
  VALUES (0, 'Zed', "Shaw", 37);

/* Now you can see I'm back */
SELECT * FROM person;
