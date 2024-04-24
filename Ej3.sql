CREATE TABLE Miembro(
ID_Miembro SERIAL PRIMARY KEY,
Nombre VARCHAR(100),
Apellido VARCHAR(100),
Direccion VARCHAR(100),
Telefono VARCHAR(20)
);

CREATE TABLE Barco(
Matricula SERIAL PRIMARY KEY,
Nombre VARCHAR(100),
Tipo VARCHAR(50),
Longitud DECIMAL
);

CREATE TABLE Salida(
ID_Salida SERIAL PRIMARY KEY,
Fecha DATE,
Hora TIME,
Destino VARCHAR(100),
ID_Miembro INTEGER REFERENCES Miembro(ID_Miembro),
Matricula_Barco INTEGER REFERENCES Barco(Matricula)
);

CREATE TABLE Socio(
ID_Socio SERIAL PRIMARY KEY,
ID_Miembro INTEGER REFERENCES Miembro(ID_Miembro),
Fecha_Ingreso DATE,
Cuota_Mensual DECIMAL
);
