/** Creating a simple list with books that you have read, rating them**/

CREATE TABLE Books (id INTEGER PRIMARY KEY, book_name TEXT, rating INTEGER); 

INSERT INTO Books VALUES (1, 'Rena', 5); 
INSERT INTO Books VALUES (2, 'The Bat', 3);
INSERT INTO Books VALUES (3, 'Dorians Gray Portrait', 9);
INSERT INTO Books VALUES (4, 'The Idiot', 7);
INSERT INTO Books VALUES (5, 'The Grapes of Wrath', 6);

SELECT*FROM Books;
