CREATE SCHEMA IF NOT EXISTS universityDB;
USE universityDB;

CREATE TABLE IF NOT EXISTS degree(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS lector(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
salary INT NOT NULL,
degree_id INT NOT NULL,
CONSTRAINT chk1 CHECK (salary > 0),
CONSTRAINT fk_lector_degree FOREIGN KEY (degree_id)
    REFERENCES degree(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS department(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR(20) NOT NULL,
head_id INT NOT NULL,
CONSTRAINT fk_department_lector FOREIGN KEY (head_id)
    REFERENCES lector(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS employments(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
lector_id INT NOT NULL,
department_id INT NOT NULL,
CONSTRAINT fk_employments_lector FOREIGN KEY (lector_id)
    REFERENCES lector(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
CONSTRAINT fk_employments_department FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);