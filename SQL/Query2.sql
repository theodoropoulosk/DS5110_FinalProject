SELECT strftime(’%Y’,f.discovery_date) AS year,AVG(f.fire_size)
AS avg_fire_size FROM Fires f GROUP BY year ORDER BY year;