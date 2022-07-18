DROP DATABASE IF EXISTS payroll;
CREATE DATABASE IF NOT EXISTS payroll;
USE payroll;

/* Delete the tables if they already exist */
DROP TABLE IF EXISTS manages;
DROP TABLE IF EXISTS works;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS employee;

CREATE TABLE employee
(
    ID CHAR(8), 
    name CHAR(20), 
    street CHAR(30), 
    city CHAR(30),
    PRIMARY KEY(ID)
    );


CREATE TABLE manages
(
    ID INT NOT NULL AUTO_INCREMENT, 
    manager_id CHAR(8),
    PRIMARY KEY(ID),
    FOREIGN KEY(manager_id) REFERENCES employee(ID)
    ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE company
(
    name CHAR(90), 
    city CHAR(30),
    PRIMARY KEY(name)
    );

CREATE TABLE works
(
    ID CHAR(8), 
    name CHAR(90), 
    salary FLOAT,
    PRIMARY KEY(ID),
    FOREIGN KEY(ID) REFERENCES employee(ID)
    ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(name) REFERENCES company(name) 
    ON DELETE CASCADE ON UPDATE CASCADE
    );