USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(128),
  name VARCHAR(128),
  release_date INT UNSIGNED NOT NULL,
  genre VARCHAR(128),
  sales FLOAT,
  PRIMARY KEY (id),
  UNIQUE(artist)
);