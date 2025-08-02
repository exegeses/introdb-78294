# Consultas con relaciones entre tablas

> Si queremos consultar datos provenientes de dos o más tablas debemos relacionar dichas tablas
> Para lograrlo tenemos dos técnicas

## 1- Table Relation

> En esta técnica vamos a mencionar en 
> el listado de tablas (después del **FROM**) 
> cada una de las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla

> Sintaxis: 

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;  

    SELECT colTabla1, colTabla1, colTabla2, colTabla3    
      FROM tabla1, tabla2, tabla3    
      WHERE tabla1.fk = tabla2.pk    
        AND tabla1.fk = tabla3.pk;      

> Práctica: 

    SELECT nombreProducto, precio, nombreCategoria
      FROM productos, categorias  
      WHERE productos.idCategoria = categorias.idCategoria;  

    SELECT nombreProducto, precio, nombreCategoria, nombreMarca  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  

    SELECT titulo, anio, genero  
      FROM libros, generos  
      WHERE libros.idGenero = generos.idGenero;  

    SELECT titulo, anio, genero, editorial  
      FROM libros, generos, editoriales  
      WHERE libros.idGenero = generos.idGenero    
        AND libros.idEditorial = editoriales.idEditorial


## 2- Join

> En la técnica **JOIN** NO vamos a mencionar 
> en el listado de tablas (después del **FROM**) 
> cada una de las tablas necesarias
> Sólo se menciona la tabla principal
> Y luego usamos la palabra reservada **JOIN** para mencionar la tabla secundaria
> finalizamos igualando la clave foránea de la tabla principal con la clave primaria de la tabla secundaria

> Sintaxis:

    SELECT colTabla1, colTabla1, colTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk;

    SELECT colTabla1, colTabla1, colTabla2, colTabla3  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.fk = tabla2.pk  
      JOIN tabla3  
        ON tabla1.fk = tabla3.pk;  

> Ejemplo práctico:

    SELECT nombreProducto, precio, nombreMarca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  


    SELECT  nombreProducto, precio,  
            nombreMarca,  
            nombreCategoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias    
        ON productos.idCategoria = categorias.idCategoria;  


    SELECT titulo, anio, genero  
      FROM libros  
      JOIN generos  
      ON generos.idGenero = libros.idGenero  
      order by titulo asc;

    SELECT titulo, anio, genero, editorial  
      FROM libros  
      JOIN editoriales  
        ON libros.idEditorial = editoriales.idEditorial  
      JOIN generos  
        ON libros.idGenero = generos.idGenero  
        order by titulo;  
