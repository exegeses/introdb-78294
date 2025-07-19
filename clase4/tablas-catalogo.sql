-- tablas proyecto catálogo

create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key,
    nombreCategoria varchar(50) unique not null
);

create table marcas
(
    idMarca tinyint unsigned auto_increment primary key,
    nombreMarca varchar(50) unique not null
);

create table productos
(
    idProducto mediumint unsigned auto_increment primary key,
    nombreProducto varchar(50) unique not null,
    precio decimal(10,2) not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    descripcion varchar(1000) not null,
    imagen varchar(50) not null,
    activo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
