DELETE FROM Contacto;
DELETE FROM Directorio;
DELETE FROM Individual;
DELETE FROM Emergencia;
DELETE FROM Persona;
DELETE FROM Bloc;
DELETE FROM Nota;
DELETE FROM Linea;

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (1, 'CONTACTOS', NULL);
INSERT INTO Directorio
	(idContacto)
	VALUES (1);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (2, 'Luis', 1);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (2, '111');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (2, '111', '111', NULL);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (3, 'LPSI', 1);
INSERT INTO Directorio
	(idContacto)
	VALUES (3);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (4, 'Director', 3);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (4, '222');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (4, '222', '222', 5);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (5, 'Secretaria', 3);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (5, '333');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (5, '333', '333', NULL);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (6, 'Paula', 1);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (6, '444');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (6, '444', '444', 2);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (7, 'Rectorado', 1);
INSERT INTO Directorio
	(idContacto)
	VALUES (7);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (8, 'Rector', 7);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (8, '555');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (8, '555', '555', 9);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (9, 'Vicerrector', 7);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (9, '666');
INSERT INTO Persona
	(idContacto, correo, direccion, idContactoAlternativo)
	VALUES (9, '666', '666', NULL);

INSERT INTO Contacto	
	(idContacto, nombre, idDirectorioPadre)
	VALUES (10, 'Seguridad', 7);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (10, '777');
INSERT INTO Emergencia
	(idContacto)
	VALUES (10);

INSERT INTO Contacto
	(idContacto, nombre, idDirectorioPadre)
	VALUES (11, 'Policía', 1);
INSERT INTO Individual
	(idContacto, telefono)
	VALUES (11, '888');
INSERT INTO Emergencia
	(idContacto)
	VALUES (11);

INSERT INTO Bloc
	(idBloc, nombre)
	VALUES (1, 'NOTAS');

INSERT INTO Nota (idNota) VALUES (1);
INSERT INTO Linea (idLinea, idNota, texto)
	VALUES (1, 1, 'primera nota');
INSERT INTO Linea (idLinea, idNota, texto)
	VALUES (2, 1, 'de la agenda');

INSERT INTO Nota (idNota) VALUES (2);
INSERT INTO Linea (idLinea, idNota, texto)
	VALUES (3, 2, 'segunda nota');
INSERT INTO Linea (idLinea, idNota, texto)
	VALUES (4, 2, 'de la agenda');

INSERT INTO Nota (idNota) VALUES (3);
