CREATE TABLE Poblaciones (
  idPoblacion INT PRIMARY KEY,
  idProvincia INT,
  habitantes INT,
  nombre VARCHAR(255)
);

CREATE TABLE Almacenes (
  idAlmacen INT PRIMARY KEY,
  fapertura DATE,
  direccion VARCHAR(255),
  idProvincia INT,
  ISBN INT,
  Stock INT
);

CREATE TABLE Provincias (
  idProvincia INT PRIMARY KEY, 
  nombre VARCHAR(255), 
  extension FLOAT,
  idAlmacen INT,
  FOREIGN KEY (idAlmacen) REFERENCES Almacenes(idAlmacen),
  FOREIGN KEY (idProvincia) REFERENCES Poblaciones(idPoblacion)
);

CREATE TABLE Socios (
    idSocio INT PRIMARY KEY,
    dni VARCHAR(255),
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    idUbicacion INT,
    idSocioAvalador INT,
    FOREIGN KEY (idUbicacion) REFERENCES Poblaciones(idPoblacion),
    FOREIGN KEY (idSocioAvalador) REFERENCES Socios(idSocio)
);

CREATE TABLE Pedidos (
    idPedido INT PRIMARY KEY,
    formaDeEnvio VARCHAR(255),
    formaDePago VARCHAR(255),
    idSocio INT,
    FOREIGN KEY (idSocio) REFERENCES Socios(idSocio)
);

CREATE TABLE DetalleDePedidos (
   ISBN INT,
   Cantidad INT,
   idPedido INT,
   Consecutivo INT,
   PRIMARY KEY (idPedido, Consecutivo)
);

CREATE TABLE Colecciones (
  idColeccion INT PRIMARY KEY,
  volumen INT
);
CREATE TABLE Stock (
  ISBN INT,
  idAlmacen INT,
  Cantidad INT,
  PRIMARY KEY (ISBN, idAlmacen),
  FOREIGN KEY (ISBN) REFERENCES Libros(ISBN),
  FOREIGN KEY (idAlmacen) REFERENCES Almacenes(idAlmacen)
);
