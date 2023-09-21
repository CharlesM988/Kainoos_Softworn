use KainoosProjectTeam4_JohnMc;

CREATE TABLE Employee(
	employeeId INT AUTO_INCREMENT PRIMARY KEY,
	firstName VARCHAR(80),
    surname VARCHAR(80),
    jobTitle VARCHAR(30),
    businessSector VARCHAR(30)
);

CREATE TABLE Employee_Financials (
    financeId INT AUTO_INCREMENT PRIMARY KEY,
    employeeId INT,
    bankAccountNum VARCHAR(20),
    nationalInsuranceNum VARCHAR(10),
    CONSTRAINT fk_employee FOREIGN KEY (employeeId) REFERENCES Employee(employeeId),
	CONSTRAINT check_ni_format CHECK (
        LENGTH(nationalInsuranceNum) = 9 AND
        SUBSTRING(nationalInsuranceNum, 1, 1) BETWEEN 'A' AND 'Z' AND
        SUBSTRING(nationalInsuranceNum, 2, 1) BETWEEN 'A' AND 'Z' AND
        SUBSTRING(nationalInsuranceNum, 3, 6) BETWEEN '0' AND '9' AND
        SUBSTRING(nationalInsuranceNum, 9, 1) BETWEEN 'A' AND 'Z'
        )
        
);

INSERT INTO Employee (BusinessSector, FirstName, Surname) -- inputting data into the Employee table
VALUES
    ('Delivery', 'John', 'McGlinchey'); -- inserting a delivery employee

    
INSERT INTO Employee_Financials (employeeId, bankAccountNum, nationalInsuranceNum) -- inputting data into the Employee financials table
VALUES
    (19, 82965944, 'NC517107A'); -- inserting a delivery employees financial details