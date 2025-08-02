-- consultas a tabla pivot
/*
    nombreProducto, precio (productos)
    razonsocial, telefono (proveedores)
*/
SELECT
        nombreProducto,
        precio,
        razonsocial,
        telefono
FROM productos
JOIN productos_proveedores
  ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
  ON proveedores.idProveedor = productos_proveedores.idProveedor;

/*
    nombreProducto, precio (productos)
    nombreMarca (marcas)
    nombreCategoria (categorias)
    razonsocial, telefono (proveedores)
*/
SELECT
    nombreProducto,
    precio,
    nombreMarca,
    nombreCategoria,
    razonsocial,
    telefono
FROM productos
JOIN marcas
  ON productos.idMarca = marcas.idMarca
JOIN categorias
  ON productos.idCategoria = categorias.idCategoria
JOIN productos_proveedores
     ON productos.idProducto = productos_proveedores.idProducto
JOIN proveedores
     ON proveedores.idProveedor = productos_proveedores.idProveedor;

/**/
SELECT titulo, nombre, anio
FROM libros
JOIN libros_autores la on libros.idLibro = la.idLibro
JOIN autores a on a.idAutor = la.idAutor