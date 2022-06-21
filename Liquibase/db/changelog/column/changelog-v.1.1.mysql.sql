-- liquibase formatted sql
-- changeset nikeshi:3 
ALTER TABLE Employees
ADD COLUMN mobile VARCHAR(15) AFTER phone;

--rollback drop column mobile;

-- changeset nikeshi:4 
ALTER TABLE Employees
ADD COLUMN address VARCHAR(15) AFTER mobile;
--rollback drop column address;