-- Create Product Table
CREATE TABLE Project(
	projectId int AUTO_INCREMENT PRIMARY KEY,
    clientId int,
    projectName VARCHAR(255),
    projectValue Decimal(20,2),

    CONSTRAINT fk_clientProject FOREIGN KEY (clientId) REFERENCES `Client`(clientId)
);

-- Insert Data into Product Table
INSERT INTO Project (clientId, projectName, projectValue)
VALUES
    (4,'SmartHome Automation', 75000.00),
    (3,'E-Commerce Platform Upgrade', 120000.00),
    (6,'Healthcare Data Analytics', 150000.00),
    (7,'Mobile App Development', 50000.00),
    (2,'Financial CRM System', 90000.00),
    (8,'Cloud Migration', 200000.00),
    (7,'Game Development', 80000.00),
    (5,'Social Media Analytics', 60000.00
);
 
 -- Create Technology Table
CREATE TABLE Technology(
	technologyId int AUTO_INCREMENT PRIMARY KEY,
    technology_name VARCHAR(255)
);

-- Insert Data into Techology Table
INSERT INTO Technology (technology_name)
VALUES
    ('IoT'), ('Python'), ('Node.js'), ('React'), 
    ('PHP'), ('MySQL'), ('Tableau'), ('Swift'), ('Kotlin'), 
    ('Salesforce'), ('Apex'), ('Java'), ('AWS'), 
    ('Azure'), ('Docker'), ('Kubernetes'), ('Terraform'),
    ('Unity'), ('Blender'), ('Unreal Engine'), ('Django'), 
    ('PostgreSQL'
);
 
-- Create Project_Technologies Table
CREATE TABLE Project_Technologies(
	projectId int,
    technologyId int,
    CONSTRAINT fk_ProjectTechnologiesTOProject FOREIGN KEY (projectId) REFERENCES Project(projectId),
    CONSTRAINT fk_ProjectTechnologiesTOTechnologies FOREIGN KEY (technologyId) REFERENCES Technology(technologyId)
);

 
