/* What does the app's SQL look like? */

CREATE TABLE daily_cooking (
   id INTEGER PRIMARY KEY,
   meal TEXT,
   date TEXT,
   notes TEXT);
  
 
INSERT INTO daily_cooking (id, meal, date, notes) VALUES (1, "roasted chicken", "10-12-2022", "Preheat the oven to 350 degrees F");
INSERT INTO daily_cooking (id, meal, date, notes) VALUES (2, "creamy paste", "11-12-2022", "Don't rinse the pasta after you drain it from the pot");
INSERT INTO daily_cooking (id, meal, date, notes) VALUES (3, "vegetable soup", "12-12-2022", "Don't boil fresh herbs in broth, though, or they could make the stock bitter.");
INSERT INTO daily_cooking (id, meal, date, notes) VALUES (4, "caesar's salad", "13-12-2022", "Use chopped romaine lettuce and garlicky croutons.");
 
UPDATE daily_cooking SET notes = "Rinse the chicken inside and out." WHERE id = 1;

SELECT * FROM daily_cooking;

DELETE FROM daily_cooking WHERE id = 4;

SELECT * FROM daily_cooking;

 
