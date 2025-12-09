SELECT cause, COUNT(*) AS total_fires FROM Fires
GROUP BY cause ORDER BY total_fires DESC;