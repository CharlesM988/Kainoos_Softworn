use KainoosProjectTeam4_JohnMc;

CREATE TABLE Employee(
	employeeId INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(80),
    surname VARCHAR(80),
    jobTitle VARCHAR(30),
    businessSector VARCHAR(30)
);

INSERT INTO Employee (BusinessSector, FirstName, Surname) -- inputting data into the Employee table
VALUES
    ('Delivery', 'John', 'McGlinchey'); -- inserting a delivery employee

    
INSERT INTO Employee_Financials (employeeId, bankAccountNum, nationalInsuranceNum) -- inputting data into the Employee financials table
VALUES
    (19, 82965944, 'NC517107A'); -- inserting a delivery employees financial details