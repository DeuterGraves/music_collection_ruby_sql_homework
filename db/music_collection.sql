-- drop both - album will depend on artist so it gets dropped first.  artist will get created first.
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

--  now to create!

CREATE TABLE artists(
id SERIAL8 PRIMARY KEY,
name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  year INT2,
  genre VARCHAR(255),
  artist_id INT8 REFERENCES artists(id)
);
