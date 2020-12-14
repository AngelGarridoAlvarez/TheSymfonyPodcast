CREATE DATABASE IF NOT EXISTS The_Simfony_Podcast;
USE The_Simfony_Podcast;

CREATE TABLE IF NOT EXISTS users(
id                  int(255) auto_increment not null,
name                varchar(100),
email               varchar(200),
password            varchar(200),
created_at          datetime,
CONSTRAINT  pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO users VALUES (NULL, 'Ángel Developer', 'contacto@angeldeveloper.es','password',CURRENT_TIME());
INSERT INTO users VALUES (NULL, 'Rioger López', 'meloinvento@doctaforum.com','password',CURRENT_TIME());
INSERT INTO users VALUES (NULL, 'El Sabio', 'angel@valeMucho.net','password',CURRENT_TIME());

CREATE TABLE IF NOT EXISTS podcasts(
id                  int(255) auto_increment not null,
user_id             int(255) not null,
title               varchar(200),
description         text,
file                varchar(300),
duration            int(200),
created_at          datetime,
CONSTRAINT  pk_podcast PRIMARY KEY(id),
CONSTRAINT  fk_podcast_users FOREIGN KEY(user_id) REFERENCES users(id)
)ENGINE=InnoDb

INSERT INTO podcast VALUES (NULL, 1, '¿Por qué me debes contratar?', 'Buenas razones que deberías escuchar con atención', 'direccióndelarchivo1', 90, CURRENT_TIME());
INSERT INTO podcast VALUES (NULL, 2, 'Te vas a ganar que te contratemos', 'Tienes que currártelo un poquito más', 'direccióndelarchivo2', 60, CURRENT_TIME());
INSERT INTO podcast VALUES (NULL, 3, 'Lo estás haciendo bien', 'Se lo va  a currar y se va a ganar que lo contratéis', 'direccióndelarchivo3', 60, CURRENT_TIME());

