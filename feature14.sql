use KainoosProjectTeam4_JohnMc;

SELECT CONCAT(E.firstName,' ',E.surname) `Employee name`, DATEDIFF(NOW(),C.dateSigned) `Number of days since last signing of client`
FROM Employee AS E
join Client AS C ON C.employeeId = E.employeeId
WHERE DATEDIFF(NOW(),C.dateSigned) > 365;

