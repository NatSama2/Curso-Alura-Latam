SELECT * FROM tb_producto;

UPDATE tb_producto SET PRECIO_LISTA= 5 WHERE CODIGO = '1000889';

UPDATE tb_producto SET DESCRIPCION= 'Sabor de la Montaña',
TAMANO= '1 Litro', ENVASE = 'Botella PET' WHERE 
CODIGO = '1000889';

SELECT * FROM tb_cliente;
UPDATE tb_cliente SET VOLUMEN_COMPRA = VOLUMEN_COMPRA/10;

USE ventas_jugos;

UPDATE tb_vendedor A
INNER JOIN
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = SUBSTRING(B.MATRICULA,3,3)
SET A.DE_VACACIONES = B.VACACIONES;

INSERT INTO tb_producto (CODIGO,DESCRIPCION,SABOR,TAMANO,ENVASE,PRECIO_LISTA) 
VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);
         
DELETE FROM tb_producto WHERE CODIGO = '1001000';

DELETE FROM tb_producto WHERE TAMANO = '1 Litro';

DELETE FROM tb_producto
WHERE CODIGO NOT IN (SELECT CODIGO_DEL_PRODUCTO 
FROM jugos_ventas.tabla_de_productos);

CREATE TABLE `tb_producto2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);

INSERT INTO tb_producto2
SELECT * FROM tb_producto;

UPDATE tb_producto2 SET PRECIO_LISTA = PRECIO_LISTA* 1.15;

DELETE FROM tb_producto2;

START TRANSACTION;

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('256',
'Fernando Ruiz',
'Oblatos',
0.1,
'2015-06-14',
0);
INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('257',
'Fernando Rojas',
'Oblatos',
0.1,
'2015-06-14',
0);

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('258',
'David Rojas',
'Del Valle',
0.15,
'2015-06-14',
0);

UPDATE tb_vendedor SET COMISION = COMISION * 1.05;

ROLLBACK;

SELECT * FROM tb_vendedor;

START TRANSACTION;

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('257',
'Fernando Rojas',
'Oblatos',
0.1,
'2015-06-14',
0);

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
('258',
'David Rojas',
'Del Valle',
0.15,
'2015-06-14',
0);

UPDATE tb_vendedor SET COMISION = COMISION * 1.05;

SELECT * FROM tb_vendedor;

COMMIT;

SELECT * FROM tb_vendedor;