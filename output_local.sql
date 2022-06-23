--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: Liquibase/db/master.mysql.yaml
--  Ran at: 6/23/22, 9:17 AM
--  Against: root@localhost@jdbc:mysql://0.tcp.ap.ngrok.io:15568/DBdev
--  Liquibase version: 4.10.0
--  *********************************************************************

--  Create Database Lock Table
CREATE TABLE DBdev.DATABASECHANGELOGLOCK (ID INT NOT NULL, `LOCKED` BIT(1) NOT NULL, LOCKGRANTED datetime NULL, LOCKEDBY VARCHAR(255) NULL, CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

--  Initialize Database Lock Table
DELETE FROM DBdev.DATABASECHANGELOGLOCK;

INSERT INTO DBdev.DATABASECHANGELOGLOCK (ID, `LOCKED`) VALUES (1, 0);

--  Lock Database
UPDATE DBdev.DATABASECHANGELOGLOCK SET `LOCKED` = 1, LOCKEDBY = 'nikeshi (192.168.1.109)', LOCKGRANTED = NOW() WHERE ID = 1 AND `LOCKED` = 0;

--  Create Database Change Log Table
CREATE TABLE DBdev.DATABASECHANGELOG (ID VARCHAR(255) NOT NULL, AUTHOR VARCHAR(255) NOT NULL, FILENAME VARCHAR(255) NOT NULL, DATEEXECUTED datetime NOT NULL, ORDEREXECUTED INT NOT NULL, EXECTYPE VARCHAR(10) NOT NULL, MD5SUM VARCHAR(35) NULL, `DESCRIPTION` VARCHAR(255) NULL, COMMENTS VARCHAR(255) NULL, TAG VARCHAR(255) NULL, LIQUIBASE VARCHAR(20) NULL, CONTEXTS VARCHAR(255) NULL, LABELS VARCHAR(255) NULL, DEPLOYMENT_ID VARCHAR(10) NULL);

--  Changeset Liquibase/db/changelog/changelog-v.1.0.mysql.sql::1655808533536-1::nikeshi
CREATE TABLE Employees (employee_id INT AUTO_INCREMENT NOT NULL, first_name VARCHAR(255) NOT NULL, last_name VARCHAR(255) NOT NULL, email VARCHAR(255) NOT NULL, phone VARCHAR(50) NOT NULL, hire_date date NOT NULL, manager_id INT NULL, job_title VARCHAR(255) NOT NULL, CONSTRAINT PK_EMPLOYEES PRIMARY KEY (employee_id));

INSERT INTO DBdev.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, `DESCRIPTION`, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('1655808533536-1', 'nikeshi', 'Liquibase/db/changelog/changelog-v.1.0.mysql.sql', NOW(), 1, '8:e90e9dd744b311179d97843385ad471d', 'sql', '', 'EXECUTED', NULL, NULL, '4.10.0', '5956031214');

--  Release Database Lock
UPDATE DBdev.DATABASECHANGELOGLOCK SET `LOCKED` = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

