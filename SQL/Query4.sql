SELECT * FROM Fires f JOIN Locations l ON f.location_id
= l.location_id WHERE l.country = ’United States’ AND
CAST(f.fire_size AS REAL) > 500000;