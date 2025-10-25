Use Jugos;

UPDATE tbproductos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml' ;

UPDATE tbproductos SET precio = 28.51
WHERE producto = '695594' ;

UPDATE tbproductos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119' ;

SELECT * FROM tbproductos; 


DELETE FROM tbproductos
WHERE producto = '773912';

SELECT * FROM tbproductos; 


USE jugos;

INSERT INTO tbproductos(
producto, nombre, envase, volumen, sabor, precio)
VALUES ('773912', 'clean', 'botella pet', '1 litro', 'naranja', 8.01);

SELECT * FROM tbproductos;

ALTER TABLE tbproductos ADD PRIMARY KEY(producto);


USE jugos;

ALTER TABLE tbclientes ADD PRIMARY KEY(DNI);

ALTER TABLE tbclientes ADD COLUMN(fecha_nacimiento DATE);

INSERT INTO tbclientes(
DNI, NOMBRE, DIRECCION1, DIRECCION2, BARRIO, CIUDAD, ESTADO,
CP, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA, FECHA_NACIMIENTO) 
VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol N°25', '', 'Los Laureles', 'Ciudad de México', 'México',
'65784', 55, 'M', 1000000, 2000, 0, '1971-05-25');

SELECT * FROM tbclientes;


SELECT * FROM tbcliente;

SELECT * FROM tbproducto;

SELECT * FROM tbproducto 
WHERE SABOR = 'Maracuyá' OR SABOR = 'Naranja';

SELECT * FROM tbproducto 
WHERE ENVASE = 'Botella de Vidrio';

SELECT * FROM tbcliente
WHERE EDAD >= 27;

SELECT * FROM tbcliente
WHERE EDAD <> 26;

SELECT * FROM tbcliente
WHERE NOMBRE >= 'Erica Carvajo';

SELECT * FROM tbproducto
WHERE PRECIO_LISTA > 28.51;

SELECT * FROM tbproducto
WHERE PRECIO_LISTA BETWEEN 28.50 AND 28.52;

SELECT * FROM tbcliente
WHERE FECHA_NACIMIENTO = '1995-01-13';

SELECT * FROM tbcliente
WHERE YEAR(FECHA_NACIMIENTO) = 1995;

SELECT * FROM tbcliente
WHERE DAY(FECHA_NACIMIENTO) = 20;


USE jugos;

SELECT * FROM tbproducto
WHERE PRECIO_LISTA BETWEEN 28.50 AND 28.52;

SELECT * FROM tbproducto
WHERE PRECIO_LISTA >= 28.50 AND PRECIO_LISTA < 28.52;

SELECT * FROM tbproducto
WHERE ENVASE = 'Lata' OR ENVASE = 'Botella PET';

SELECT * FROM tbproducto
WHERE (PRECIO_LISTA >= 15 AND PRECIO_LISTA < 25) 
OR (ENVASE = 'Lata' OR ENVASE = 'Botella PET');

SELECT * FROM tbproducto
WHERE (PRECIO_LISTA >= 15 AND TAMANO >= '1 Litro') 
AND (ENVASE = 'Lata' OR ENVASE = 'Botella PET');


