-- DROP DATABASE IF EXISTS spring_shield;
--
-- CREATE DATABASE spring_shield;

CREATE TABLE IF NOT EXISTS users (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid() UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS user_details (
    user_id UUID PRIMARY KEY UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    secondary_email VARCHAR(255) NOT NULL,
    status BOOLEAN NOT NULL,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS role (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() UNIQUE,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS permission (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() UNIQUE,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS role_permissions (
    role_id UUID NOT NULL UNIQUE,
    permission_id UUID NOT NULL,
    PRIMARY KEY (role_id, permission_id),
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    FOREIGN KEY (permission_id) REFERENCES permission(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS user_roles (
    user_id UUID NOT NULL UNIQUE,
    role_id UUID NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE
);

-- INSERT INTO client (email, password, first_name, middle_name, last_name, secondary_email, status)
-- VALUES
-- ('alice.johnson@example.com', 'Pass@1234', 'Alice', 'Marie', 'Johnson', 'alice.secondary@example.com', true),
-- ('bob.smith@example.com', 'BobSecure#1', 'Bob', 'Edward', 'Smith', 'bob.alt@example.com', true),
-- ('carol.davis@example.com', 'Car0lPass!', 'Carol', NULL, 'Davis', 'carol.davis2@example.com', false),
-- ('david.martin@example.com', 'Dav!d2024', 'David', 'Lee', 'Martin', 'dmartin.alt@example.com', true),
-- ('emily.brown@example.com', 'Em1ly@456', 'Emily', 'Anne', 'Brown', 'ebrown@example.com', true),
-- ('frank.moore@example.com', 'Frank#789', 'Frank', NULL, 'Moore', 'frank.m.alt@example.com', false),
-- ('grace.taylor@example.com', 'Gr@ceSecure', 'Grace', 'Elise', 'Taylor', 'gracetaylor.alt@example.com', true),
-- ('henry.wilson@example.com', 'HenrY12#', 'Henry', 'Joseph', 'Wilson', 'hwilson@example.com', true),
-- ('isla.thomas@example.com', 'Isla!987', 'Isla', NULL, 'Thomas', 'isla.thomas2@example.com', false),
-- ('jack.white@example.com', 'Jack@321!', 'Jack', 'Oliver', 'White', 'jack.secondary@example.com', true);
