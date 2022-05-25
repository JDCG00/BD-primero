USE CaminoIgnaciano;
INSERT INTO InfoViaje VALUES
	('2022-07-01', '2022-07-06');
ALTER TABLE Poblacion
	NOCHECK CONSTRAINT FK_idEtapaPasa
INSERT INTO Poblacion (nombre, idEtapaPasa, posicion)
	VALUES  ('Loyola', NULL, NULL),
			('Azkoitia',1,2),('Aizpurutxo',1,3),('Urretxu',1,4),('Zumárraga',NULL,NULL),
      ('Legazpi',2,2),('Brinkola',2,3),('Arantzazu',NULL,NULL),('Araia',NULL,NULL),
      ('Albeniz',4,2),('San Roman',4,3),('Alda',NULL,NULL),
      ('San Vicente de Arana',5,2),('Orbiso',5,3),('Genevilla',NULL,NULL),
      ('Cabredo',6,2),('Lapoblacion',6,3),('Kripan',6,4),('Laguardia',NULL,NULL),
      ('Laprueba de Labarca',7,2),('Fuenmayor',7,3),('Navarrete',NULL,NULL),
      ('La Grajera',8,2),('Logroño',NULL,NULL),
      ('Varea',9,2),('Recajo',9,3),('Agoncillo',9,4),('Arrubal',9,5),('Ermita de Aradón',9,6),('Alcanadre',NULL,NULL),
      ('Cruce carretera N-123',10,2),('Puente sobre el tren',10,3),('Calahorra',NULL,NULL),
      ('Rincón de Soto',11,2),('Alfaro',NULL,NULL),
      ('Castejón',12,2),('Cruce ferrocarril',12,3),('Tudela',NULL,NULL),
      ('El Bocal',13,2),('Ribaforrada',13,3),('Cortes',13,4),('Mallén',13,5),('Salorino',13,6),('Gallur',NULL,NULL),
      ('Luceni',14,2),('Alcalá de Ebro',14,3),('Cabañas de Ebro',14,4),('Pozo',14,5),('Alagón',NULL,NULL),
      ('Torres de Berrellén',15,2),('Sobradiel',15,3),('Utebo',15,4),('Monzalbarba',15,5),('Gran nudo de autopistas',15,6),('Silva',15,7),('Zaragoza',NULL,NULL),
      ('Cartuja Baja',16,2),('Burgo de Ebro',16,3),('Fuentes de Ebro',NULL,NULL),
      ('Pina de Ebro',17,2),('Venta de Santa Lucia',NULL,NULL),
      ('Gasolinera',18,2),('Bujaraloz',NULL,NULL),
      ('Peñalba',19,2),('Candasnos',NULL,NULL),
      ('Gasolinera de Candasnos',20,2),('Fraga',NULL,NULL),
      ('Camino Real',21,2),('Alcarràs',21,3),('Butsènit',21,4),('Lleida',NULL,NULL),
      ('Bell-lloc',22,2),('El Palau d Anglesola',NULL,NULL),
      ('Castellnou',23,2),('Bellpuig',23,3),('Verdú',NULL,NULL),
      ('Tárrega',24,2),('El Talladel',24,3),('Fonolleres',24,4),('La Curullada',24,5),('Cervera',NULL,NULL),
      ('Pallerols',25,2),('Panadella',25,3),('Santa María del Camí',25,4),('Jorba',25,5),('Igualada',NULL,NULL),
      ('Castellolí',26,2),('Can Massana',26,3),('Montserrat',NULL,NULL);
INSERT INTO Etapa(idEtapa, idPoblacionInicio, idPoblacionFin)
	VALUES (1,1,5),(2,5,8),(3,8,9),(4,9,12),(5,12,15),(6,15,19),(7,19,22),(8,22,24),(9,24,30),(10,30,33),(11,33,35),(12,35,38),
  (13,38,44),(14,44,49),(15,49,56),(16,56,59),(17,59,61),(18,61,63),(19,63,65),(20,65,67),(21,67,71),(22,71,73),(23,73,76),(24,76,81),
  (25,81,86),(26,86,89);
ALTER TABLE Poblacion
	CHECK CONSTRAINT FK_idEtapaPasa; 
INSERT INTO Alojamiento (nombre, direccion, contacto, idPoblacion)
	VALUES  ('Pensión Zelai','Legazpi Kalea, 5, 20700', '670264922',5),
          ('Hotel Sindika','Aránzazu','h.sindika@hotmail.com',8),
          ('Hotel Andamur','Carretera N-I Pension El Ventorro','945314783',9),
          ('Casa Rural Biltegi Etxea','Carretera,3','656762793',12),
          ('Casa rural Ibernalo','ermita de Nuestra Señora de Ibernalo','647911484',15),
          ('Casa Rural Legado de Udarte','Laguardia','699621841',19),
          ('Albergue Buen Camino','C/ La Cruz,2','681252222',22),
          ('Albergue de peregrinos','C/Rua vieja,32','941248686',24),
          ('Hostal Cedipsa','Carretera de la Estación','948693183',30),
          ('Albergue de Juventud','Paseo de las Bolas','941105071',33),
          ('Albergue de Peregrinos','Paseo de la Florida','666041958',35),
          ('Hotel Tudela Bardenas***','Avenida de Zaragoza,60','948410802',38),
          ('Albergue de peregrinos','junto a la estación de tren','876611479',44),
          ('Pensión Jarea','Méndez Núñez 45','629489776',49),
          ('Albergue Juvenil Baltasar Gracián','C/ Franco y López','976306690',56),
          ('Hostal San Miguel','Calle de Trinque 8','976169071',59),
          ('Venta de Santa Lucía','Pina de Ebro','976162001',61),
          ('Hotel las Sabinas','calle bujaraloz','976179328',63),
          ('Hotel Cruzanzana', 'N II Km412 - 22591', '974463044',65),
          ('Casa Rural El Balsetón','c/Carmen 24','649545450',67),
          ('Hotel Goya', 'c/ Alcalde Costa 9', '973266788',71),
          ('Pensión Sant Antoni ','C/ Sant Antoni,7','973602158',73),
          ('Hostal Agustín Martín Mingot', 'Av. Catalunya , 32','973320076',76),
          ('Pension Aguila','Calle General','999999999',81),
          ('Hotel América***','Av. del Maestre Montanar 44-45','93803100',86),
          ('Hotel Abad Cisneros***','Montserrat','938777701',89);
