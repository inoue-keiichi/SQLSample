DROP TABLE IF EXISTS sample.Workers;
CREATE TABLE sample.Workers
(
	id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(63) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO sample.Workers (name)
VALUES 
	('Asahi'),
    ('Ito'),
    ('Inoue'),
    ('Ueda'),
    ('Uemura'),
    ('Endo');
