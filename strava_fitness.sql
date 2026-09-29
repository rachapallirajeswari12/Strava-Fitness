
CREATE TABLE daily_activity (
    id BIGINT,
    activity_date TEXT,
    total_steps INTEGER,
    total_distance NUMERIC,
    tracker_distance NUMERIC,
    logged_activities_distance NUMERIC,
    very_active_distance NUMERIC,
    moderately_active_distance NUMERIC,
    light_active_distance NUMERIC,
    sedentary_active_distance NUMERIC,
    very_active_minutes INTEGER,
    fairly_active_minutes INTEGER,
    lightly_active_minutes INTEGER,
    sedentary_minutes INTEGER,
    calories INTEGER
);

SELECT COUNT(*) AS total_records
FROM daily_activity;

SELECT COUNT(DISTINCT id) AS unique_users
FROM daily_activity;

CREATE TABLE daily_calories (
    id BIGINT,
    activity_day TEXT,
    calories INTEGER
);

SELECT COUNT(*) AS total_records
FROM daily_calories;

SELECT COUNT(DISTINCT id) AS unique_users
FROM daily_calories;

CREATE TABLE daily_intensity (
    id BIGINT,
    activity_day TEXT,
    sedentary_minutes INTEGER,
    lightly_active_minutes INTEGER,
    fairly_active_minutes INTEGER,
    very_active_minutes INTEGER,
    sedentary_active_distance NUMERIC,
    light_active_distance NUMERIC,
    moderately_active_distance NUMERIC,
    very_active_distance NUMERIC
);

SELECT COUNT(*) AS total_records
FROM daily_intensity;

CREATE TABLE daily_steps (
    id BIGINT,
    activity_day TEXT,
    step_total INTEGER
);

SELECT COUNT(*) AS total_records
FROM daily_steps;

CREATE TABLE heart_rate_seconds (
    id BIGINT,
    time TEXT,
    value INTEGER
);

SELECT COUNT(*) AS total_records
FROM heart_rate_seconds;

SELECT COUNT(*) AS total_records,
       COUNT(DISTINCT id) AS unique_users
FROM heart_rate_seconds;

CREATE TABLE hourly_calories (
    id BIGINT,
    activity_hour TEXT,
    calories INTEGER
);

SELECT COUNT(*) AS total_records
FROM hourly_calories;

CREATE TABLE hourly_intensities (
    id BIGINT,
    activity_hour TEXT,
    total_intensity INTEGER,
    average_intensity NUMERIC
);

SELECT COUNT(*) AS total_records
FROM hourly_intensities;

CREATE TABLE hourly_steps (
    id BIGINT,
    activity_hour TEXT,
    step_total INTEGER
);

SELECT COUNT(*) AS total_records
FROM hourly_steps;

CREATE TABLE minute_calories_narrow (
    id BIGINT,
    activity_minute TEXT,
    calories NUMERIC
);

SELECT COUNT(*) AS total_records
FROM minute_calories_narrow;

CREATE TABLE minute_calories_wide (
    id BIGINT,
    activity_hour TEXT,
    calories00 NUMERIC,
    calories01 NUMERIC,
    calories02 NUMERIC,
    calories03 NUMERIC,
    calories04 NUMERIC,
    calories05 NUMERIC,
    calories06 NUMERIC,
    calories07 NUMERIC,
    calories08 NUMERIC,
    calories09 NUMERIC,
    calories10 NUMERIC,
    calories11 NUMERIC,
    calories12 NUMERIC,
    calories13 NUMERIC,
    calories14 NUMERIC,
    calories15 NUMERIC,
    calories16 NUMERIC,
    calories17 NUMERIC,
    calories18 NUMERIC,
    calories19 NUMERIC,
    calories20 NUMERIC,
    calories21 NUMERIC,
    calories22 NUMERIC,
    calories23 NUMERIC,
    calories24 NUMERIC,
    calories25 NUMERIC,
    calories26 NUMERIC,
    calories27 NUMERIC,
    calories28 NUMERIC,
    calories29 NUMERIC,
    calories30 NUMERIC,
    calories31 NUMERIC,
    calories32 NUMERIC,
    calories33 NUMERIC,
    calories34 NUMERIC,
    calories35 NUMERIC,
    calories36 NUMERIC,
    calories37 NUMERIC,
    calories38 NUMERIC,
    calories39 NUMERIC,
    calories40 NUMERIC,
    calories41 NUMERIC,
    calories42 NUMERIC,
    calories43 NUMERIC,
    calories44 NUMERIC,
    calories45 NUMERIC,
    calories46 NUMERIC,
    calories47 NUMERIC,
    calories48 NUMERIC,
    calories49 NUMERIC,
    calories50 NUMERIC,
    calories51 NUMERIC,
    calories52 NUMERIC,
    calories53 NUMERIC,
    calories54 NUMERIC,
    calories55 NUMERIC,
    calories56 NUMERIC,
    calories57 NUMERIC,
    calories58 NUMERIC,
    calories59 NUMERIC
);

