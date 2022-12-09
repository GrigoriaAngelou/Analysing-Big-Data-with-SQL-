CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

/**Use ALTER to add a 'price' column to the table**/    
ALTER TABLE clothes ADD price REAL;

SELECT * FROM clothes;

/**Using UPDATE - item 1 should be 10 dollars, item 2 should be 20 dollars, item 3 should be 30 dollars.**/
UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

SELECT * FROM clothes;

/**Insert a new item into the table that has all three attributes filled in, including 'price'.**/
INSERT INTO clothes (type, design, price)
    VALUES ("blazer", "pink", 25);

SELECT * FROM clothes;