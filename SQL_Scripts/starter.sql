-- DROP DATABASE IF EXISTS spring_shield;
--
-- CREATE DATABASE spring_shield;

CREATE TABLE IF NOT EXISTS client (
    client_id UUID PRIMARY KEY DEFAULT gen_random_uuid() UNIQUE,  -- or use uuid_generate_v4() if not using pgcrypto
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    secondary_email VARCHAR(255) NOT NULL,
    status BOOLEAN NOT NULL
);

INSERT INTO client (email, password, first_name, middle_name, last_name, secondary_email, status)
VALUES
('alice.johnson@example.com', 'Pass@1234', 'Alice', 'Marie', 'Johnson', 'alice.secondary@example.com', true),
('bob.smith@example.com', 'BobSecure#1', 'Bob', 'Edward', 'Smith', 'bob.alt@example.com', true),
('carol.davis@example.com', 'Car0lPass!', 'Carol', NULL, 'Davis', 'carol.davis2@example.com', false),
('david.martin@example.com', 'Dav!d2024', 'David', 'Lee', 'Martin', 'dmartin.alt@example.com', true),
('emily.brown@example.com', 'Em1ly@456', 'Emily', 'Anne', 'Brown', 'ebrown@example.com', true),
('frank.moore@example.com', 'Frank#789', 'Frank', NULL, 'Moore', 'frank.m.alt@example.com', false),
('grace.taylor@example.com', 'Gr@ceSecure', 'Grace', 'Elise', 'Taylor', 'gracetaylor.alt@example.com', true),
('henry.wilson@example.com', 'HenrY12#', 'Henry', 'Joseph', 'Wilson', 'hwilson@example.com', true),
('isla.thomas@example.com', 'Isla!987', 'Isla', NULL, 'Thomas', 'isla.thomas2@example.com', false),
('jack.white@example.com', 'Jack@321!', 'Jack', 'Oliver', 'White', 'jack.secondary@example.com', true);
