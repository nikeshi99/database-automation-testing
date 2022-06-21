-- liquibase formatted sql
-- changeset nikeshi:3 labels:v.1.1
ALTER TABLE Employees
ADD COLUMN mobile VARCHAR(15) AFTER phone;


-- changeset nikeshi:4 labels:v.1.1.0
ALTER TABLE Employees
ADD COLUMN address VARCHAR(15) AFTER mobile;
