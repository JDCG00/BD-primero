/*
    Carretero Granado Juan Diego 
    Inserción de datos
*/

USE camino_ignaciano;

--Fila poblaciones
SET IDENTITY_INSERT poblaciones ON  --Se activa el identity, que permite insertar valores específicos en la tabla poblaciones
INSERT INTO poblaciones VALUES (16,'Cabredo', 6, 2), (17, 'Laboplación', 6, 3), (18, 'Kripan', 6, 4), (19, 'Laguardia', NULL, NULL);
SET IDENTITY_INSERT poblaciones OFF --Se desactiva el identity

SET IDENTITY_INSERT etapas ON --Permite insertar valores específicos en la tabla etapas
--Filas etapas
INSERT INTO etapas VALUES(6, 15, 19);
SET IDENTITY_INSERT etapas OFF --Se desactiva el identity

--Fila actividad
SET IDENTITY_INSERT actividad ON --Se activa el identity, que permite insertar valores específicos en la tabla actividad
INSERT INTO actividad VALUES(6, 'asdsad', 'dsada', 6);
SET IDENTITY_INSERT actividad OFF --Se desactiva el identity

--Fila puntos de interés
SET IDENTITY_INSERT puntoInteres ON --Se activa el identity, que permite insertar valores específicos en la tabla puntoInteres
INSERT INTO puntoInteres VALUES(25, 'Fuente Vieja', 16), (26, 'Iglesia', 17), (27, 'Dolmen', 18), (28, 'Plaza mayor', 19), (29, 'Iglesia de Santa María', 19);
SET IDENTITY_INSERT puntoInteres OFF --Se desactiva el identity

--Fila de alojamiento(se coge como el alojamiento el de la última población)
SET IDENTITY_INSERT alojamiento ON --Se activa el identity, que permite insertar valores específicos en la tabla alojamiento
INSERT INTO alojamiento VALUES(6, 'Agroturismo Larretxori', 'Portal de Páganos s/n', '945600763', 19);
SET IDENTITY_INSERT alojamiento OFF --Se desactiva el identity

--Fila de pista
SET IDENTITY_INSERT pista ON --Se activa el identity, que permite insertar valores específicos en la tabla pista
INSERT INTO pista VALUES(6, 'dsdkaso', 'dksoadksoa', 'dksadoas', 'odkasdoa');
SET IDENTITY_INSERT pista OFF --Se desactiva el identity

--Fila de pista etapa
INSERT INTO pista_etapa VALUES(6,6);
--Fila de información de viaje
INSERT INTO infoViaje VALUES(GETDATE(), GETDATE());