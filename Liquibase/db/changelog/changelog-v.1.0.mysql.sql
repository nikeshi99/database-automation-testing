-- liquibase formatted sql

-- changeset nikeshi:1655808533536-1
CREATE TABLE Employees (employee_id INT AUTO_INCREMENT NOT NULL, first_name VARCHAR(255) NOT NULL, last_name VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, phone VARCHAR(50) NOT NULL, hire_date date NOT NULL, manager_id INT NULL, job_title VARCHAR(255) NOT NULL, CONSTRAINT PK_EMPLOYEES PRIMARY KEY (employee_id));

--rollback drop table Employees;