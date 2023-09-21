USE KainoosProjectTeam4_JohnMc;

#Create the Client table
CREATE TABLE Client(
	ClientId int AUTO_INCREMENT PRIMARY KEY,
    employeeId int,
    name VARCHAR(255),
    address VARCHAR(255),
    phoneNumber VARCHAR(255),

    CONSTRAINT fk_clientEmployee FOREIGN KEY (employeeId) REFERENCES Employee(employeeId)
);


#Insert clients into the Client table
INSERT INTO `Client` (EmployeeId, name, address, phoneNumber)
VALUES
( 1, 'Josh Kelso', '1 Kainos Road', '07295723402'),
( 2 , 'Joanne Connor', '7 Kainos Street', '07496723940'),
(5, 'Charlie John', '84 Country Lane', '07124284928'),
(7,  'Patrick McCoy', '12 Blackwood Road', '07374891273'),
(4, 'James David', '56 Main Street', '07111986524');


#Verify that the table has populated with the clients
SELECT * FROM `Client`;
