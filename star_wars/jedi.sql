DROP TABLE lightsabers;
DROP TABLE jedis;


CREATE TABLE jedis (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT2 NOT NULL,
  darkside BOOLEAN NOT NULL 
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  jedi_id INT8 REFERENCES jedis(id)
);

-- SELECT * FROM jedis;

INSERT INTO jedis (name, age, darkside) VALUES ('Luke', 58, false);
INSERT INTO jedis (name, age, darkside) VALUES ('Vader', 78, true);
INSERT INTO jedis (name, age, darkside) VALUES ('Obi-Wan', 89, true);
INSERT INTO jedis (name, age, darkside) VALUES ('Anakin', 12, false);
-- INSERT INTO jedis (name, age, darkside) VALUES ('Anakin', 38, true);

UPDATE jedis SET darkside = false WHERE name = 'Luke';
UPDATE jedis SET age = 89 WHERE name = 'Obi-Wan' AND darkside = true;
UPDATE jedis SET (age, darkside) = (27, true) WHERE name = 'Anakin';

INSERT INTO lightsabers (colour, hilt_metal, jedi_id) VALUES ('green', 'palladium', 3);
INSERT INTO lightsabers (colour, hilt_metal, jedi_id) VALUES ('red', 'titanium', 2);
INSERT INTO lightsabers (colour, hilt_metal, jedi_id) VALUES ('tartan', 'iron',4);

SELECT * FROM jedis;
SELECT * FROM lightsabers;

-- SELECT * FROM jedis, lightsabers;

SELECT * FROM jedis INNER JOIN lightsabers on jedis.id = lightsabers.jedi_id;


-- SELECT * FROM jedis ORDER BY id DESK;
-- SELECT COUNT (*) FROM jedis;



