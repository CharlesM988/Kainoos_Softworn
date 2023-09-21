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
<<<<<<< HEAD
);
=======
);
>>>>>>> feature1
