-- liquibase formatted sql
-- changeset nikeshi:1 labels:v.1.0
CREATE TABLE DBdev.clients (
	employee_id INTEGER AUTO_INCREMENT PRIMARY KEY,
	first_name  VARCHAR(255) NOT NULL,
	last_name   VARCHAR(255) NOT NULL,
	email       VARCHAR(255) NOT NULL,
	phone       VARCHAR(50) NOT NULL ,
	hire_date   DATE NOT NULL,
	job_title   VARCHAR(255) NOT NULL
);
