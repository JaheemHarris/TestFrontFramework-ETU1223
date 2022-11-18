CREATE DATABASE front;
USE front;

CREATE TABLE emp(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(120) NOT NULL,
    prenom VARCHAR(120) NOT NULL
);

INSERT INTO emp(nom, prenom) VALUES ("Jaheem", "Harris");
INSERT INTO emp(nom, prenom) VALUES ("Tan", "Fayah");
INSERT INTO emp(nom, prenom) VALUES ("Timoty", "Carinoh");