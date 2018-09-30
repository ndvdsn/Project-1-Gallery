DROP TABLE assignments;
DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  artist_information VARCHAR(255)
);

CREATE TABLE exhibits (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  exhibit_information VARCHAR(255),
  category VARCHAR(255)
);

CREATE TABLE assignments (
  id SERIAL8 PRIMARY KEY,
  artist_id INT8 REFERENCES artists(id),
  exhibit_id INT8 REFERENCES exhibits(id)
);
