# Alias en sql
/*
    En SQL podemos renombrar el enunciado de una columna
    con el motivo de qué quede mejor en un reporte
    Nota: no se cambia definitivamente el nombre de la columna
    sino que se renombre únicamente para el reporte
    Implementamos un alias con la palabra reservada **AS**
    (se puede omitir)
*/
SELECT
    idProducto AS id,
    nombreProducto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    nombreMarca AS Marca,
    nombreCategoria AS Categoría
FROM productos
 JOIN marcas
    ON productos.idMarca = marcas.idMarca
 JOIN categorias
    ON productos.idCategoria = categorias.idCategoria;

-- variante en nombres de tablas
SELECT
    idProducto AS id,
    nombreProducto AS Producto,
    precio AS Contado,
    precio * 1.05 AS Lista,
    nombreMarca AS Marca,
    nombreCategoria AS Categoría
FROM productos AS p
 JOIN marcas AS m
      ON p.idMarca = m.idMarca
 JOIN categorias AS c
      ON p.idCategoria = c.idCategoria;