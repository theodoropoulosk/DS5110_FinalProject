SELECT l.latitude, l.longitude, l.country, SUM(f.fire_size)
AS total_fire_size FROM Fires f JOIN Locations l ON
f.location_id = l.location_id GROUP BY l.latitude, l.longitude,
l.country ORDER BY total_fire_size DESC LIMIT 10;