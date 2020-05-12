CREATE DATABASE doctoroffice;
USE doctoroffice;
CREATE TABLE patient (
    id INTEGER,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    PRIMARY KEY (id)
);
CREATE TABLE patient_info (
    id INTEGER,
    name VARCHAR(255),
    phone VARCHAR(10),
    age INTEGER,
    anyallergies VARCHAR(255),
    appointment DATE,
    PRIMARY KEY (id)
);

/*
CREATE TABLE student_attendance (
    object_id INTEGER NOT NULL AUTO_INCREMENT,
    student_id INT,
    code CHAR,
    credit FLOAT,
    PRIMARY KEY (object_id)
);
*/

INSERT INTO patient (id, first_name, last_name) 
VALUES
    (0, "Emily", "Gao"),
    (1, "John", "Hopkins"),
    (2, "Kate", "Daddario"),
    (3, "Angelina", "williams"),
    (4, "Elizabeth", "Smith"),
    (5, "Tim", "Halpert"),    
    (6, "Abe", "Johnson"),
    (7, "Om", "Patel"),
    (8, "Kie", "Nguyen"),
    (9, "Curtis", "Mayfield"),
    (10, "Lionel", "Richie");
    
    

INSERT INTO patient_info (id, name, phone, age, anyallergies, appointment) 
VALUES
    (0, "Emily Gao", "7324558765", "45", "NO", "2020-05-20"),
    (1, "John Hopkins", "7233456789", "37", "NO", "2020-05-20"),
    (2, "Kate Daddario", "9082225456", "32", "YES", "2020-05-20"),
    (3, "Angelina Williams", "1567892345", "23", "NO", "2020-05-20"),
    (4, "Elizabeth Smith", "4445556666", "27", "NO", "2020-05-20"),
    (5, "Tim Halpert", "7233456755", "11", "YES", "2020-05-20"),
    (6, "Abe Johnson", "9073452345", "56", "NO", "2020-05-20"),
    (7, "Om Patel", "9073452345", "25", "NO", "2020-05-20"),
    (8, "Kie Nguyen", "6095555555", "22", "YES", "2020-05-21"),
    (9, "Curtis Mayfield", "2125555555", "30", "NO", "2020-05-21"),
    (10, "Lionel Richie", "7235555555", "32", "NO", "2020-05-20");

ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'it635';
CREATE USER 'steve'@'%' IDENTIFIED BY 'it635';
GRANT SELECT ON doctoroffice.patient_info TO 'steve'@'%';
GRANT INSERT ON doctoroffice.patient_info TO 'steve'@'%';
/*FLUSH PRIVILEGES;*/
