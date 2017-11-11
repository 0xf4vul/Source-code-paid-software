CREATE TABLE IF NOT EXISTS 'scheduled_cleans'(
    _id INTEGER PRIMARY KEY AUTOINCREMENT,
    label TEXT,
    local_time TEXT,
    days TEXT,
    analyses TEXT,
    enabled BOOLEAN NOT NULL,
    results_notification_enabled BOOLEAN NOT NULL
);

INSERT INTO 'scheduled_cleans' (
    label,
    local_time,
    days,
    analyses,
    enabled,
    results_notification_enabled
)
VALUES (
    '',
    '8:00',
    '1,2,3,4,5,6,7',
    '',
    0,
    1
);

ALTER TABLE 'alarms'
ADD COLUMN data_for_recipient TEXT;
