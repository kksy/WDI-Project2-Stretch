CREATE DATABASE stretchapp;

\c stretchapp

CREATE TABLE stretches
(
	id SERIAL4 PRIMARY KEY,
	task VARCHAR(200) NOT NULL,
	stretch_type_id INTEGER,
	created_by INTEGER DEFAULT 0
);

CREATE TABLE stretch_types
(
	id SERIAL4 PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

CREATE TABLE users
(
	id SERIAL4 PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(200) NOT NULL,
	password_digest VARCHAR(200) NOT NULL
);

CREATE TABLE entries
(
	id SERIAL4 PRIMARY KEY,
	user_id INTEGER NOT NULL,
	stretch_id INTEGER NOT NULL,
	post VARCHAR(500),
	image_url VARCHAR(200),
	status VARCHAR(100) NOT NULL DEFAULT 'PENDING',
	date_created DATE NOT NULL DEFAULT CURRENT_DATE,
	times_liked INTEGER DEFAULT 0
);