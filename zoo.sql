CREATE TABLE zoo (
    id_zoo SERIAL PRIMARY KEY,
    tamaño INT,
    pais VARCHAR(50),
    ciudad VARCHAR(50),
    nombre VARCHAR(100),
    presupuesto DECIMAL(10, 2)
);

CREATE TABLE especie (
    id_especie SERIAL PRIMARY KEY,
    nombre_cientifico VARCHAR(100),
    nombre_vulgar VARCHAR(100),
    peligro_extincion BOOLEAN,
    familia VARCHAR(100)
);

CREATE TABLE animales (
    id_animal SERIAL PRIMARY KEY,
    pais_origen VARCHAR(50),
    sexo CHAR(1),
    continente VARCHAR(50),
    fNacimiento DATE,
    id_especie INT,
    id_zoo INT,
    FOREIGN KEY (id_especie) REFERENCES especie(id_especie),
    FOREIGN KEY (id_zoo) REFERENCES zoo(id_zoo)
);
