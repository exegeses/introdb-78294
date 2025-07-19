# Borrado de registross

> Para eliminar registros dentro de una tabla utilizamos el comando **DELETE**
> Debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición

> Sintaxis: 

    DELETE FROM nombretabla  
      WHERE colPK = valorID;  


> Ejemplo práctico:

    DELETE FROM proveedores
      WHERE idProveedor = 6;  

## Workbench con modo seguro
> MySQL Workbench cuenta con un modo seguro que protege el borrado cuando no utilizamos un filtro