SELECT COUNT(*) AS total_records
FROM minute_calories_wide;

CREATE TABLE minute_intensities_narrow (
    id BIGINT,
    activity_minute TEXT,
    intensity INTEGER
);

SELECT COUNT(*) AS total_records
FROM minute_intensities_narrow;

CREATE TABLE minute_intensities_wide (
    id BIGINT,
    activity_hour TEXT,
    intensity00 INTEGER,
    intensity01 INTEGER,
    intensity02 INTEGER,
    intensity03 INTEGER,
    intensity04 INTEGER,
    intensity05 INTEGER,
    intensity06 INTEGER,
    intensity07 INTEGER,
    intensity08 INTEGER,
    intensity09 INTEGER,
    intensity10 INTEGER,
    intensity11 INTEGER,
    intensity12 INTEGER,
    intensity13 INTEGER,
    intensity14 INTEGER,
    intensity15 INTEGER,
    intensity16 INTEGER,
    intensity17 INTEGER,
    intensity18 INTEGER,
    intensity19 INTEGER,
    intensity20 INTEGER,
    intensity21 INTEGER,
    intensity22 INTEGER,
    intensity23 INTEGER,
    intensity24 INTEGER,
    intensity25 INTEGER,
    intensity26 INTEGER,
    intensity27 INTEGER,
    intensity28 INTEGER,
    intensity29 INTEGER,
    intensity30 INTEGER,
    intensity31 INTEGER,
    intensity32 INTEGER,
    intensity33 INTEGER,
    intensity34 INTEGER,
    intensity35 INTEGER,
    intensity36 INTEGER,
    intensity37 INTEGER,
    intensity38 INTEGER,
    intensity39 INTEGER,
    intensity40 INTEGER,
    intensity41 INTEGER,
    intensity42 INTEGER,
    intensity43 INTEGER,
    intensity44 INTEGER,
    intensity45 INTEGER,
    intensity46 INTEGER,
    intensity47 INTEGER,
    intensity48 INTEGER,
    intensity49 INTEGER,
    intensity50 INTEGER,
    intensity51 INTEGER,
    intensity52 INTEGER,
    intensity53 INTEGER,
    intensity54 INTEGER,
    intensity55 INTEGER,
    intensity56 INTEGER,
    intensity57 INTEGER,
    intensity58 INTEGER,
    intensity59 INTEGER
);

SELECT COUNT(*) AS total_records
FROM minute_intensities_wide;

CREATE TABLE minute_mets_narrow (
    id BIGINT,
    activity_minute TEXT,
    mets NUMERIC
);

SELECT COUNT(*) AS total_records
FROM minute_mets_narrow;

CREATE TABLE minute_sleep (
    id BIGINT,
    sleep_date TEXT,
    value INTEGER,
    log_id BIGINT
);

SELECT COUNT(*) AS total_records
FROM minute_sleep;

CREATE TABLE minute_steps_narrow (
    id BIGINT,
    activity_minute TEXT,
    steps INTEGER
);

SELECT COUNT(*) AS total_records
FROM minute_steps_narrow;

CREATE TABLE minute_steps_wide (
    id BIGINT,
    activity_hour TEXT,
    steps00 INTEGER,
    steps01 INTEGER,
    steps02 INTEGER,
    steps03 INTEGER,
    steps04 INTEGER,
    steps05 INTEGER,
    steps06 INTEGER,
    steps07 INTEGER,
    steps08 INTEGER,
    steps09 INTEGER,
    steps10 INTEGER,
    steps11 INTEGER,
    steps12 INTEGER,
    steps13 INTEGER,
    steps14 INTEGER,
    steps15 INTEGER,
    steps16 INTEGER,
    steps17 INTEGER,
    steps18 INTEGER,
    steps19 INTEGER,
    steps20 INTEGER,
    steps21 INTEGER,
    steps22 INTEGER,
    steps23 INTEGER,
    steps24 INTEGER,
    steps25 INTEGER,
    steps26 INTEGER,
    steps27 INTEGER,
    steps28 INTEGER,
    steps29 INTEGER,
    steps30 INTEGER,
    steps31 INTEGER,
    steps32 INTEGER,
    steps33 INTEGER,
    steps34 INTEGER,
    steps35 INTEGER,
    steps36 INTEGER,
    steps37 INTEGER,
    steps38 INTEGER,
    steps39 INTEGER,
    steps40 INTEGER,
    steps41 INTEGER,
    steps42 INTEGER,
    steps43 INTEGER,
    steps44 INTEGER,
    steps45 INTEGER,
    steps46 INTEGER,
    steps47 INTEGER,
    steps48 INTEGER,
    steps49 INTEGER,
    steps50 INTEGER,
    steps51 INTEGER,
    steps52 INTEGER,
    steps53 INTEGER,
    steps54 INTEGER,
    steps55 INTEGER,
    steps56 INTEGER,
    steps57 INTEGER,
    steps58 INTEGER,
    steps59 INTEGER
);

