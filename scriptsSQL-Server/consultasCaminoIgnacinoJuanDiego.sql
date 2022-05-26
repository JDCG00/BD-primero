/*Juan Diego Carretero Granado*/

/* Ver a que poblacion pertenece el alojamiento */
select Alojamiento.nombre, Poblacion.nombre from Alojamiento inner join Poblacion on Alojamiento.idPoblacion = Poblacion.idPoblacion;

/*Ver los puntos de interes de cada población*/
select nombre, nombrePtoInteres from PuntoInteres inner join Poblacion on PuntoInteres.idPoblacion = Poblacion.idPoblacion;

/*Sacar por que población de inicio y que población de fin pasa cada etapa*/
select idEtapa, PI.nombre as 'Poblacion Inicio', PF.nombre as 'Poblacion Fin' from Etapa inner join Poblacion PI on Etapa.idPoblacionInicio = PI.idPoblacion inner join Poblacion PF on Etapa.idPoblacionFin = PF.idPoblacion;


/* Ver que actividad se realiza en cada etapa*/
select nombre, idEtapa from Actividad;

/*Saber que poblaciones se repiten en el punto de interés*/
select nombre, count(PuntoInteres.idPoblacion) AS 'Poblaciones que se repiten en el Punto de Interes'  from PuntoInteres inner join Poblacion on PuntoInteres.idPoblacion = Poblacion.idPoblacion
group by nombre;