SELECT strftime(’%m’, discovery_date) AS month, COUNT(*)
* 1.0 / COUNT(DISTINCT strftime(’%Y’, discovery_date))
AS avg_fires FROM Fires GROUP BY month ORDER BY month;