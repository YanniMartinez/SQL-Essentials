

/* Creando una tabla */
CREATE TABLE USUARIO(
    id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL, 
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY (id)
);

