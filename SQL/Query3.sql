SELECT strftime(’%Y’, discovery_date) AS year,
AVG(julianday(contain_date)- julianday(discovery_date))
AS avg_duration_days FROM Fires WHERE contain_date IS NOT
NULL AND discovery_date IS NOT NULL GROUP BY year ORDER BY year;