SELECT COUNT(*) AS total_records
FROM minute_steps_wide;

CREATE TABLE sleep_day (
    id BIGINT,
    sleep_day TEXT,
    total_sleep_records INTEGER,
    total_minutes_asleep INTEGER,
    total_time_in_bed INTEGER
);

SELECT COUNT(*) AS total_records
FROM sleep_day;

CREATE TABLE weight_log (
    id BIGINT,
    log_date TEXT,
    weight_kg NUMERIC,
    weight_pounds NUMERIC,
    fat NUMERIC,
    bmi NUMERIC,
    is_manual_report BOOLEAN,
    log_id BIGINT
);

SELECT COUNT(*) AS total_records
FROM weight_log;

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

SELECT 'daily_activity' AS table_name, COUNT(*) AS records FROM daily_activity
UNION ALL
SELECT 'daily_calories', COUNT(*) FROM daily_calories
UNION ALL
SELECT 'daily_intensity', COUNT(*) FROM daily_intensity
UNION ALL
SELECT 'daily_steps', COUNT(*) FROM daily_steps
UNION ALL
SELECT 'heart_rate_seconds', COUNT(*) FROM heart_rate_seconds
UNION ALL
SELECT 'hourly_calories', COUNT(*) FROM hourly_calories
UNION ALL
SELECT 'hourly_intensities', COUNT(*) FROM hourly_intensities
UNION ALL
SELECT 'hourly_steps', COUNT(*) FROM hourly_steps
UNION ALL
SELECT 'minute_calories_narrow', COUNT(*) FROM minute_calories_narrow
UNION ALL
SELECT 'minute_calories_wide', COUNT(*) FROM minute_calories_wide
UNION ALL
SELECT 'minute_intensities_narrow', COUNT(*) FROM minute_intensities_narrow
UNION ALL
SELECT 'minute_intensities_wide', COUNT(*) FROM minute_intensities_wide
UNION ALL
SELECT 'minute_mets_narrow', COUNT(*) FROM minute_mets_narrow
UNION ALL
SELECT 'minute_sleep', COUNT(*) FROM minute_sleep
UNION ALL
SELECT 'minute_steps_narrow', COUNT(*) FROM minute_steps_narrow
UNION ALL
SELECT 'minute_steps_wide', COUNT(*) FROM minute_steps_wide
UNION ALL
SELECT 'sleep_day', COUNT(*) FROM sleep_day
UNION ALL
SELECT 'weight_log', COUNT(*) FROM weight_log
ORDER BY table_name;

-- NULL check

SELECT
    COUNT(*) AS total_records,
    COUNT(*) FILTER (WHERE id IS NULL) AS null_id,
    COUNT(*) FILTER (WHERE activity_date IS NULL) AS null_activity_date,
    COUNT(*) FILTER (WHERE total_steps IS NULL) AS null_steps,
    COUNT(*) FILTER (WHERE total_distance IS NULL) AS null_distance,
    COUNT(*) FILTER (WHERE calories IS NULL) AS null_calories
FROM daily_activity;

-- Duplicate check

SELECT
    id,
    activity_date,
    COUNT(*) AS duplicate_count
FROM daily_activity
GROUP BY id, activity_date
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- Activity dates check

SELECT
    MIN(TO_DATE(activity_date, 'MM/DD/YYYY')) AS earliest_date,
    MAX(TO_DATE(activity_date, 'MM/DD/YYYY')) AS latest_date
FROM daily_activity;

ALTER TABLE daily_activity
ADD COLUMN activity_date_new DATE;

UPDATE daily_activity
SET activity_date_new = TO_DATE(activity_date, 'MM/DD/YYYY');

SELECT activity_date, activity_date_new
FROM daily_activity
LIMIT 10;

-- Replace date column

ALTER TABLE daily_activity
DROP COLUMN activity_date;

