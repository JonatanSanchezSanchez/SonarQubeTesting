CREATE TABLE Contacto (
	idContacto BIGINT NOT NULL,
	nombre VARCHAR(30),
	idDirectorioPadre BIGINT
);

CREATE TABLE Directorio (
	idContacto BIGINT NOT NULL
);

CREATE TABLE Individual (
	idContacto BIGINT NOT NULL,
	telefono VARCHAR(30)
);

CREATE TABLE Emergencia (
	idContacto BIGINT NOT NULL
);

CREATE TABLE Persona (
	idContacto BIGINT NOT NULL,
	correo VARCHAR(30),
	direccion VARCHAR(30),
	idContactoAlternativo BIGINT
);

CREATE TABLE Bloc (
	idBloc BIGINT NOT NULL,
	nombre VARCHAR(30)
);

CREATE TABLE Nota (
	idNota BIGINT NOT NULL
);

CREATE TABLE Linea (
	idLinea BIGINT NOT NULL,
	idNota BIGINT,
	texto VARCHAR(3000)
);