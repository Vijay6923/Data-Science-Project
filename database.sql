CREATE DATABASE registration_db;
USE registration_db;
CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
student_name VARCHAR(250),
father_name VARCHAR(250),
mother_name VARCHAR(250),
phone_number VARCHAR(20),
email VARCHAR(250),
dob DATE,
address VARCHAR(250),
blood_group VARCHAR(250),
department VARCHAR(250),
course VARCHAR(250),
password VARCHAR(250)
);
SELECT * from users;
