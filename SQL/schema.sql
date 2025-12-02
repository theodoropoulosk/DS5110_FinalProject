BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Fires" (
	"fire_id"	INTEGER,
	"location_id"	INTEGER NOT NULL,
	"discovery_date"	TEXT,
	"contain_date"	TEXT,
	"fire_size"	REAL,
	"fire_size_class"	TEXT,
	"cause"	TEXT,
	PRIMARY KEY("fire_id" AUTOINCREMENT),
	FOREIGN KEY("location_id") REFERENCES "Locations"("location_id")
);
CREATE TABLE IF NOT EXISTS "Locations" (
	"location_id"	INTEGER,
	"latitude"	REAL NOT NULL,
	"longitude"	REAL NOT NULL,
	"country"	TEXT NOT NULL,
	PRIMARY KEY("location_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Predictions" (
	"prediction_id"	INTEGER,
	"fire_id"	INTEGER NOT NULL,
	"pred_fire_size"	REAL,
	"pred_contain_date"	TEXT,
	"model"	TEXT,
	PRIMARY KEY("prediction_id" AUTOINCREMENT),
	FOREIGN KEY("fire_id") REFERENCES "Fires"("fire_id")
);
CREATE TABLE IF NOT EXISTS "Weather" (
	"weather_id"	INTEGER,
	"fire_id"	INTEGER NOT NULL,
	"date"	TEXT,
	"temperature"	REAL,
	"humidity"	REAL,
	"wind_speed"	REAL,
	"precipitation"	REAL,
	"total_rainfall"	REAL,
	PRIMARY KEY("weather_id" AUTOINCREMENT),
	FOREIGN KEY("fire_id") REFERENCES "Fires"("fire_id")
);
COMMIT;
