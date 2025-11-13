SELECT RAND();

-- MIN = 20 Y MAX= 250
-- (RAND() * (MAX-MIN+1))+MIN
SELECT (RAND() * (250-20+1))+20 AS ALEATORIO;
SELECT FLOOR((RAND() * (250-20+1))+20) AS ALEATORIO;

SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_aleatorio(1,10) AS RESULTADO;

SELECT * FROM clientes;
SELECT * FROM clientes LIMIT 5;
SELECT * FROM clientes LIMIT 5,1;

SELECT f_cliente_aleatorio() AS CLIENTE;
SELECT f_producto_aleatorio() AS PRODUCTO;
SELECT f_vendedor_aleatorio() AS VENDEDOR;
