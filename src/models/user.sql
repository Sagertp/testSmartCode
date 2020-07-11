CREATE DATABASE smartcode;

USE smartcode;

CREATE TABLE tipo_usuario (
  id_tipo_usuario int NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_tipo_usuario)
);

CREATE TABLE usuarios (
  id_usuario int NOT NULL AUTO_INCREMENT,
  id_tipo_usuario int NOT NULL,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(200) NOT NULL,
  pass VARCHAR(200) NOT NULL,
  PRIMARY KEY (id_usuario),
  FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario (id_tipo_usuario)
);

CREATE TABLE ticket (
  id_ticket int NOT NULL AUTO_INCREMENT,
  id_usuario int NOT NULL,
  ticket_pedido VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_ticket),
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

INSERT INTO tipo_usuario (id_tipo_usuario, nombre) VALUES (1, "administrador"), (2, "usuario");
INSERT INTO usuarios (id_usuario, id_tipo_usuario, email, nombre, pass) VALUES
(1, 1, "sagertp@gmail.com", "saget perez", "1qazxsw2*-"),
(2, 2, "sagertp@gmail.com", "Kenyuri Camino", "1qazxsw2*-");