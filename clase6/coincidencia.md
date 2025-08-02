# consultas de coincidencia
> Las consultas de coincidencia utilizan como filtro una cadena de caractéres
> La idea en este caso es que en el resultado se 'contenga' la cadena especificada

> Práctica: obtener nombre, precio y descripción de los productos donde la columna descripción contenga la palabra 'automático'

    SELECT nombreProducto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%automatico%';  

    SELECT razonsocial, telefono  
      FROM proveedores  
      WHERE telefono LIKE '+54%';  

> Utilizamos la palabra reservada **LIKE** en combinación con el caracter **%** (porcentaje) como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter.
