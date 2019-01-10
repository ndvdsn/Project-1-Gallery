
DROP TABLE IF EXISTS exhibits;
DROP TABLE IF EXISTS artists;




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
  ex_image_1 TEXT,
  ex_image_2 TEXT,
  ex_image_3 TEXT,
  category VARCHAR(255),
  artist_id INT8 REFERENCES artists(id) ON DELETE CASCADE
);
