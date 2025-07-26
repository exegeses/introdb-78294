CREATE TABLE generos (
     idGenero TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     genero VARCHAR(50) NOT NULL
);

CREATE TABLE editoriales (
     idEditorial TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     editorial VARCHAR(100) NOT NULL
);

CREATE TABLE autores (
     idAutor SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(100) NOT NULL,
     nacionalidad VARCHAR(50) NOT NULL
);

CREATE TABLE libros (
    idLibro SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    anio smallint unsigned,
    idGenero TINYINT UNSIGNED,
    idEditorial TINYINT UNSIGNED,
    isbn VARCHAR(20) UNIQUE,
    FOREIGN KEY (idGenero) REFERENCES generos(idGenero),
    FOREIGN KEY (idEditorial) REFERENCES editoriales(idEditorial)
);