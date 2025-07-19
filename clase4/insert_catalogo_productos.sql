-- Insertar categorías
INSERT INTO categorias
    (nombreCategoria)
VALUES
         ('Televisores'),
         ('Heladeras'),
         ('Lavarropas'),
         ('Aires Acondicionados'),
         ('Cocinas'),
         ('Microondas'),
         ('Notebooks'),
         ('Celulares'),
         ('Tablets'),
         ('Parlantes'),
         ('Auriculares'),
         ('Monitores'),
         ('Cámaras'),
         ('Impresoras'),
         ('Electrodomésticos'),
         ('Calefacción'),
         ('Pequeños Electrodomésticos'),
         ('Hogar Inteligente'),
         ('Hornos Eléctricos'),
         ('Gaming');

-- Insertar marcas
INSERT INTO marcas
    (nombreMarca)
VALUES
         ('Samsung'),
         ('LG'),
         ('Sony'),
         ('Philips'),
         ('Motorola'),
         ('Noblex'),
         ('Whirlpool'),
         ('Drean'),
         ('Electrolux'),
         ('BGH'),
         ('Lenovo'),
         ('HP'),
         ('Asus'),
         ('Acer'),
         ('Apple'),
         ('Xiaomi'),
         ('Huawei'),
         ('TCL'),
         ('Pioneer'),
         ('JBL'),
         ('Panasonic'),
         ('Canon'),
         ('Epson'),
         ('Brother'),
         ('Philco'),
         ('Peabody'),
         ('Liliana'),
         ('Atma'),
         ('Hisense'),
         ('Haier'),
         ('Dell'),
         ('Banghó');

-- Insertar productos (solo 10 ejemplos acá por brevedad, los 60 completos te los paso después si querés)
INSERT INTO productos
    (nombreProducto, precio, idMarca, idCategoria, descripcion, imagen, activo)
VALUES
  ('Smart TV 55" Samsung 4K UHD', 479999.99, 1, 1, 'Televisor Smart TV Samsung de 55 pulgadas con resolución 4K UHD y tecnología HDR.', 'tv_samsung_55.jpg', true),
  ('Heladera No Frost Whirlpool 300L', 389999.00, 7, 2, 'Heladera con freezer No Frost, gran capacidad y eficiencia energética A.', 'heladera_whirlpool_300l.jpg', true),
  ('Lavarropas Automático Drean 6kg', 259999.99, 8, 3, 'Lavarropas automático Drean Next 6.06 Eco con 800 rpm y 15 programas de lavado.', 'lavarropas_drean_6kg.jpg', true),
  ('Aire Acondicionado Split LG 3000W Frío-Calor', 429999.50, 2, 4, 'Split LG con tecnología Inverter y control por Wi-Fi.', 'ac_lg_3000w.jpg', true),
  ('Notebook HP 15" Ryzen 5 8GB 512GB SSD', 599999.99, 12, 7, 'Notebook HP ideal para uso profesional y hogareño.', 'notebook_hp_r5.jpg', true),
  ('Celular Motorola G73 5G 128GB', 229999.00, 5, 8, 'Smartphone con excelente rendimiento y batería de larga duración.', 'moto_g73.jpg', true),
  ('Tablet Samsung Galaxy Tab A8 32GB', 189999.00, 1, 9, 'Tablet ideal para entretenimiento y estudio.', 'tablet_samsung_a8.jpg', true),
  ('Auriculares JBL Bluetooth Tune 510BT', 49999.00, 20, 11, 'Auriculares inalámbricos con sonido JBL Pure Bass.', 'jbl_tune510bt.jpg', true),
  ('Monitor LG 24" Full HD IPS', 124999.00, 2, 12, 'Monitor con panel IPS, ideal para diseño y oficina.', 'monitor_lg_24.jpg', true),
  ('Impresora Epson EcoTank L3250', 154999.00, 23, 14, 'Impresora multifunción con sistema de tinta recargable.', 'epson_l3250.jpg', true);
