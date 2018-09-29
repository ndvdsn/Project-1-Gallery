DROP TABLE exhibits;
DROP TABLE artists;

CREATE TABLE artists (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  artist_information TEXT
);

CREATE TABLE exhibits (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  exhibit_information TEXT,
  artist_id INT8 REFERENCES artists(id)
);
