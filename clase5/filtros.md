# Filtrado de resultados
> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan con una condición.
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion;  

> Práctica: 
> Obtener el nombre del producto y el precio del producto con un precio hasta en 350000

    SELECT nombreProducto, precio  
      FROM productos   
      WHERE precio <= 350000;  

> Obtener el nombre del producto y el precio del producto con un precio entre 100000 y 350000

    SELECT nombreProducto, precio  
      FROM productos   
      WHERE precio >= 100000  
        AND precio <= 350000;  

> Palabra reservada **BETWEEN**

    SELECT nombreProducto, precio  
      FROM productos  
      WHERE precio BETWEEN 100000 AND 350000;  

> Obtener todos los títulos de los libros que comiencen con 'B', 'C' y 'D'

    select idLibro, titulo  
      from libros  
      WHERE titulo BETWEEN 'b' AND 'e'  
      order by titulo;  

> obtener nombre y precio de los productos de la marca 'Samsung' 

    SELECT nombreProducto, precio  
      FROM productos  
      WHERE idMarca = 1;  

> obtener nombre y precio de los productos de las marcas 'Samsung' y 'Apple'
