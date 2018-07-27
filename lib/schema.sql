CREATE TABLE series (
  id INTEGER PRIMARY KEY,
  title VARCHAR(500),
  author_id INTEGER,
  subgenre_id INTEGER
);

CREATE TABLE subgenres (
  id INTEGER PRIMARY KEY,
  name VARCHAR(500)
);
--
CREATE TABLE authors (
  id INTEGER PRIMARY KEY,
  name VARCHAR(500)
);
--
CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title VARCHAR(500),
  year INTEGER,
  series_id INTEGER
);
--
CREATE TABLE characters (
  id INTEGER PRIMARY KEY,
  name VARCHAR(500),
  species VARCHAR(500),
  motto VARCHAR(500),
  series_id INTEGER,
  author_id INTEGER
);
--
CREATE TABLE character_books (
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  character_id INTEGER
);
