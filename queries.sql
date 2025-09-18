-- 1. Average resolution time by severity
SELECT severity, AVG(DATEDIFF(closed_at, created_at)) AS avg_resolution_days
FROM Bugs
WHERE status = 'Closed'
GROUP BY severity;

-- 2. Developer with most bugs resolved
SELECT d.name, COUNT(*) AS bugs_closed
FROM Bugs b
JOIN Developers d ON b.dev_id = d.dev_id
WHERE b.status = 'Closed'
GROUP BY d.name
ORDER BY bugs_closed DESC
LIMIT 1;

-- 3. %age of bugs reopened
SELECT 
    (SUM(CASE WHEN status = 'Reopened' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS percent_reopened
FROM Bugs;
