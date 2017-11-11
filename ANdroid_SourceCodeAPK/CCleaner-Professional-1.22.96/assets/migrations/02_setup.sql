CREATE TABLE IF NOT EXISTS 'alarms'(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    date_iso TEXT,
    recipient TEXT,
    exact BOOLEAN NOT NULL
);
