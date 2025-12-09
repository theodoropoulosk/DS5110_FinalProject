SELECT l.country, COUNT(*) AS fire_count FROM Fires f JOIN
Locations l ON f.location_id = l.location_id GROUP BY
l.country ORDER BY fire_count DESC;