ALTER TABLE daily_activity
RENAME COLUMN activity_date_new TO activity_date;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'daily_activity'
  AND column_name = 'activity_date';

SELECT activity_day
FROM daily_calories
LIMIT 10; 

-- Add DATE column

ALTER TABLE daily_calories
ADD COLUMN activity_day_new DATE;

-- Convert TEXT → DATE

UPDATE daily_calories
SET activity_day_new = TO_DATE(activity_day, 'MM/DD/YYYY');

SELECT activity_day, activity_day_new
FROM daily_calories
LIMIT 10;

-- Replace old TEXT column

ALTER TABLE daily_calories
DROP COLUMN activity_day;

ALTER TABLE daily_calories
RENAME COLUMN activity_day_new TO activity_day;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'daily_calories'
  AND column_name = 'activity_day';

-- Current format check

SELECT activity_day
FROM daily_intensity
LIMIT 10;

-- New DATE column

ALTER TABLE daily_intensity
ADD COLUMN activity_day_new DATE;

-- Convert to DATE

UPDATE daily_intensity
SET activity_day_new = TO_DATE(activity_day, 'MM/DD/YYYY');

SELECT activity_day, activity_day_new
FROM daily_intensity
LIMIT 10;

-- Replace old column

ALTER TABLE daily_intensity
DROP COLUMN activity_day;

ALTER TABLE daily_intensity
RENAME COLUMN activity_day_new TO activity_day;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'daily_intensity'
  AND column_name = 'activity_day';

-- Format check

SELECT activity_day
FROM daily_steps
LIMIT 10;

-- New DATE column

ALTER TABLE daily_steps
ADD COLUMN activity_day_new DATE;

-- Convert

UPDATE daily_steps
SET activity_day_new = TO_DATE(activity_day, 'MM/DD/YYYY');

SELECT activity_day, activity_day_new
FROM daily_steps
LIMIT 10;

-- Replace old column

ALTER TABLE daily_steps
DROP COLUMN activity_day;

ALTER TABLE daily_steps
RENAME COLUMN activity_day_new TO activity_day;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'daily_steps'
  AND column_name = 'activity_day';

-- Check format

SELECT activity_hour
FROM hourly_calories
LIMIT 10;

-- New TIMESTAMP column

ALTER TABLE hourly_calories
ADD COLUMN activity_hour_new TIMESTAMP;

-- Convert TEXT → TIMESTAMP

UPDATE hourly_calories
SET activity_hour_new = TO_TIMESTAMP(activity_hour, 'MM/DD/YYYY HH12:MI:SS AM');

SELECT activity_hour, activity_hour_new
FROM hourly_calories
LIMIT 10;

-- Replace old column

ALTER TABLE hourly_calories
DROP COLUMN activity_hour;

ALTER TABLE hourly_calories
RENAME COLUMN activity_hour_new TO activity_hour;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'hourly_calories'
  AND column_name = 'activity_hour';

-- Format check

SELECT activity_hour
FROM hourly_intensities
LIMIT 10;

-- New TIMESTAMP column

ALTER TABLE hourly_intensities
ADD COLUMN activity_hour_new TIMESTAMP;

-- Convert TEXT → TIMESTAMP

