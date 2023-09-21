use KainoosProjectTeam4_JohnMc;

SELECT 
    CONCAT(E.firstName, ' ', E.surname) AS `Sales employee name`,
    SUM(SE.commission_Rate * P.projectValue) AS `Commission made`
FROM 
    Employee AS E
JOIN 
    Sales_Employees AS SE ON SE.employeeId = E.employeeId
JOIN 
    Client AS C ON C.employeeId = E.employeeId
JOIN 
    Project AS P ON P.clientId = C.clientId
GROUP BY 
    E.employeeId, E.firstName, E.surname; 
    
