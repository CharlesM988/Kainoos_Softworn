
-- Generating a Query to Produce Client with the Highest Value Project

SELECT Client.name AS client_highest_value_project, SUM(Project.projectValue) AS highest_value_project
FROM Client
JOIN Project ON Client.clientId = Project.clientId
GROUP BY Client.name
HAVING highest_value_project
ORDER BY client_highest_value_project ASC
LIMIT 1;
