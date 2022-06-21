-- liquibase formatted sql
-- changeset nikeshi:2 
CREATE TABLE users (
	employee_id INTEGER AUTO_INCREMENT PRIMARY KEY,
	first_name  VARCHAR(255) NOT NULL,
	last_name   VARCHAR(255) NOT NULL,
	email       VARCHAR(255) NOT NULL,
	phone       VARCHAR(50) NOT NULL ,
	job_title   VARCHAR(255) NOT NULL
);

