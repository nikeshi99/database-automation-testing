-- liquibase formatted sql
-- changeset nikeshi:3 labels:v.1.1
ALTER TABLE Employees
ADD COLUMN mobile VARCHAR(15) AFTER phone;