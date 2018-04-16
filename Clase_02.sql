
-- Ejercicio 1
CREATE DATABASE IF NOT EXISTS imdb CHARACTER SET = 'utf8';
USE imdb;

-- Ejercicio 2
CREATE TABLE IF NOT EXISTS film (film_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, title VARCHAR(30) NOT NULL, description VARCHAR(200) NOT NULL, release_year YEAR NOT NULL);
CREATE TABLE IF NOT EXISTS actor (actor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(20) NOT NULL, last_name VARCHAR(20) NOT NULL);
CREATE TABLE IF NOT EXISTS film_actor (actor_id INT NOT NULL, film_id INT NOT NULL);

-- Ejercicio 3
ALTER TABLE film ADD COLUMN (last_update VARCHAR(30) NOT NULL);
ALTER TABLE actor ADD COLUMN (last_update VARCHAR(30) NOT NULL);

-- Ejercicio 4
ALTER TABLE film_actor ADD CONSTRAINT film_fk FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE;
ALTER TABLE film_actor ADD CONSTRAINT actor_fk FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE CASCADE;

-- Ejercicio 5
INSERT actor (first_name, last_name, last_update) VALUES ('Bruce', 'Campbell', '12/11/2018 20:15 p.m');
INSERT actor (first_name, last_name, last_update) VALUES ('Nicolas', 'Cage', '12/11/2018 20:15 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('Good Life', 'Un grupo de amigos encuentra un libro que les revela todos los secretos de python.', 1981, '12/11/2018 20:16 p.m');
INSERT film (title, description, release_year, last_update) VALUES ('Good Life 2:Alive by sunset', 'El grupo se reune para terminar el proyecto que empezaron tiempo atras.', 2013, '12/11/2018 20:17 p.m');
