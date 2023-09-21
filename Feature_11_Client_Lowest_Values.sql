
-- Generating a Query to Produce Client with the Lowest Value Project

SELECT Client.name AS client_lowest_value_project, SUM(Project.projectValue) AS lowest_value_project
FROM Client
JOIN Project ON Client.clientId = Project.clientId
GROUP BY Client.name
HAVING lowest_value_project
ORDER BY client_lowest_value_project DESC
LIMIT 1;