UPDATE hourly_intensities
SET activity_hour_new = TO_TIMESTAMP(
    activity_hour,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_hour, activity_hour_new
FROM hourly_intensities
LIMIT 10;

ALTER TABLE hourly_intensities
DROP COLUMN activity_hour;

ALTER TABLE hourly_intensities
RENAME COLUMN activity_hour_new TO activity_hour;

-- Verify data type

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'hourly_intensities'
  AND column_name = 'activity_hour';

-- First format check

SELECT activity_hour
FROM hourly_steps
LIMIT 10;

-- New TIMESTAMP column

ALTER TABLE hourly_steps
ADD COLUMN activity_hour_new TIMESTAMP;

-- Convert the column

UPDATE hourly_steps
SET activity_hour_new = TO_TIMESTAMP(
    activity_hour,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_hour, activity_hour_new
FROM hourly_steps
LIMIT 10;

-- Old column delete + new column rename

ALTER TABLE hourly_steps
DROP COLUMN activity_hour;

ALTER TABLE hourly_steps
RENAME COLUMN activity_hour_new TO activity_hour;

-- Verify

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'hourly_steps'
  AND column_name = 'activity_hour';

-- Format check

SELECT activity_minute
FROM minute_calories_narrow
LIMIT 10;

-- New TIMESTAMP

ALTER TABLE minute_calories_narrow
ADD COLUMN activity_minute_new TIMESTAMP;

-- TEXT → TIMESTAMP

UPDATE minute_calories_narrow
SET activity_minute_new = TO_TIMESTAMP(
    activity_minute,
    'MM/DD/YYYY HH12:MI:SS AM'
);

-- Verify

SELECT activity_minute, activity_minute_new
FROM minute_calories_narrow
LIMIT 10;

-- Old column delete

ALTER TABLE minute_calories_narrow
DROP COLUMN activity_minute;
  
ALTER TABLE minute_calories_narrow
RENAME COLUMN activity_minute_new TO activity_minute;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'minute_calories_narrow'
  AND column_name = 'activity_minute';

-- minute_calories_wide

ALTER TABLE minute_calories_wide
ADD COLUMN activity_hour_new TIMESTAMP;

UPDATE minute_calories_wide
SET activity_hour_new = TO_TIMESTAMP(
    activity_hour,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_hour, activity_hour_new
FROM minute_calories_wide
LIMIT 5;

ALTER TABLE minute_calories_wide DROP COLUMN activity_hour;

ALTER TABLE minute_calories_wide
RENAME COLUMN activity_hour_new TO activity_hour;

-- minute_intensities_narrow

ALTER TABLE minute_intensities_narrow
ADD COLUMN activity_minute_new TIMESTAMP;

UPDATE minute_intensities_narrow
SET activity_minute_new = TO_TIMESTAMP(
    activity_minute,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_minute, activity_minute_new
FROM minute_intensities_narrow
LIMIT 5;

ALTER TABLE minute_intensities_narrow DROP COLUMN activity_minute;

ALTER TABLE minute_intensities_narrow
RENAME COLUMN activity_minute_new TO activity_minute;

-- minute_intensities_wide

ALTER TABLE minute_intensities_wide
ADD COLUMN activity_hour_new TIMESTAMP;

UPDATE minute_intensities_wide
SET activity_hour_new = TO_TIMESTAMP(
    activity_hour,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_hour, activity_hour_new
FROM minute_intensities_wide
LIMIT 5;

ALTER TABLE minute_intensities_wide DROP COLUMN activity_hour;

ALTER TABLE minute_intensities_wide
RENAME COLUMN activity_hour_new TO activity_hour;

-- minute_mets_narrow

ALTER TABLE minute_mets_narrow
ADD COLUMN activity_minute_new TIMESTAMP;

UPDATE minute_mets_narrow
SET activity_minute_new = TO_TIMESTAMP(
    activity_minute,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_minute, activity_minute_new
FROM minute_mets_narrow
LIMIT 5;

ALTER TABLE minute_mets_narrow DROP COLUMN activity_minute;

ALTER TABLE minute_mets_narrow
RENAME COLUMN activity_minute_new TO activity_minute;

-- heart_rate_seconds

SELECT time
FROM heart_rate_seconds
LIMIT 5;

ALTER TABLE heart_rate_seconds
ADD COLUMN time_new TIMESTAMP;

UPDATE heart_rate_seconds
SET time_new = TO_TIMESTAMP(
    time,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT time, time_new
FROM heart_rate_seconds
LIMIT 10;

ALTER TABLE heart_rate_seconds
DROP COLUMN time;

ALTER TABLE heart_rate_seconds
RENAME COLUMN time_new TO time;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'heart_rate_seconds'
  AND column_name = 'time';

-- minute_sleep

SELECT sleep_date, value, log_id
FROM minute_sleep
LIMIT 10;

ALTER TABLE minute_sleep
ADD COLUMN sleep_date_new TIMESTAMP;

UPDATE minute_sleep
SET sleep_date_new = TO_TIMESTAMP(
    sleep_date,
    'MM/DD/YYYY HH12:MI:SS AM'
);

-- Verify conversion

SELECT sleep_date, sleep_date_new
FROM minute_sleep
LIMIT 10;

-- Replace old column

ALTER TABLE minute_sleep
DROP COLUMN sleep_date;

ALTER TABLE minute_sleep
RENAME COLUMN sleep_date_new TO sleep_date;

-- Verify data type

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'minute_sleep'
  AND column_name = 'sleep_date';

-- minute_steps_narrow

ALTER TABLE minute_steps_narrow
ADD COLUMN activity_minute_new TIMESTAMP;

UPDATE minute_steps_narrow
SET activity_minute_new = TO_TIMESTAMP(
    activity_minute,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_minute, activity_minute_new
FROM minute_steps_narrow
LIMIT 5;

ALTER TABLE minute_steps_narrow DROP COLUMN activity_minute;

ALTER TABLE minute_steps_narrow
RENAME COLUMN activity_minute_new TO activity_minute;

-- minute_steps_wide

ALTER TABLE minute_steps_wide
ADD COLUMN activity_hour_new TIMESTAMP;

UPDATE minute_steps_wide
SET activity_hour_new = TO_TIMESTAMP(
    activity_hour,
    'MM/DD/YYYY HH12:MI:SS AM'
);

SELECT activity_hour, activity_hour_new
FROM minute_steps_wide
LIMIT 5;

ALTER TABLE minute_steps_wide DROP COLUMN activity_hour;

ALTER TABLE minute_steps_wide
RENAME COLUMN activity_hour_new TO activity_hour;

-- sleep_day

SELECT sleep_day
FROM sleep_day
LIMIT 10;

-- Add new DATE column

ALTER TABLE sleep_day
ADD COLUMN sleep_day_new DATE;

-- Convert TEXT → DATE
-- Extract only the date portion

UPDATE sleep_day
SET sleep_day_new = TO_DATE(
    SPLIT_PART(sleep_day, ' ', 1),
    'MM/DD/YYYY'
);

-- Verify

SELECT sleep_day, sleep_day_new
FROM sleep_day
LIMIT 10;

-- Replace old column

ALTER TABLE sleep_day
DROP COLUMN sleep_day;

ALTER TABLE sleep_day
RENAME COLUMN sleep_day_new TO sleep_day;

-- Verify data type

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'sleep_day'
  AND column_name = 'sleep_day';

-- weight_log

SELECT log_date
FROM weight_log
LIMIT 10;

-- Add new TIMESTAMP column

ALTER TABLE weight_log
ADD COLUMN log_date_new TIMESTAMP;

-- Convert TEXT → TIMESTAMP

UPDATE weight_log
SET log_date_new = TO_TIMESTAMP(
    log_date,
    'MM/DD/YYYY HH12:MI:SS AM'
);

-- Verify

SELECT log_date, log_date_new
FROM weight_log
LIMIT 10;

-- Replace old column

ALTER TABLE weight_log
DROP COLUMN log_date;

ALTER TABLE weight_log
RENAME COLUMN log_date_new TO log_date;

-- Verify data type

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'weight_log'
  AND column_name = 'log_date';

-- Check all 18 tables and record counts  

SELECT 'daily_activity' AS table_name, COUNT(*) AS records FROM daily_activity
UNION ALL
SELECT 'daily_calories', COUNT(*) FROM daily_calories
UNION ALL
SELECT 'daily_intensity', COUNT(*) FROM daily_intensity
UNION ALL
SELECT 'daily_steps', COUNT(*) FROM daily_steps
UNION ALL
SELECT 'heart_rate_seconds', COUNT(*) FROM heart_rate_seconds
UNION ALL
SELECT 'hourly_calories', COUNT(*) FROM hourly_calories
UNION ALL
SELECT 'hourly_intensities', COUNT(*) FROM hourly_intensities
UNION ALL
SELECT 'hourly_steps', COUNT(*) FROM hourly_steps
UNION ALL
SELECT 'minute_calories_narrow', COUNT(*) FROM minute_calories_narrow
UNION ALL
SELECT 'minute_calories_wide', COUNT(*) FROM minute_calories_wide
UNION ALL
SELECT 'minute_intensities_narrow', COUNT(*) FROM minute_intensities_narrow
UNION ALL
SELECT 'minute_intensities_wide', COUNT(*) FROM minute_intensities_wide
UNION ALL
SELECT 'minute_mets_narrow', COUNT(*) FROM minute_mets_narrow
UNION ALL
SELECT 'minute_sleep', COUNT(*) FROM minute_sleep
UNION ALL
SELECT 'minute_steps_narrow', COUNT(*) FROM minute_steps_narrow
UNION ALL
SELECT 'minute_steps_wide', COUNT(*) FROM minute_steps_wide
UNION ALL
SELECT 'sleep_day', COUNT(*) FROM sleep_day
UNION ALL
SELECT 'weight_log', COUNT(*) FROM weight_log
ORDER BY table_name;  

-- Check all date/time column data types

SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
AND (
       (table_name = 'daily_activity' AND column_name = 'activity_date')
    OR (table_name = 'daily_calories' AND column_name = 'activity_day')
    OR (table_name = 'daily_intensity' AND column_name = 'activity_day')
    OR (table_name = 'daily_steps' AND column_name = 'activity_day')
    OR (table_name = 'heart_rate_seconds' AND column_name = 'time')
    OR (table_name = 'hourly_calories' AND column_name = 'activity_hour')
    OR (table_name = 'hourly_intensities' AND column_name = 'activity_hour')
    OR (table_name = 'hourly_steps' AND column_name = 'activity_hour')
    OR (table_name = 'minute_calories_narrow' AND column_name = 'activity_minute')
    OR (table_name = 'minute_calories_wide' AND column_name = 'activity_hour')
    OR (table_name = 'minute_intensities_narrow' AND column_name = 'activity_minute')
    OR (table_name = 'minute_intensities_wide' AND column_name = 'activity_hour')
    OR (table_name = 'minute_mets_narrow' AND column_name = 'activity_minute')
    OR (table_name = 'minute_sleep' AND column_name = 'sleep_date')
    OR (table_name = 'minute_steps_narrow' AND column_name = 'activity_minute')
    OR (table_name = 'minute_steps_wide' AND column_name = 'activity_hour')
    OR (table_name = 'sleep_day' AND column_name = 'sleep_day')
    OR (table_name = 'weight_log' AND column_name = 'log_date')
)
ORDER BY table_name;

-- Final NULL check

SELECT
    'daily_activity' AS table_name,
    COUNT(*) AS total_records,
    COUNT(*) FILTER (WHERE id IS NULL) AS null_id
FROM daily_activity

UNION ALL

SELECT
    'daily_calories',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM daily_calories

UNION ALL

SELECT
    'daily_intensity',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM daily_intensity

UNION ALL

SELECT
    'daily_steps',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM daily_steps

UNION ALL

SELECT
    'heart_rate_seconds',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM heart_rate_seconds

UNION ALL

SELECT
    'hourly_calories',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM hourly_calories

UNION ALL

SELECT
    'hourly_intensities',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM hourly_intensities

UNION ALL

SELECT
    'hourly_steps',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM hourly_steps

UNION ALL

SELECT
    'minute_calories_narrow',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_calories_narrow

UNION ALL

SELECT
    'minute_calories_wide',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_calories_wide

UNION ALL

SELECT
    'minute_intensities_narrow',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_intensities_narrow

UNION ALL

SELECT
    'minute_intensities_wide',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_intensities_wide

UNION ALL

SELECT
    'minute_mets_narrow',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_mets_narrow

UNION ALL

SELECT
    'minute_sleep',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_sleep

UNION ALL

SELECT
    'minute_steps_narrow',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_steps_narrow

UNION ALL

SELECT
    'minute_steps_wide',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM minute_steps_wide

UNION ALL

SELECT
    'sleep_day',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM sleep_day

UNION ALL

SELECT
    'weight_log',
    COUNT(*),
    COUNT(*) FILTER (WHERE id IS NULL)
FROM weight_log

ORDER BY table_name;


-- SQL Analysis — Complete Queries

-- 1. Basic dataset overview

-- Total unique users

SELECT COUNT(DISTINCT id) AS total_users
FROM daily_activity;

-- Total activity records

SELECT COUNT(*) AS total_records
FROM daily_activity;

-- Date range

SELECT
    MIN(activity_date_new) AS start_date,
    MAX(activity_date_new) AS end_date
FROM daily_activity;

-- 2. Overall activity summary

SELECT
    ROUND(AVG(total_steps), 0) AS avg_steps,
    ROUND(AVG(total_distance), 2) AS avg_distance,
    ROUND(AVG(calories), 0) AS avg_calories
FROM daily_activity;

-- 3. Activity minutes summary

SELECT
    ROUND(AVG(very_active_minutes), 0) AS avg_very_active_minutes,
    ROUND(AVG(fairly_active_minutes), 0) AS avg_fairly_active_minutes,
    ROUND(AVG(lightly_active_minutes), 0) AS avg_lightly_active_minutes,
    ROUND(AVG(sedentary_minutes), 0) AS avg_sedentary_minutes
FROM daily_activity;

-- 4. Total activity by user

SELECT
    id,
    COUNT(*) AS active_days,
    SUM(total_steps) AS total_steps,
    ROUND(SUM(total_distance), 2) AS total_distance,
    SUM(calories) AS total_calories
FROM daily_activity
GROUP BY id
ORDER BY total_steps DESC;

-- 5. Average activity by user

SELECT
    id,
    ROUND(AVG(total_steps), 0) AS avg_daily_steps,
    ROUND(AVG(total_distance), 2) AS avg_daily_distance,
    ROUND(AVG(calories), 0) AS avg_daily_calories
FROM daily_activity
GROUP BY id
ORDER BY avg_daily_steps DESC;

--6. Daily activity trend

SELECT
    activity_date_new AS activity_date,
    ROUND(AVG(total_steps), 0) AS avg_steps,
    ROUND(AVG(total_distance), 2) AS avg_distance,
    ROUND(AVG(calories), 0) AS avg_calories
FROM daily_activity
GROUP BY activity_date_new
ORDER BY activity_date_new;

-- 7. Most active days

SELECT
    activity_date_new AS activity_date,
    ROUND(AVG(total_steps), 0) AS avg_steps
FROM daily_activity
GROUP BY activity_date_new
ORDER BY avg_steps DESC
LIMIT 10;

-- 8. Least active days

SELECT
    activity_date_new AS activity_date,
    ROUND(AVG(total_steps), 0) AS avg_steps
FROM daily_activity
GROUP BY activity_date_new
ORDER BY avg_steps
LIMIT 10;

-- 9. Activity level classification

SELECT
    id,
    activity_date_new AS activity_date,
    total_steps,
    CASE
        WHEN total_steps < 5000 THEN 'Sedentary'
        WHEN total_steps < 7500 THEN 'Low Active'
        WHEN total_steps < 10000 THEN 'Moderately Active'
        ELSE 'Highly Active'
    END AS activity_level
FROM daily_activity
ORDER BY id, activity_date_new;

-- 10. Count of activity levels

SELECT
    CASE
        WHEN total_steps < 5000 THEN 'Sedentary'
        WHEN total_steps < 7500 THEN 'Low Active'
        WHEN total_steps < 10000 THEN 'Moderately Active'
        ELSE 'Highly Active'
    END AS activity_level,
    COUNT(*) AS records
FROM daily_activity
GROUP BY activity_level
ORDER BY records DESC;

-- 11. Percentage of activity levels

SELECT
    activity_level,
    COUNT(*) AS records,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM (
    SELECT
        CASE
            WHEN total_steps < 5000 THEN 'Sedentary'
            WHEN total_steps < 7500 THEN 'Low Active'
            WHEN total_steps < 10000 THEN 'Moderately Active'
            ELSE 'Highly Active'
        END AS activity_level
    FROM daily_activity
) AS activity_data
GROUP BY activity_level
ORDER BY percentage DESC;

-- 12. Steps and calories relationship

SELECT
    CORR(total_steps, calories) AS steps_calories_correlation
FROM daily_activity;

-- 13. Distance and calories relationship

SELECT
    CORR(total_distance, calories) AS distance_calories_correlation
FROM daily_activity;

-- 14. Active vs sedentary minutes

SELECT
    ROUND(AVG(
        very_active_minutes
        + fairly_active_minutes
        + lightly_active_minutes
    ), 0) AS avg_active_minutes,
    ROUND(AVG(sedentary_minutes), 0) AS avg_sedentary_minutes
FROM daily_activity;

-- 15. Sleep analysis

SELECT
    COUNT(DISTINCT id) AS users_with_sleep_data,
    ROUND(AVG(total_minutes_asleep), 0) AS avg_minutes_asleep,
    ROUND(AVG(total_time_in_bed), 0) AS avg_minutes_in_bed
FROM sleep_day;

-- 16. Sleep duration in hours

SELECT
    id,
    ROUND(AVG(total_minutes_asleep) / 60.0, 2) AS avg_sleep_hours,
    ROUND(AVG(total_time_in_bed) / 60.0, 2) AS avg_time_in_bed_hours
FROM sleep_day
GROUP BY id
ORDER BY avg_sleep_hours DESC;

-- 17. Sleep vs steps

SELECT
    CORR(
        s.total_minutes_asleep,
        d.total_steps
    ) AS sleep_steps_correlation
FROM sleep_day s
JOIN daily_activity d
    ON s.id = d.id
    AND s.sleep_day = d.activity_date_new;
	
-- 18. Weight summary

SELECT
    COUNT(DISTINCT id) AS users_with_weight_data,
    ROUND(AVG(weight_kg), 2) AS avg_weight_kg,
    ROUND(AVG(bmi), 2) AS avg_bmi
FROM weight_log;

-- 19. Calories by day

SELECT
    activity_date_new AS activity_date,
    ROUND(AVG(calories), 0) AS avg_calories
FROM daily_activity
GROUP BY activity_date_new
ORDER BY activity_date_new;

-- 20. Final user-level summary

SELECT
    id,
    COUNT(*) AS active_days,
    ROUND(AVG(total_steps), 0) AS avg_steps,
    ROUND(AVG(total_distance), 2) AS avg_distance,
    ROUND(AVG(calories), 0) AS avg_calories,
    ROUND(AVG(sedentary_minutes), 0) AS avg_sedentary_minutes,
    ROUND(AVG(
        very_active_minutes
        + fairly_active_minutes
        + lightly_active_minutes
    ), 0) AS avg_active_minutes
FROM daily_activity
GROUP BY id
ORDER BY avg_steps DESC;

