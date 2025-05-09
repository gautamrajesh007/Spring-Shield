-- DROP DATABASE IF EXISTS spring_shield;
--
-- CREATE DATABASE spring_shield;

CREATE TABLE IF NOT EXISTS client (
    client_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),  -- or use uuid_generate_v4() if not using pgcrypto
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    secondary_email VARCHAR(255) NOT NULL,
    status BOOLEAN NOT NULL
);
