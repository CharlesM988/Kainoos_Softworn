use KainoosProjectTeam4_JohnMc;

CREATE TABLE Employee(
	employeeId INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(80),
    surname VARCHAR(80),
    jobTitle VARCHAR(30),
    businessSector VARCHAR(30)
);

CREATE TABLE Sales_Employees(
	employeeId INT,
    commission_Rate Decimal(5,2),
    CONSTRAINT chkCommissionRate CHECK (commission_Rate >= 0 AND commission_Rate <= 100),
	CONSTRAINT fk_employeeSales FOREIGN KEY (employeeId) REFERENCES Employee(employeeId)
);

INSERT INTO Employee (BusinessSector, JobTitle, FirstName, Surname) -- inputting data into the Employee table
VALUES
    ('Delivery', 'Driver', 'John', 'Smith'),
    ('Sales', 'Sales Representative', 'Alice', 'Johnson'),
    ('Delivery', 'Driver', 'David', 'Brown'),
    ('Sales', 'Sales Manager', 'Sarah', 'Williams'),
    ('Sales', 'Sales Representative', 'Michael', 'Davis'),
    ('Delivery', 'Driver', 'Emily', 'Jones'),
    ('Sales', 'Sales Representative', 'Chris', 'Anderson'),
	('Sales', 'Sales Manager', 'Jennifer', 'Lee'),
    ('Delivery', 'Driver', 'Matthew', 'Wilson'),
    ('Sales', 'Sales Representative', 'Sophia', 'Martinez'),
    ('Sales', 'Sales Manager', 'Daniel', 'Harris'),
    ('Delivery', 'Driver', 'Olivia', 'Clark'),
    ('Delivery', 'Driver', 'Ava', 'Walker'),
    ('Delivery', 'Driver', 'Matthew', 'Wilson'),
    ('Sales', 'Sales Representative', 'Joseph', 'Lewis'),
    ('Sales', 'Sales Representative', 'Ethan', 'Allen'),
    ('Sales', 'Sales Representative', 'William', 'Young'),
    ('Delivery', 'Driver', 'Emma', 'Hall');

INSERT Sales_Employees( employeeId, commission_Rate)
	VALUES (1, 3),
	(2, 2),
    (3, 2),
    (4, 3),
    (5, 2),
    (6, 3),
    (7, 4),
    (8, 3),
    (9, 2),
    (10, 3),
    (11, 2),
    (12, 4),
    (13, 5),
    (14, 2),
    (15, 3),
    (16, 2),
    (17, 3),
    (18, 4);
	
