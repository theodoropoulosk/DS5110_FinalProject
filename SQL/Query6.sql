SELECT cause, COUNT(*) AS total_large_fires FROM Fires
WHERE CAST(fire_size AS REAL) > 500000 GROUP BY cause
ORDER BY total_large_fires DESC;