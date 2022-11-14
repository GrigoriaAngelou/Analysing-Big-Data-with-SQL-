/** Creating the table**/

CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, 'Avatar', 2009);
INSERT INTO movies VALUES (2, 'Titanic', 1997);
INSERT INTO movies VALUES (3, 'Star Wars: Episode IV - A New Hope', 1977);
INSERT INTO movies VALUES (4, 'Shrek 2', 2004);
INSERT INTO movies VALUES (5, 'The Lion King', 1994);
INSERT INTO movies VALUES (6, 'Disney s Up', 2009);
 
/** Retrieves all the movies**/

SELECT * FROM movies; 

/** Retrieves only the movies that were released in the year 2000 or later, not before.
Sorts the results so that the earlier movies are listed first.**/

SELECT * FROM movies WHERE release_year >= 2000 ORDER BY release_year;
