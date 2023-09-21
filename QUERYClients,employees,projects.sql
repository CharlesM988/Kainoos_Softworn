SELECT name AS `Client Name`, CONCAT(firstName, ' ', surname) AS `Employee Name`, GROUP_CONCAT( projectName SEPARATOR ', ') AS `Projects`
FROM Client 
JOIN Employee USING (EmployeeId)
JOIN Project USING (ClientId)
GROUP BY `Client Name`;
