
/** Creating a table for our store. It sells clothes. We have 5 columns and we sell 15 items**/

CREATE TABLE Clothes (id INTEGER PRIMARY KEY, type TEXT, color TEXT, fabric TEXT, price INTEGER);
INSERT INTO Clothes VALUES (1, 't-shirt', 'blue', 'cotton', 15);
INSERT INTO Clothes VALUES (2, 't-shirt', 'red', 'cotton', 15);
INSERT INTO Clothes VALUES (3, 'blouse', 'black', 'chiffon', 35);
INSERT INTO Clothes VALUES (4, 'underwear', 'white', 'cotton', 12);
INSERT INTO Clothes VALUES (5, 't-shirt', 'white', 'cotton', 10);
INSERT INTO Clothes VALUES (6, 'jeans', 'blue', 'denim', 40);
INSERT INTO Clothes VALUES (7, 'jeans', 'black', 'denim', 38);
INSERT INTO Clothes VALUES (8, 't-shirt', 'pink', 'cotton', 19);
INSERT INTO Clothes VALUES (9, 'jeans', 'white', 'denim', 42);
INSERT INTO Clothes VALUES (10, 'blouse', 'blue', 'satin', 32);
INSERT INTO Clothes VALUES (11, 'blouse', 'red', 'satin', 32);
INSERT INTO Clothes VALUES (12, 'bra', 'blue', 'tricot', 32);
INSERT INTO Clothes VALUES (13, 'bra', 'red', 'tricot', 30);
INSERT INTO Clothes VALUES (14, 'bra', 'black', 'tricot', 43);
INSERT INTO Clothes VALUES (15, 'underwear', 'black', 'cotton', 15);

/** We order our items by price **/
SELECT * FROM Clothes ORDER BY price;

/**We use one statistic about the items. In our case we count how many items in our store have a price lower than 30**/
SELECT COUNT('type') FROM Clothes WHERE price < 30; 