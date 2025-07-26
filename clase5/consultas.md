# consulta en SQL

> podemos realizar consultas a:

1. Servidor de base de datos
2. Base de datos
3. Tablas dentro de una base de datos
4. Vistas

## Consultas a server

    -- listar todas las bases de datos de nuestro server  
    SHOW DATABASES;   

> la palabra reservada más importante o al menos la más utilizada para las consultas es **SELECT**

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a bases de datos

    -- listar todas las tablas dentro de una base de datos  
    SHOW TABLES;

## Consultas a tablas

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> para realizar consultas a una tabla y que nos devuelva una grilla de resultados 
> vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM marcas;  
    SELECT * FROM productos;  

> Cuando utilizamos **SELECT** y luego ampleamos * (asterisco) lo que vamos a obtener es todos los datos de todas las columnas que contenga una tabla 
> Si queremos obtener registros de solamente algunas de las columnas (no todas) 
> vamos a necesitar especificar luego de la palabra **SELECT** cada una de las columnas separadas por comas (en lugar del * )

    SELECT nombreProducto, precio  
      FROM productos;  

### Orden de resultados
> Para ordenar los resultados según una columna en particular tenemos el modificador **ORDER BY** seguido de la columna de orden

    SELECT *  
        FROM marcas  
        ORDER BY idMarca;  

    SELECT nombreProducto, precio, idMarca  
        FROM productos
        ORDER BY precio;  

> Si luego del modificador **ORDER BY** 
> utilizamos la palabra reservada **DESC** vamos a ordenar de manera descendente

    SELECT nombreProducto, precio, idMarca  
        FROM productos  
      ORDER BY precio desc;  

> Podemos utilizar dos criterios de orden

    SELECT nombreProducto, precio, idMarca  
        FROM productos  
      ORDER BY precio;  
