/*Creación base de datos*/

USE master;

DROP DATABASE IF EXISTS camino_ignaciano;

CREATE DATABASE camino_ignaciano;

USE camino_ignaciano;

/* Creación tabla Poblaciones */
CREATE TABLE poblaciones (
    idPoblacion smallint not null primary key identity,
    nombre varchar(60) not null unique,
    idEtapaPasa tinyint null,
    posicion tinyint null
);
/* Creación tabla Etapas */
CREATE TABLE etapas (
    idEtapa tinyint not null primary key identity,
    idPoblacionInicio smallint not null unique,
    idPoblacionFin smallint not null unique,
    check(idPoblacionInicio!=idPoblacionFin),
    CONSTRAINT Fk_idPoblacionInicio FOREIGN KEY (idPoblacionInicio) REFERENCES poblaciones(idPoblacion),
    CONSTRAINT Fk_idPoblacionFin FOREIGN KEY (idPoblacionFin) REFERENCES poblaciones(idPoblacion)
);
/* Clave ajena de la tabla poblaciones */
ALTER TABLE poblaciones ADD CONSTRAINT Fk_idEtapaPasa FOREIGN KEY (idEtapaPasa) REFERENCES etapas(idEtapa);
/* Creación tabla Actividad */
CREATE TABLE actividad (
    idActividad tinyint not null primary key identity,
    nombre varchar(50) not null,
    infoActividad varchar(1000) not null,
    idEtapa tinyint not null,
    CONSTRAINT Fk_idEtapa FOREIGN KEY (idEtapa) REFERENCES etapas(idEtapa)
);
/* Creación tabla Puntos de Interés */
CREATE TABLE puntoInteres (
    idPuntosInteres smallint not null primary key identity,
    nombrePtoInteres varchar(60) not null,
    idPoblacion smallint not null,
    CONSTRAINT Fk_idPoblacion FOREIGN KEY (idPoblacion) REFERENCES poblaciones(idPoblacion) ON DELETE CASCADE
);
/* Creación tabla Alojamientos */
CREATE TABLE alojamiento (
    idAlojamiento tinyint not null primary key identity,
    nombre varchar(60) not null unique,
    direccion varchar(100) not null,
    contacto varchar(200) not null,
    idPoblacion smallint not null,
    CONSTRAINT Fk_idPoblacion2 FOREIGN KEY (idPoblacion) REFERENCES poblaciones(idPoblacion)
);
/* Creación tabla Pista */
CREATE TABLE pista (
    idPista tinyint not null primary key identity,
    anotacion varchar(1000) not null,
    peticion varchar(1000) null,
    reflexion varchar(1000) not null,
    textos varchar(1000) not null
);
/* Creación tabla Pista Etapa */
CREATE TABLE pista_etapa (
    idPista tinyint not null primary key,
    idEtapa tinyint not null,
    CONSTRAINT Fk_idPista FOREIGN KEY (idPista) REFERENCES pista(idPista) ON DELETE CASCADE,
    CONSTRAINT Fk_idEtapa2 FOREIGN KEY (idEtapa) REFERENCES etapas(idEtapa)
);
/* Creación tabla InfoViaje */
CREATE TABLE infoViaje (
    fechaInicio date not null,
    fechaFin date not null
);