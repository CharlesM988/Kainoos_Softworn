SELECT name AS `Client Name`, AVG(ProjectValue)
FROM Client 
JOIN Project USING (ClientId)
GROUP BY `Client Name`;
