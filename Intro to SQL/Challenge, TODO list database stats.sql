
/** Creating a table for things you have to do and the time that it takes to do them**/
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, 'Wash the dishes', 15);
INSERT INTO todo_list VALUES (2, 'vacuuming', 20);
INSERT INTO todo_list VALUES (3, 'Learn some stuff on KA', 30);

/** Inserting a new chore and the time that you will need to do it**/
INSERT INTO todo_list VALUES (4, 'Cooking', 45);

/** Select the SUM of minutes it will take to do all of the items on your TODO list**/
SELECT SUM(minutes) FROM todo_list;