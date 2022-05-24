CREATE DATABASE Ventas;
USE Ventas;

CREATE TABLE cliente (
  id INT identity PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  ciudad VARCHAR(100),
  categoría INT
);

CREATE TABLE comercial (
  id INT identity PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  comisión FLOAT
);

CREATE TABLE pedido (
  id INT identity PRIMARY KEY,
  total FLOAT NOT NULL,
  fecha DATE,
  id_cliente INT NOT NULL,
  id_comercial INT NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id),
  FOREIGN KEY (id_comercial) REFERENCES comercial(id)
);


INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Aarón', 'Rivero', 'Gómez', 'Almería', 100);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Adela', 'Salas', 'Díaz', 'Granada', 200);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Adolfo', 'Rubio', 'Flores', 'Sevilla', NULL);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Adrián', 'Suárez', NULL, 'Jaén', 300);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Marcos', 'Loyola', 'Méndez', 'Almería', 200);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('María', 'Santana', 'Moreno', 'Cádiz', 100);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Pilar', 'Ruiz', NULL, 'Sevilla', 300);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Pepe', 'Ruiz', 'Santana', 'Huelva', 200);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Guillermo', 'López', 'Gómez', 'Granada', 225);
INSERT INTO cliente (nombre, apellido1, apellido2, ciudad, categoría) VALUES('Daniel', 'Santana', 'Loyola', 'Sevilla', 125);


INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Daniel', 'Sáez', 'Vega', 0.15);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Juan', 'Gómez', 'López', 0.13);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Diego','Flores', 'Salas', 0.11);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Marta','Herrera', 'Gil', 0.14);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Antonio','Carretero', 'Ortega', 0.12);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Manuel','Domínguez', 'Hernández', 0.13);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Antonio','Vega', 'Hernández', 0.11);
INSERT INTO comercial (nombre, apellido1, apellido2, comisión) VALUES('Alfredo','Ruiz', 'Flores', 0.05);


INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(150.5, '2017-10-05', 5, 2);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(270.65, '2016-09-10', 1, 5);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(65.26, '2017-10-05', 2, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(110.5, '2016-08-17', 8, 3);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(948.5, '2017-09-10', 5, 2);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(2400.6, '2016-07-27', 7, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(5760, '2015-09-10', 2, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(1983.43, '2017-10-10', 4, 6);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(2480.4, '2016-10-10', 8, 3);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(250.45, '2015-06-27', 8, 2);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(75.29, '2016-08-17', 3, 7);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(3045.6, '2017-04-25', 2, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(545.75, '2019-01-25', 6, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(145.82, '2017-02-02', 6, 1);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(370.85, '2019-03-11', 1, 5);
INSERT INTO pedido (total, fecha, id_cliente, id_comercial) VALUES(2389.23, '2019-03-11', 1, 5);