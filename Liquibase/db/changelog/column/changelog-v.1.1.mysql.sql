-- liquibase formatted sql
-- changeset nikeshi:3 labels:v.1.1
ALTER TABLE Employees
ADD COLUMN mobile VARCHAR(15) AFTER phone;
--rollbak ALTER TABLE Employees DROP COLUMN mobile

-- changeset nikeshi:4 labels:v.1.1.0
ALTER TABLE Employees
ADD COLUMN address VARCHAR(15) AFTER mobile;
--rollback ALTER TABLE Employees DROP COLUMN address