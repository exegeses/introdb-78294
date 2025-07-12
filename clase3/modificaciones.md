# Modificación de datos en los registros de una tabla

> Para modificar los datos de una tabla utilizamos el comando **UPDATE**
> Debemos especificar un filtro utilizando la palabra reservada **WHERE* seguida de una condición

> Sintaxis: 

    UPDATE nombreTabla  
       SET 
           campo = valor  
     WHERE condicion;  

> Ejemplo práctico:  

    UPDATE proveedores  
       SET  
           email = 'support@mega-tools.com'
      WHERE idProvedor = 4;

