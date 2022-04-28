USE CaminoIgnaciano;

ALTER TABLE Poblacion
	NOCHECK CONSTRAINT FK_idEtapaPasa;

SET IDENTITY_INSERT Poblacion ON;

INSERT INTO Poblacion (idPoblacion, nombre, idEtapaPasa, posicion)
	VALUES  (15,'prueba quitar', NULL, NULL),(16,'Cabredo', 6, 2), (17, 'Laboplación', 6, 3), (18, 'Kripan', 6, 4), (19, 'Laguardia', NULL, NULL);

INSERT INTO Etapa(idEtapa, idPoblacionInicio, idPoblacionFin)
	VALUES (6, 15, 19); 

SET IDENTITY_INSERT Poblacion OFF;
ALTER TABLE Poblacion
	CHECK CONSTRAINT FK_idEtapaPasa;
SET IDENTITY_INSERT Alojamiento ON;

INSERT INTO Alojamiento (idAlojamiento, nombre, direccion, contacto, idPoblacion)
	VALUES  (6, 'Agroturismo Larretxori', 'Portal de Páganos s/n', '945600763', 19);
	
SET IDENTITY_INSERT Alojamiento OFF;



SET IDENTITY_INSERT Actividad ON;


INSERT INTO Actividad(idActividad, nombre, infoActividad, idEtapa)
	VALUES  (6, 'asdsad', 'dsada', 6);
	
SET IDENTITY_INSERT Actividad OFF;



SET IDENTITY_INSERT Pista ON;


INSERT INTO Pista(idPista, anotacion, peticion, reflexion, textos)
	VALUES  (6, 'dsdkaso', 'dksoadksoa', 'dksadoas', 'odkasdoa');
	
SET IDENTITY_INSERT Pista OFF;

INSERT INTO PistaEtapa(idPista, idEtapa)
	VALUES  (6,6);
	
SET IDENTITY_INSERT PuntoInteres ON;

INSERT INTO PuntoInteres(idPuntoInteres, nombrePtoInteres, idPoblacion)
	VALUES  (25, 'Fuente Vieja', 16), (26, 'Iglesia', 17), (27, 'Dolmen', 18), (28, 'Plaza mayor', 19), (29, 'Iglesia de Santa María', 19);
SET IDENTITY_INSERT PuntoInteres OFF;

INSERT INTO InfoViaje(fechaInicio, fechaFin)
	VALUES  ('2023-1-16', '2032-4-09');