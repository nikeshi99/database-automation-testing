-- liquibase formatted sql
-- changeset nikeshi:3 
ALTER TABLE Employees
ADD COLUMN mobile VARCHAR(15) AFTER phone;

--rollback ALTER TABLE Employees drop column mobile;

-- changeset nikeshi:4 
ALTER TABLE Employees
ADD COLUMN address VARCHAR(15) AFTER mobile;
--rollback ALTER TABLE Employees drop column address;

-- changeset nikeshi:5
ALTER TABLE clients
ADD COLUMN mobile VARCHAR(15) AFTER phone;
--rollback ALTER TABLE clients drop column mobile;

-- changeset nikeshi:6
ALTER TABLE users
ADD COLUMN mobile VARCHAR(15) AFTER phone;
--rollback ALTER TABLE users drop column mobile;

-- changeset nikeshi:7
ALTER TABLE clients
ADD COLUMN address VARCHAR(15) AFTER mobile;
--rollback ALTER TABLE clients drop column address;