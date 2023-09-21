SELECT name AS `Client Name`, AVG(ProjectValue) AS `Average Project Value`
FROM Client 
JOIN Project USING (ClientId)
GROUP BY `Client Name`;
