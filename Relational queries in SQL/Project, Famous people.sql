/* Create table about the people and what they do here */
CREATE TABLE authors (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 name TEXT,
 nationality TEXT, 
 gender TEXT);
 
INSERT INTO authors (name, nationality, gender) VALUES ("Agatha Christie", "English", "female");
INSERT INTO authors (name, nationality, gender) VALUES ("Charles Dickens", "English", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Leo Tolstoy", "Russian", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("George Orwell", "Russian", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Stephen King", "American", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Paulo Coelho", "Brazilian", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Arundhati Roy", "Indian", "female");
INSERT INTO authors (name, nationality, gender) VALUES ("Virginia Woolf", "English", "female");
INSERT INTO authors (name, nationality, gender) VALUES ("Alice Walker", "American", "female");
INSERT INTO authors (name, nationality, gender) VALUES ("Margaret Atwood", "Canadian", "female");
INSERT INTO authors (name, nationality, gender) VALUES ("Brian Evenson", "American", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Mark Twain", "American", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Ernest Hemingway", "American", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("William Shakespeare", "English", "male");
INSERT INTO authors (name, nationality, gender) VALUES ("Jane Austen", "English", "female");

CREATE TABLE books (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 authors_id INTEGER,
 title TEXT,
 published_year INTEGER, 
 genres TEXT, 
 pages INTEGER);
 
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (15, "Pride And Prejudice", 1853, "novel", 340);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (15, "Sense and Sensibility", 1811, "novel", 360);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (15, "Northanger Abbey", 1817, "novel", 274);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (15, "Persuasion", 1817, "novel", 126);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (14, "Othello", 1603, "tragedy", 190);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (14, "King Lear", 1608, "tragedy", 384);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (13, "The Sun Also Rises", 1926, "historical fiction", 251);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (13, "To Have and Have Not", 1937, "novel", 192);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (12, "The Mysterious Stranger", 1916, "novel", 113);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (11, "Last Days", 2009, "novel", 256);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (10, "The Handmaid's Tale", 1985, "science fiction", 311);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (9, "The Color Purple", 1983, "novel", 304);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (9, "Everyday Use", 1973, "sort story", 229);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (8, "To the Lighthouse", 1927, "novel", 320);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (7, "The God of Small Things", 1997, "novel", 339);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (7, "The end of imagination", 1998, "nonfiction", 408);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (6, "Eleven Minutes", 2003, "novel", 273);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (5, "The Stand", 1978, "dark novel", 1152);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (5, "The Shining", 1977, "horror novel", 447);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (4, "Animal Farm", 1945, "novel", 130);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (3, "War and Peace", 1867, "historical novel", 1225);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (3, "Anna Karenina", 1878, "novel", 800);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (2, "A Tale of Two Cities", 1859, "novel", 448);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (1, "Five Little Pigs", 1942, "detective fiction", 288);
INSERT INTO books (authors_id, title, published_year, genres, pages) VALUES (1, "Death on the Nile", 1937, "crime fiction", 416);

/**select the books with their author**/
SELECT authors.name, books.title FROM authors
JOIN books WHERE authors.id = authors_id;

/**select the books and the author that have more than 1000 pages**/
SELECT authors.name, books.title, books.pages FROM authors
JOIN books WHERE authors.id = authors_id AND pages>1000;
 
 /**select the books that are published after 2000 or before 1800 **/
SELECT books.title, books.genres, books.published_year FROM books WHERE books.published_year>2000 OR books.published_year < 1800;

/**select the books, their genres and which year they where published that the author is Jane Austen**/
SELECT books.title , authors.name, books.genres, books.published_year FROM books 
JOIN authors WHERE authors.id = authors_id AND authors.name = "Jane Austen";