INSERT INTO Actividad(nombre, infoActividad, idEtapa)
	VALUES  ('Piragüismo', 'Se alquilarán una cantidad de piraguas
				en el pequeño embarcadero de Zumárraga y se hará una pequeña
				ruta por el Río Urola', 1),
        ('Kayak','1 Hora de kayak por un rio',2),
        ('Escalada','Escalada llegando a la llanura de Zumarrundi',3),
        ('Senderismo','Caminata por los montes',4),
        ('Meditación','Reflexionaremos en voz alta',5),
        ('Estiramientos','Haremos estiramientos para relajar el alma',6),
        ('Ciclismo','Montaremos en bici en esta ruta',7),
        ('Yoga','Adoptaremos posturas yoga para experimentar los beneficios',8),
        ('Patinaje','Haremos actividades de patines',9),
        ('Verde Gymkana','Actividad de gymkana con recorrido por los maravillosos paisajes y lugares emblemáticos',10),
        ('Poesia Ignaciana','Concurso de poesías',11),
        ('Concurso de parchis','Jugaremos parchis despues de comer',12),
        ('Pelota','Diferentes juegos con pelota',13),
        ('Senderismo','Recorreremos la zona de Cabañas del Ebro',14),
        ('Senderismo','Caminata por el camino real',15),
        ('Preguntas','En esta actividad haremos preguntas a los jugadores sobre San Ignacio',16),
        ('Espacio Joven Fuentes de Ebro','Es un lugar de la localidad cuya finalidad es realizar actividades para los jovenes',17),
        ('Meditacion','Reflexionaremos sobre las etapas ya realizadas',18),
        ('Piscina municipal','Pasar la tarde en la piscina municipal para realizar actividades de natación',19),
        ('Ruta en bicicleta','Se hará una ruta en bicicleta',20),
        ('Senderismo','Se realizará una ruta adicional',21),
        ('Ciciclismo','Se saldrá a dar un pase en bici',22),
        ('Motocross','Motocross en el Circuito de Catalunya situado en Bellpuig',23),
        ('Juego Libre','Desarrollo de actividad con tematica libre',24),
        ('Relatos','Al final de la etapa, reunirse con los alumnos para contar relatos e historias de la vida de San Ignacio',25),
        ('Degustación','Concurso de comida y degustacion',26);
INSERT INTO Pista(anotacion, peticion, reflexion, textos)
	VALUES  ('Iniciamos nuestro camino, de forma suave, pero entrando ya en materia.',

			  'Deseo, Señor, concédeme la gracia de experimentar
			  tu Amor en mi vida, con una profunda acción de gracias.',

			  'La espiritualidad consiste en «hacer un viaje a través de la
			  vida, convirtiéndolo en un camino hacia Dios.» Así deseamos transformar
			  nuestro viaje por España en un itinerario espiritual.',

			  'Salmo 63. Respondo a Dios, expresando mi deseo de encontrarme con Él.'),

        ('Insistimos en la oración preparatoria, objetivo fundamental de nuestra peregrinación interior.
        Recordamos que si se encuentra “fondo” en alguna palabra o en algún momento, es mejor no pasar adelante,
        sino quedarse en ese espacio espiritual, dejando que su profundidad nos sacie',

        'Señor, concédeme la gracia de sentir y gustar internamente tu Amor en mi vida,
        con una profunda acción de gracias.',

        '¿Por qué no ofrecer esos momentos y todas esas personas a Dios
        y dar gracias a todos por ser Sus manos y Sus brazos?',

        '¿Por qué no ofrecer esos momentos y todas esas personas a Dios y
        dar gracias a todos por ser Sus manos y Sus brazos?'),

        ('Insistimos en dedicar un buen tiempo a meditar sobre la oración preparatoria.
        Recordemos que, como dice Ignacio, “sentir y gustar interiormente” es más importante que el mucho saber.
        No tengamos prisa. Hoy entramos en la meditación de nuestro Principio y Fundamento.
        Consideramos el Fin para el cual hemos sido creados. Una visión global que concretaremos más adelante.',

        'Señor, concédeme la gracia de sentir internamente tu Amor en mi vida, con una profunda acción de gracias.
        Ayúdame a descubrir el fundamento de mi vida según tu deseo.',

        '¿Qué personas, lugares o momentos han tenido un papel destacado y ayudaron a moldear la persona que soy hoy? ',

        'Oseas 11,1-9. Su amor por mí es un amor lleno de ternura.'),

        ('Insistimos en dedicar un buen tiempo a meditar sobre la oración preparatoria.
        Recordemos que “sentir y gustar interiormente” es más importante que saber mucho, por eso, no hemos de tener prisa.
        Hoy seguimos con la consideración de nuestro Principio y Fundamento.',

        'Te ruego, Señor, que todas mis acciones sean inspiradas por ti, y llevadas a cabo con ayuda de tu gracia,
         que todas mis intenciones y operaciones siempre tengan comienzo en Ti y por Ti se terminen felizmente.',

        'Cuál es el propósito de nuestro peregrinar por este mundo? ',

        'Salmo 104. El Dios que me llama es el Dios que me creó y que hizo todo lo demás, por amor, porque me amó.'),

        ('Ya sabemos que es muy importante reflexionar sobre la oración introductoria. Recordamos también que no debemos tener prisa en pasar de una cosa a otra.
        Hoy queremos considerar los “medios” que emplea nuestro Dios para comunicarnos su amor, y el uso que debemos hacer de estos “medios”.',

        'Te ruego, Señor, que todas mis acciones sean inspiradas por ti, y llevadas a cabo con ayuda de tu gracia; que todas mis intenciones y operaciones siempre tengan comienzo en Ti,
        y por Ti se terminen felizmente.',

        'Hoy dedicaremos más tiempo a reflexionar sobre esta frase de Ignacio en los Ejercicios: «las otras cosas sobre la haz de la tierra son criadas para el hombre,
        y para que le ayuden en la prosecución del fin para que es criado.»',

        'Salmo 8. ¿Qué es un frágil ser humano para que Tu seas tan consciente de él?'),

        ('¿Qué es ser hoy un compañero de Jesús?',

        'Consciente del fin para el que fui creado y de la vocación a la
        que Dios me invita, te ruego, Señor Jesús, me concedas comprender en profundidad la presencia en mi del pecado
        y de mis tendencias desordenadas, para que sintiendo vergüenza y confusión,
        pueda obtener la curación y el perdón.',

        'Hemos estado reflexionando sobre el plan de Dios para la humanidad, la armonía
        que se produce cuando nuestras relaciones con otras personas y el mundo están bien ordenadas.',

        'Jeremías 18,1-10. La vasija de barro que trabajaba el alfarero se echó a perder en sus manos y modeló otra vasija.'),

      ('Seguimos en la consideración de la presencia del mal en nuestras vidas, pero hoy de forma más personal.
        Buscamos tomar conciencia de nuestras faltas e Ignacio nos aconseja experimentar de nuevo un “día triste”,
        al descubrir la realidad del pecado en nuestra vida. Mantengamos ese ambiente apesadumbrado durante la meditación,
        para ayudarnos a entrar mejor en esta consideración del mal que yo hago.',

        'Consciente del fin para el que fui creado y de la vocación a la que Dios me invita, te ruego, Señor Jesús,
         me concedas comprender la realidad de mi pecado y de las tendencias desordenadas en mi vida, para que sintiendo
        vergüenza y confusión, pueda obtener la curación y el perdón.',

        '¿Hay estilos en nosotros en los que usamos y abusamos de otras personas o situaciones para satisfacer nuestras
         propias necesidades para llamar la atención, obtener dinero sucio, abusar con nuestro sexo, comprar la aprobación,
         buscar de forma egoísta la comodidad, el abandono, la no implicación?',

         'Lucas 15:1-7. Jesús es el hombre que recibe a los pecadores y come con ellos.'),

      ('Seguimos en la consideración de la presencia del mal en nuestras vidas, pero hoy de otra forma totalmente diferente:
        hoy nos abrimos a la misericordia de nuestro Padre. Ignacio nos invita a experimentar la sorpresa que nos produce el encontrarnos
        frente a la misericordia infinita de Dios en nuestra propia realidad de pecado. Hoy nuestra actitud en el Camino es la de pecador arrepentido,
        perdonado, pero sobre todo, la de pecador inmensamente amado.',

        'Querido Padre, te pido el don de conocer internamente mi pecado y de experimentar tu profundo amor,
        un deseo creciente de conversión y un entusiasmo renovado para seguir a Jesús.',

        'Hemos reflexionado sobre la realidad del pecado humano y nuestro propio pecado.
        Hoy reflexionamos sobre la increíble presencia de la misericordia de Dios:
        ¡somos hijos amados y perdonados! “Arrepentíos y creed en la Buena Nueva.”',

        'Lucas 15: 11-32. Este hijo mío estaba muerto y ha vuelto a la vida, estaba perdido y ha sido hallado.'),

      ('Hoy entramos en la “segunda semana” de los Ejercicios Espirituales. La entrada principal es
        a través de una meditación que nos invita a sentir la invitación de Cristo Rey a seguirle.
        Como estamos caminando en una gran ciudad, podemos ver las maravillas de un “reino terrenal”
        e imaginar el Reino de Dios. Hoy meditamos sobre la orientación de nuestra vida:
        ¿caminamos con Jesús o detrás de otros líderes?',

        'Con todas mis limitaciones y sintiendo el amor del Padre en mí, pido la gracia de sentirme llamado personalmente
        a caminar junto a Jesús, como su compañero y colaborador.',

        'Hoy nos centramos en la maravilla de ser llamados y en la naturaleza amorosa de la convocatoria;
        mañana podemos empezar a centrarnos en nuestra respuesta a esta convocatoria.',

        'Salmo 102. El Señor es compasivo y benigno.'),

      ('No olvidemos la “oración preparatoria”, que es el fruto final de toda la experiencia.
        No debemos olvidar esta importante oración. En esta “segunda semana” de la peregrinación interior se caracteriza por la intimidad:
        queremos conocer mejor a nuestro Señor y Rey, para seguirlo más de cerca. ¡La intimidad es imperativa!
        Tratemos de encontrar esa gracia de la intimidad con Jesucristo.',

        'Rogaré al Padre por tres cosas que necesito y sólo Él puede conceder: un conocimiento más íntimo de Jesús,
         que se ha convertido en uno de nosotros; una experiencia más personal de su amor por mí para que le ame más tiernamente;
         y una más estrecha unión con Jesús en su misión de llevar la salvación a la humanidad.',

        'Reflexionamos sobre la realidad del pecado y la rebelión contra el plan de Dios.
        Ahora reflexionamos sobre la compasiva libre elección de Dios con respecto a este mundo pecador:
        que Jesús vendrá a nuestra historia humana, y así mostrarnos una nueva manera de ser, redimirnos y
        traer el amor a nuestro corazón de piedra.',

        'Lucas 1,26-38. Dios invita a la colaboración de María en el misterio de la Encarnación.
        A pesar de poder decir “no”, María dijo libremente “sí”. Sentimos la esperanza y la maravilla presente
        en la escena: todo es posible para Dios, Elisabeth pensó que era estéril y ya está en su séptimo mes,
        porque nada es imposible para Dios. Si Dios puede llevar esto a cabo en el mundo, ¿¡qué es lo que no puede hacer Dios!?'),

      ('El objetivo de estas meditaciones no es el de recoger “hechos” de Jesús, sino “verle más claramente,
        amarle más profundamente, seguirle con más cercanía”. No olvidemos la “oración preparatoria”, que es el fruto final de toda la experiencia.',

        'Pedimos una continua apreciación del milagro de la encarnación a través de las personas y la respuesta de María y José.
        La gracia de creer y aceptar la noticia increíblemente buena de que Jesús está entre nosotros y aceptar nuestra parte en ella.
        La profundización en la apreciación de la maravilla de Dios de haber nacido en forma humana.',

        'Ignacio nos invita a: «ver a Nuestra Señora, José y el niño Jesús después de su nacimiento. Yo me hago un pobre esclavo, pequeño e indigno,
        mirándolos, contemplándolos, y sirviéndoles en sus necesidades, como si yo estuviera allí, con todo el respeto y reverencia posible…
        Considero lo que están haciendo, por ejemplo, caminando o trabajando, para que el Señor sea bien nacido aunque en la mayor pobreza,
        y que ese bebé después de tantos trabajos de hambre, sed, calor, frío, lesiones e insultos, ¡vaya a morir en la cruz! ¡Y todo esto por mí! ».',

        'Mateo 1:18-25. Contemplando el misterio de la encarnación, entramos en los sentimientos de José y su lucha personal entre la ley y el amor.'),

      ('Recordemos que el objetivo de estas meditaciones de segunda semana es el de ver a Jesús más claramente, amarle más profundamente y seguirle con más cercanía.
        No olvidemos la “oración preparatoria”, que es el fruto final de toda la experiencia.',

        'Rogaré al Padre por tres cosas que necesito y sólo Él puede conceder: un conocimiento más íntimo de Jesús,
        que se ha convertido en uno de nosotros; una experiencia más personal de su amor por mí para que le ame más
        tiernamente; y una más estrecha unión con Jesús en su misión de llevar la salvación a la humanidad.',

        'En algún momento alrededor de sus treinta años, Jesús dejó su trabajo y el hogar a fin de comenzar su ministerio público.
        Tratemos de imaginar qué pensamientos podrían ser los suyos en ese momento de su vida.',

        'Romanos 6:3-4. Cristo resucitó de los muertos por la gloria del Padre, así también nosotros caminaremos en la vida nueva.'),

      ('Seguimos persistentes en la “oración preparatoria”. Hoy entramos en una consideración muy típica de los Ejercicios Espirituales:
        la meditación de Banderas. San Ignacio nos ofrece un ejercicio de contraste para poder ver hacia dónde se decanta nuestra vida,
        en este seguimiento de Jesús. A lo largo del día podemos ir considerando y pidiendo obtener la gracia de este ejercicio y sentir que
        Jesús nos quiere peregrinando con Él. El típico “Triple Coloquio” que apunta San Ignacio en los ejercicios, puede ser hecho tal cual… o
        bien hacerlo tal y como el corazón nos diga, según la disposición de la peregrinación que estamos haciendo.',

        'Como amigo de Jesús, le pido a Dios que me conceda el don de ser capaz de reconocer los engaños del mal y poder así
        protegerme contra ellos, y le pido también un verdadero conocimiento de Jesucristo, mi verdadero guía y Señor, y la gracia de imitarlo.',

        '¿Debo ir con Jesús? ¿Lo siento así realmente? ¿Lo deseo?',

        '1 Timoteo 6,6-10. Los que desean enriquecerse caen en la tentación, en una trampa, en muchas codicias insensatas y dañinas
        que hunden a los hombres en la ruina y la destrucción.'),

      ('Seguimos caminando con Jesús, para verle más claramente, amarle más profundamente y seguirle con más cercanía.
        No olvidemos la “oración preparatoria”, siempre antes de ponernos en oración y también a lo largo del día.
        A partir de hoy, el coloquio final se hace cada vez más importante: vamos entrando en ese conocimiento interno de
        Jesús que ha de dar fuerza a nuestro compromiso de vida. Esto se discute con nuestro “amigo” en el coloquio
        al final de la oración y durante el día.',

        'Rogaré al Padre por tres cosas que necesito y sólo Él puede conceder: un conocimiento más íntimo de Jesús,
        que se ha convertido en uno de nosotros; una experiencia más personal de su amor por mí para que le ame más tiernamente;
        y una más estrecha unión con Jesús en su misión de llevar la salvación a la humanidad.',

        'Jesús como una persona que sanaba a la gente podría ser la imagen más destacada de la vida pública de Jesús.
        El ministerio de sanación de Jesús es también un ministerio de salvación. ¿Qué es lo que quiere hacer Jesús para sanarme?',

        'Lucas 18: 35-43. “Jesús, Hijo de David, ¡ten misericordia de mí!”'),

      ('Seguimos caminando con Jesús, para verle más claramente, amarle más profundamente y seguirle con más cercanía.
        No olvidemos la “oración preparatoria”, siempre antes de ponernos en oración y también a lo largo del día.
        Recordemos que el coloquio final se hace cada vez más importante: vamos entrando en ese conocimiento interno de
        Jesús que ha de dar fuerza a nuestro compromiso de vida. Esto se discute con nuestro “amigo” en el coloquio al final de la oración
        y durante el día.',

        'Rogaré al Padre por tres cosas que necesito y sólo Él puede conceder: un conocimiento más íntimo de Jesús,
        que se ha convertido en uno de nosotros; una experiencia más personal de su amor por mí para que le ame más tiernamente;
        y una más estrecha unión con Jesús en su misión de llevar la salvación a la humanidad.',

        'Después de ver a Jesús curando, otra gran imagen a admirar en Jesús es la de predicador: ¡fue un verdadero innovador!
        ¡Y un hombre libre de verdad! Admiremos la claridad y la pureza del mensaje de Jesús, y su valentía al proclamar el Reino,
        aunque era muy consciente del peligro que ello entrañaba. Jesús mantiene su enfoque inquebrantable en la justicia del Reino de Dios.
        Él no acepta la hipocresía, el doble juego. Rechaza las posiciones legalistas o rituales que alzan la letra de la ley por encima de su verdadero espíritu.',

        'Mateo 23: 11-12, 23-24. El que es mayor entre vosotros será vuestro servidor,
        el que se enaltece será humillado, y el que se humilla será enaltecido.'),

      ('Seguimos caminando con Jesús, para verlo más claramente, amarle más profundamente y seguirle con más cercanía.
        Comenzamos ya la “tercera semana” de nuestra peregrinación interior. No olvidemos la “oración preparatoria”,
        siempre antes de comenzar la oración, y también a lo largo del día. Recordemos que el coloquio final se hace cada vez
        más importante porque vamos entrando en el conocimiento interno de Jesús que ha de dar fuerza a nuestro compromiso de vida.
        De esto hablamos con nuestro “amigo” en el coloquio al final de la oración, y durante el día.',

        'Pido al Padre que me lleve hacia Jesús para que yo pueda oír y entender su desafío,
        sentir la emoción de su aventura; y que infunda un ardiente deseo de servirle y de compartir su suerte y su sufrimiento.',

        'Los evangelios nos dicen que Jesús caminando por la orilla del lago de Galilea, llamó a dos pescadores que estaban echando la red en el mar, y les dijo:
        “Seguidme, y os haré pescadores de hombres”. Y de inmediato dejaron sus redes y le siguieron.
        Tan misteriosamente convincente es este Jesús, que aquellos pescadores  simplemente dejan caer sus redes,
        dejan su vida pasada, y le siguen hacia una nueva vida, hacia una nueva peregrinación. Recemos pidiendo un mejor conocimiento de Jesús,
        una más profunda visión del atractivo de su llamada, y un creciente deseo de estar con Él. De tal forma que el criterio más importante en las
        decisiones de nuestra vida  no sea ya “lo que a mi me place”, sino “lo que  más me ayude a estar con y como Jesús.”',

        'Lucas 9:57-62. Ruego no quedarme en ser sólo un aspirante a discípulo de Jesús.'),

      ('No olvidemos la “oración introductoria”. Estamos ya en la “tercera semana” de nuestros ejercicios espirituales.
        Ignacio nos pide que seamos conscientes de las dificultades con las que, cada vez más,
        Jesús se enfrenta en la “peregrinación de su vida.” Entramos así en una parte más “árida” de nuestra propia peregrinación.
        Tratamos de tener en cuenta el esfuerzo generoso de Jesús por nosotros. Mantenemos en nuestro corazón un “estado de ánimo triste” a
        medida que caminamos con Jesús, ya por última vez, hacia Jerusalén. En nuestro coloquio final seguimos avanzando en el conocimiento
        interno de Jesús que, a pesar de ser inocente, va a sufrir la muerte en cruz. De nuestros sentimientos de tristeza por su dolor hablamos con
        nuestro “amigo” en el coloquio al final de la oración, y también durante el día.',

        'Pido al Padre que me lleve hasta Jesús para que yo pueda oír y entender su desafío,
        sentir la emoción de su aventura, y un ardiente deseo de servirle compartiendo su suerte y su sufrimiento.',

        '¿Quién soy yo? ¿Quién es Jesús? En el encuentro con Jesús, Dios nos ayuda a comprendernos más profundamente a nosotros
        mismos, y, en ese proceso, también comprendemos más profundamente a Dios. El Camino Ignaciano que estamos recorriendo pasa a
        través de “Los Monegros”, una región cercana a la climatología desértica en España.',

        'Marcos 10, 32-45. “Si alguno quiere ser el primero, que sea el último de todos y el servidor de todos”.'),

      ('Seguimos acompañando a Jesús, en su camino hacia la cruz. No olvidemos la “oración preparatoria”.
        Ahora especialmente hemos de pedir el don de orientar nuestra vida a la voluntad de Dios, única fuente de salvación y de felicidad.
        Recordemos que el coloquio final es muy importante. Vamos entrando en ese conocimiento interno de Jesús sufriente, que ha de dar fuerza a nuestro compromiso de vida.
        Hablamos de esto con nuestro “amigo” en el coloquio al final de la oración y durante el día.',

        'Ruego al Padre el don de ser capaz de sentir dolor con Cristo en su dolor, angustia en la angustia de Cristo, e incluso la experiencia
        de las lágrimas y del dolor profundo por todas las aflicciones que Cristo va a padecer por mí.',

        'Después de tantos días caminando con Jesús, ya sabemos que su vida está en peligro. Él lo sabe también.
        La gente no entiende. El reino de Dios padece violencia, y el enemigo es poderoso. Como dijo el profeta, nuestros corazones se han convertido en corazones de piedra.
        No estamos dispuestos a cambiarlo. Nos sentimos fuertes con nuestro núcleo duro, y el tierno corazón misericordioso de Dios no nos resulta una opción atractiva.
        Jesús nos interpela, pero no queremos oír.',

        'Marcos 8:34-38. “Cualquiera que quiera venir en pos de mí debe renunciar a sí mismo, debe tomar su cruz y seguirme”'),

      ('Seguimos caminando con Jesús en su camino hacia la muerte. No olvidemos la “oración preparatoria”:
        una vez más hemos de pedir orientar nuestra vida a la voluntad de Dios, única fuente de felicidad y de resurrección.
        Insistimos en el coloquio final. Nos ponemos junto a Jesús sufriente, y le pedimos que nos dé fuerza para mantener nuestro compromiso de vida.
        Lo hacemos en el coloquio al final de la oración y durante el día.',

        'Ruego al Padre el don de ser capaz de sentir dolor con Cristo en su dolor, angustia en la angustia de Cristo,
        e incluso la experiencia de las lágrimas y del dolor profundo por todas las aflicciones que Cristo va a padece por mí.',

        'Después de la última cena, Jesús agoniza mientras ora deseando no tener que pasar por el sufrimiento que está ya anunciado.
        Ha sido traicionado. Será abandonado por sus amigos y por sus discípulos, los que habían sido sus compañeros más cercanos en los últimos tres años.
        Será humillado públicamente. Su misión va a tener como final el fracaso y el ridículo. Nada de esto es una ficción. Los cristianos creemos que Jesús,
        siendo Dios, se hizo verdadero hombre. Y este es el momento en el que se manifiesta la plena solidaridad de Jesús con nuestra condición humana. ',

        'Mateo 26:30-75. “Luego, fue a los discípulos y les dijo: ¿Aún dormidos? ¿Aún descansáis? ¡Ha llegado la hora!”'),

      ('Seguimos caminando con Jesús. Lo acompañamos en sus últimos momentos. Estamos junto a los que bajan su cuerpo de la cruz y lo llevan al sepulcro.
        No olvidemos la “oración preparatoria”. Una vez más hemos de pedir orientar nuestra vida a la voluntad de Dios, única fuente de felicidad y de resurrección.
        Insistimos en el coloquio final. Nos ponemos junto a Jesús sufriente y le pedimos que nos dé fuerza para mantener nuestro compromiso de vida.
        Hacerlo en el coloquio al final de la oración y durante el día.',

        'Ruego al Padre el don de ser capaz de sentir dolor con Cristo en su dolor, angustia en la angustia de Cristo, e incluso la experiencia de las lágrimas y
        del dolor profundo por todas las aflicciones que Cristo ha padecido por mí.',

        'El crucifijo, suspendido sobre el altar de cada Iglesia Católica, nos recuerda que la misa es, no sólo un recuerdo,
        sino incluso un volver a vivir la entrega de Jesús por nosotros derramando su vida hasta la muerte. A veces, sin embargo,
        hemos sobre-intelectualizado la crucifixión, hemos razonado mucho sobre el misterio teológico de la muerte de Jesús.',

        'Mateo 27,1-66. “¡Crucifícalo!” “¿Por qué? ¿Qué mal ha hecho?” “¡Crucifícalo!”'),

      ('Estamos entrando en la última etapa de nuestra peregrinación: la “cuarta semana” de los Ejercicios Espirituales.
        Cambiamos de ánimo porque ahora entramos en la contemplación de la Vida en su plenitud.
        Entramos sintiendo con Jesús y con los discípulos que la última puerta se ha abierto, que ya no hay nada que nos pueda detener
        en nuestro camino hacia la libertad y hacia la felicidad eterna en el amor de Dios. La última semana llena de gracia y llena de luz.
        Nos regocijamos con cada pequeña flor, con cada pájaro, con cada sonrisa, con cada mano tendida. No olvidemos la “oración introductoria” al
        comenzar la contemplación, y también durante todo el día. Recordemos el coloquio final.',

        'Pedimos al Padre el don de ser capaces de entrar en la alegría del Resucitado, y del Cristo victorioso.
        El don de ser capaces de contemplar la vida plena que Jesús nos ha alcanzado.
        El don de alegrarnos profundamente con Jesús, con María y con todos los santos.',

        'Hoy, y en los días que siguen, Ignacio nos invita a “pedir la gracia de ser felices y de regocijarnos intensamente
        por la gran gloria y alegría de Cristo Nuestro Señor” que ha resucitado. Nadie podía imaginar que eso iba a suceder,
        aunque el profeta Isaías ya había anunciado  que “mi siervo  tendrá éxito,  será elevado al honor alto y sublime”.
        Pero los últimos días de Jesús fueron tan difíciles de soportar, y su muerte, tan incomprensible,
        que lo que menos podían pensar era que Dios estaba con ellos.',

        'Isaías 52,13-53.12. “¿Quién hubiera creído lo que habían oído?”.'),

      ('A lo largo de esta “cuarta semana” de los Ejercicios Espirituales, mantendremos el mismo ánimo alegre,
        porque ahora estamos en la contemplación de la vida en su plenitud.
        Ya no hay nada que nos pueda detener en nuestro camino hacia la libertad y hacia la felicidad eterna.
        Vivamos la última semana llena de gracia y llena de luz. Nos regocijamos con cada pequeña flor, con cada pájaro, con cada sonrisa,
        con cada mano tendida. No olvidemos la oración introductoria” al comenzar la contemplación ni durante todo el día. Recordemos el coloquio final.
        Nos acercamos a ese conocimiento interno de Jesús resucitado, que nos ayuda a cumplir nuestro compromiso con la vida para siempre.',

        'Pedimos al Padre el don de ser capaces de entrar en la alegría del Resucitado y de Cristo victorioso.
        El don de ser capaces de contemplar la vida plena que Jesús nos ha alcanzado.
        El don de alegrarnos profundamente con Cristo, con María y con todos sus discípulos.',

        'Hoy seguimos contemplando la maravilla de la resurrección. Los discípulos necesitaron muchos días para llegar a la experiencia de Jesús vivo para siempre.
        Vayamos cerca de María Magdalena, la mujer que amaba profundamente a Jesús. Mirémosla en su angustia.
        Tratemos de sentir como ella, ahora que ha perdido el único sentido de su vida.
        Y estemos allí con ella en el momento de su encuentro con el Resucitado. El mundo se alegra con ella.',

        'Juan 20,11-18. Junto a María Magdalena oigo mi nombre y respondo con alegría.'),

      ('Mantenemos el mismo ánimo alegre, porque ahora estamos en la contemplación de la vida en su plenitud.
        Ya no hay nada que nos pueda detener en nuestro camino hacia la libertad y la felicidad eterna.
        Vivamos la última semana llena de gracia y llena de luz. Nos regocijamos con cada pequeña flor, con cada pájaro,
        con cada sonrisa y con cada mano tendida. No olvidemos la “oración introductoria” al comenzar la contemplación, ni durante todo el día.
        Recordemos el coloquio final. Nos acercamos al conocimiento interno de Jesús resucitado, que nos ayuda a cumplir nuestro compromiso con la vida para siempre.',

        'Pedimos al Padre el don de ser capaces de entrar en la alegría del Resucitado y de Cristo glorioso.
        El don de ser capaces de contemplar la vida plena que Jesús nos ha alcanzado. El don de alegrarnos profundamente con Cristo,
        Y pedimos sentirnos enviados al mundo para continuar su misión.',

        'La gracia de estar vivo, la gracia de tener la resurrección en ti, es un regalo no sólo para ti, sino una gracia para compartir con los demás.
        Y es energía para ponerla al servicio de la misión de Jesús, para difundir la Buena Nueva del reino de Dios. Hoy nos sentimos renovados y, al mismo tiempo,
        comprometidos con nuestro mejor “amigo”, para ayudarle a realizar su misión en la tierra.',

        'Mateo 18,16-20: “Yo estaré siempre con vosotros hasta el fin del mundo”.'),

      ('Aunque hoy meditamos sobre el episodio de las tentaciones de Jesús, mantenemos el mismo ánimo de alegría,
        porque todavía estamos en la contemplación de la vida en su plenitud. No hay nada que pueda detenernos en nuestro camino hacia la
        libertad, y hacia la felicidad eterna. No olvidemos la oración “introductoria”, ni el coloquio al final de la oración, y durante todo el día.
        Y vivamos la alegría de la Resurrección de Cristo. La luz, las flores, el agua y los amigos son bienvenidos.',

        'Ruego al Padre poder alegrarme profundamente con Cristo resucitado, ahora que he sido enviado al mundo para servir a su misión.
        Ruego ser capaz de reconocer los engaños del mal y saber guardarme de ellos confiando, como lo hizo Jesús, plenamente en el amor.',

        'Ayer fuimos llamados a volver, como los discípulos, a Galilea, es decir, a nuestra “vida normal”. Tenemos una misión: trabajar por el Reino.
        Hoy vamos a considerar el comienzo de la misión de Jesús, y el discernimiento que tuvo que hacer antes de empezar a trabajar. ',

        'Mateo 4,1-11: La táctica del adversario no consiste en proponerle a Jesús hacer el mal,
        sino proponerle ser un Mesías con posesiones, con prestigio, con poder, y así tener éxito y
        ganar en eficacia; en lugar de ser un Mesías solidario con la pobreza, con la persecución, con la debilidad,
        como el Padre lo envió a ser.'),

        ('Seguimos en nuestra “cuarta semana”, y mantenemos el mismo ánimo alegre, porque cada vez más nos unimos a Jesucristo en su misión.
          No hay nada que pueda detenernos en nuestro camino hacia la libertad y la felicidad eterna. No olvidemos la “oración introductoria”,
          ni el coloquio al final de la oración ni durante todo el día. ¡Y vivamos la alegría de la resurrección de Cristo! Las canciones, la luz, las flores, el agua,
          los amigos… son bienvenidos. De nuevo, la pista ignaciana de este día nos invita a hacer como Ignacio: compremos ropas nuevas que reflejen  el cambio interior
          que hemos ido experimentando en nuestra peregrinación.',

          'Ruego a Dios poder alegrarme profundamente con Cristo resucitado, ahora que he sido enviado al mundo para servir a su misión.
          Le ruego que me haga capaz de reconocer en mi vida su presencia transfigurada, de acompañarle en su misión de reconciliación,
          y de dar la vida por la humanidad.',

          'Jesús necesita de nuestras manos para acoger a quienes están necesitados de atención, de reconciliación y de vida.
          Jesús necesita de nuestra voluntad, de nuestros deseos de avanzar, para poder seguir construyendo el Reino entre nosotros.
          Jesús resucitado nos llama a seguirle, y a participar con El en la transformación que ya se ha iniciado en el mundo.',

          'Lucas 19,1-10: Jesús llama a Zaqueo, y le pide que descienda de sus preocupaciones y de su estilo de vida.
          Si deseas ver a Jesús, baja de los montajes que te has hecho. Si deseas encontrarlo en tu vida, ve a tu casa,
          que El está allí esperándote. Déjate llevar por El. Vuestro encuentro será generosamente fructífero y transfigurador.'),

        ('La alegría nos acompaña. No olvidemos la “oración introductoria”, ni el coloquio al final de la oración ni durante todo el día.
          ¡Y vivamos la alegría de la resurrección de Cristo! Las canciones, la luz, las flores, el agua y los amigos son bienvenidos.
          La pista ignaciana de este día nos invita a hacer como Ignacio. Dediquemos un rato de oración especial junto a la Virgen Morena de Montserrat.',

          'Ruego a Dios poder alegrarme profundamente con Cristo resucitado, ahora que he sido enviado al mundo para servir a su misión.
          Ruego recibir el Espíritu para poder más acompañar a Jesús y servirle en su misión de reconciliar y dar la vida por la humanidad.',

          'El Espíritu de Dios nos confirma en la misión que hemos recibido. Aún más: el mismo Espíritu nos acompaña y
          nos fortalece en las dificultades que salen a nuestro encuentro. Seguimos la dinámica de las otras semanas.
          El verdadero Rey nos pide que le acompañemos en su conquista del bien contra el absurdo de la destrucción del ser humano.
          El Espíritu nos impulsa en nuestro peregrinar por toda la tierra, anunciando la Buena Noticia.',

          'Juan 16,5-15: Recuerdo las palabras de Jesús sobre la acción del Espíritu Santo.');
INSERT INTO PistaEtapa(idPista, idEtapa)
	VALUES  (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),
  (18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26);
INSERT INTO PuntoInteres(nombrePtoInteres, idPoblacion)
	VALUES  ('Santuario de Loyola', 1),
			('Estatua de San Ignacio de Loyola', 1),
			('Torre Idiakez', 2),
			('Pinturas rupestres', 3),
			('Plaza Iparraguirre', 4),
			('Ermita de La Antigua', 5),
      ('Aizpita', 6),
      ('Bosque',6),
    	('Aizkorri-Aratz', 7),
    	('Pinturas rupestres', 8),
    	('Santuario de Aranzazu', 8),
      ('Colina', 9),
    	('Ermita de Urbia', 9),
    	('Pinturas rupestres', 9),
    	('Dolmen Kalparmuñobarrena',9),
      ('Bosques de la Colina', 9),
      ('Puerto de Entzia',10),
      ('Valle de Arana',10),
      ('Campo de golf',11),
      ('Sierra de Entzia',12),
			('Santa Cruz de Campezo Alto',13),
			('Santa Cruz de Campezo Bajo',13),
			('San Vicente de Arana',14),
			('Alda',15),
			('Sala de Peregrinos',16),
			('Retablo Renacentista',16),
			('Plaza Mayor fortificada',17),
			('Iglesia de SanJuan Bautista',18),
			('Estatua de Jesuita José Cardiel',19),
			('Iglesia de Nuestra Señora de la Asunción', 20),
			('Las Cuevas',20),
			('Monasterio de Santa María la Real',21),
			('Palacio de los Duques de Nájera',22),
			('Parque de la Grajera',23),
			('Iglesia de San Bartolomé',24),
			('Iglesia de Santa María del Palacio',24),
			('Castillo de Aguas Mansas',27),
			('Iglesia del Salvador',28),
			('Ermita de Aradón',28),
			('Pueblo romano',30),
			('Iglesia Virgen del Rosario',31),
		 	('Paraje Natural LA PRESA',31),
		 	('Centro del Fungiterrismo',32),
		 	('Catedral Santa Maria',33),
			('Iglesia de San Miguel',34),
			('Colegiata de San Miguel Arcángel',35),
			('Iglesia de San Francisco',35),
			('Nudo ferroviario importante',36),
			('Iglesia de San Francisco Javier',36),
			('Ferrocarril',37),
			('Catedral de Tudela',38),
			('Origen del Canal Imperial de Aragón',39),
		 	('Palacio del Emperador',39),
		 	('Iglesia de San Blas',40),
		 	('Iglesia de San Juan Bautista',41),
		 	('Capilla dedicada al apóstol Santiago',42),
			('Iglesia Virgen de la Candelaria',45),
			('Medallas del emperador Antonio Pío',45),
			('Iglesia de la Santísima Trinidad',46),
			('Ruinas de El Castillo',47),
			('Parroquia de San Ildefonso',48),
			('Iglesia de San Pedro Apóstol',49),
			('La ermita de Nuestra Señora de Castellar',50),
			('Castillo y Villa de Sobradiel',51),
			('Nuestra Señora de la Asuncion',52),
			('Antigua Iglesia Parroquial',53),
			('Torre Mudejar',53),
			('Basílica del Pilar',54),
			('Palacio de la Aljafarería',54),
			('Monasterio de Piedra',57),
			('Centro Deportivo Municipal Alejandro Pérez Blanque',57),
			('Salada de Mediana', 58),
			('Alfajarin', 59),
			('Parque de San Blas',60),
			('Convento franciscano de San Salvador',60),
			('Ermita de San Gregorio',61),
			('Gasolinera',62),
			('Iglesia barroca al apóstol Santiago',63),
			('Supermercado', 63),
			('Castejón de Monegros', 64),
			('La Almolda', 64),
			('Iglesia de Nuestra Señora de la Asunción', 65),
			('Gasolinera Candasnos',66),
			('Río Cinca', 67),
			('La Torre de los Frailes', 67),
			('Llanos del Garraf', 68),
			('Castillos de frontera del macizo del Garraf', 68),
			('Casa de Montagut', 69),
			('Iglesia de estilo neoclásico', 70),
			('Iglesia parroquial de San Miguel',72),
			('Cruz del termino de Bell-lloc',72),
		 	('Ermita de Santa Lucia',73),
			('Estanque de Ivars Vila-Sana',74),
			('Santuario de Santa María de la Bovera',74),
			('Castillo de Bellpuig',75),
			('Ermita de Sant Miquel',76),
			('Iglesia Tarrega',77),
			('Mercado Tarrega',77),
			('Castillo Cervera',78),
			('Escultura salida de Cervera',79),
			('Iglesia Romana SXII Santa Maria del Camí', 84),
			('Castillo de Jorba',85 ),
			('Iglesia de Santa María SXI', 86),
			('Una roca sagrada', 87),
			('Un estanque consagrado', 87),
			('Giro de esquina', 88),
			('Encrucijada', 89);