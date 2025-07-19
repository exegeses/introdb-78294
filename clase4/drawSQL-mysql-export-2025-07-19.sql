CREATE TABLE `productos`(
    `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombreProducto` VARCHAR(50) NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL,
    `idMarca` TINYINT UNSIGNED NOT NULL,
    `idCategoria` TINYINT UNSIGNED NOT NULL,
    `descripcion` VARCHAR(1000) NOT NULL,
    `imagen` VARCHAR(50) NOT NULL,
    `activo` BOOLEAN NOT NULL
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_nombreproducto_unique`(`nombreProducto`);


CREATE TABLE `marcas`(
    `idMarca` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombreMarca` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_nombremarca_unique`(`nombreMarca`);


CREATE TABLE `categorias`(
    `idCategoria` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nombreCategoria` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_nombrecategoria_unique`(`nombreCategoria`);


ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign` FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign` FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);