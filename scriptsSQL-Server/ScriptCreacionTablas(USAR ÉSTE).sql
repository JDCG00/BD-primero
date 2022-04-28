USE CaminoIgnaciano;

CREATE TABLE Poblacion(
	idPoblacion smallint NOT NULL PRIMARY KEY IDENTITY,
	nombre varchar(60) NOT NULL,
	posicion tinyint NULL,
	idEtapaPasa tinyint NULL, 
	CONSTRAINT Check_Posicion CHECK(posicion>1) 
);

CREATE UNIQUE INDEX CSU_npoblacion
	ON Poblacion (nombre);

CREATE TABLE Etapa(
	idEtapa tinyint NOT NULL PRIMARY KEY,
	idPoblacionInicio smallint NOT NULL UNIQUE, 
	idPoblacionFin smallint NOT NULL UNIQUE, 
	CONSTRAINT FK_PoblacionInicio FOREIGN KEY (idPoblacionInicio) REFERENCES Poblacion(idPoblacion), 
	CONSTRAINT FK_PoblacionFin FOREIGN KEY (idPoblacionFin) REFERENCES Poblacion(idPoblacion),
	CHECK (idEtapa>0)
);

ALTER TABLE Poblacion
	ADD CONSTRAINT FK_idEtapaPasa FOREIGN KEY (idEtapaPasa) REFERENCES Etapa(idEtapa);
	
CREATE TABLE PuntoInteres(
	idPuntoInteres smallint NOT NULL PRIMARY KEY IDENTITY,
	nombrePtoInteres varchar(60),
	idPoblacion smallint NOT NULL,
	CONSTRAINT FK_idPoblacion FOREIGN KEY (idPoblacion) REFERENCES Poblacion(idPoblacion)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
	
CREATE TABLE Alojamiento(
	idAlojamiento tinyint NOT NULL PRIMARY KEY IDENTITY,
	nombre varchar(60) NOT NULL,
	direccion varchar(100) NOT NULL UNIQUE,
	contacto varchar(200) NOT NULL,
	idPoblacion smallint NOT NULL UNIQUE,
	CONSTRAINT FK_idPoblacion_Alojamiento FOREIGN KEY (idPoblacion) REFERENCES Poblacion(idPoblacion)
);

CREATE TABLE Actividad(
	idActividad tinyint NOT NULL PRIMARY KEY IDENTITY,
	nombre varchar(50) NOT NULL,
	infoActividad varchar(1000) NOT NULL,
	idEtapa tinyint NOT NULL UNIQUE,
	CONSTRAINT FK_idEtapa FOREIGN KEY (idEtapa) REFERENCES Etapa(idEtapa)
);

CREATE TABLE Pista(
	idPista tinyint NOT NULL PRIMARY KEY IDENTITY,
	anotacion varchar(1000) NOT NULL,
	peticion varchar(1000) NULL,
	reflexion varchar(1000) NOT NULL,
	textos varchar(1000) NOT NULL
);

CREATE TABLE PistaEtapa(
	idPista tinyint NOT NULL PRIMARY KEY, 
	idEtapa tinyint NOT NULL UNIQUE,
    CONSTRAINT ClaveAjena_idPista_pistaetapa FOREIGN KEY (idPista)REFERENCES Pista(idPista) 
	ON DELETE CASCADE ON UPDATE CASCADE,	
	CONSTRAINT ClaveAjena_idEtapa_pistaetapa FOREIGN KEY (idEtapa) REFERENCES Etapa(idEtapa)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE InfoViaje(
	fechaInicio date NOT NULL,
	fechaFin date NOT NULL,
	CONSTRAINT Check_fechas CHECK (fechaFin>fechaInicio)
);

ALTER TABLE etapa
	ADD CHECK (idPoblacionInicio<>idPoblacionFin); 