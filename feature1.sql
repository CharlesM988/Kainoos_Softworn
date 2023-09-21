USE KainoosProjectTeam4_JohnMc;

CREATE TABLE Employee(
	employeeId INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(80),
	surname VARCHAR(80),
	businessSector VARCHAR(30)
);

CREATE TABLE Sales_Employees(
	employeeId INT,
	commission_Rate Decimal(5,2),
    CONSTRAINT chkCommissionRate CHECK (commission_Rate >= 0 AND commission_Rate <= 100),
	CONSTRAINT fk_employeeSales FOREIGN KEY (employeeId) REFERENCES Employee(employeeId)
<<<<<<< HEAD
<<<<<<< HEAD
);
=======
);
>>>>>>> feature1
=======
);

INSERT INTO Employee (BusinessSector, FirstName, Surname) -- inputting data into the Employee table
	VALUES
	('Delivery', 'John', 'Smith'),
	('Sales', 'Alice', 'Johnson'),
	('Delivery','David', 'Brown'),
	('Sales', 'Sarah', 'Williams'),
	('Sales', 'Michael', 'Davis'),
	('Delivery', 'Emily', 'Jones'),
	('Sales','Chris', 'Anderson'),
	('Sales','Jennifer', 'Lee'),
	('Delivery', 'Matthew', 'Wilson'),
	('Sales', 'Sophia', 'Martinez'),
	('Sales','Daniel', 'Harris'), 
	('Delivery','Olivia', 'Clark'),
	('Delivery','Ava', 'Walker'),
	('Delivery','Matthew', 'Wilson'),
	('Sales','Joseph', 'Lewis'),
	('Sales','Ethan', 'Allen'),
	('Sales','William', 'Young'),
	('Delivery', 'Emma', 'Hall');

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
	
>>>>>>> c9675bc9fce7b8a5ea57c49930dc3d5930630b28
