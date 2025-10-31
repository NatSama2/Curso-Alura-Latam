USE ventas_jugos;

INSERT INTO tb_producto(
CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA)
VALUES (
'1040107', 'Light', 'Sandia', '350 ml', 'Lata', 4.56  
);

SELECT * FROM tb_producto;

INSERT INTO tb_producto(
CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA)
VALUES (
'1040108', 'Light', 'Guanábaba', '350 ml', 'Lata', 4.00 
);

INSERT INTO tb_producto VALUES 
('1040109', 'Light', 'Asaí', '350 ml', 'Lata', 5.60),
('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00),
('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.50);