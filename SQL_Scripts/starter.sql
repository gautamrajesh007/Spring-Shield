-- DROP DATABASE IF EXISTS spring_shield;
--
-- CREATE DATABASE spring_shield;

CREATE TABLE client_details (
    id BIGSERIAL,
    first_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    status BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE client (
    client_id UUID DEFAULT gen_random_uuid() UNIQUE,
    client_detail_id INTEGER NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (client_id),
    FOREIGN KEY (client_detail_id) REFERENCES client_details(id)
);
