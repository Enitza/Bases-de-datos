create table PRODUCTOS (
ID SERIAL primary key,
NOMBRE VARCHAR(50),
CATEGORIA VARCHAR(50),
PRECIO DECIMAL(10, 2),
CANTIDAD INTEGER);

insert into PRODUCTOS (ID, NOMBRE, CATEGORIA, PRECIO, CANTIDAD) 
values (1, 'camiseta', 'ropa', 19.99, 50),
(2, 'Zapatos', 'Calzado', 59.99, 20),
(3,	'Pantalon',	'Ropa',	29.99, 30),
(4, 'Gorra', 'Accesorios', 9.99, 100),
(5, 'Bufanda', 'Accesorios', 14.99,	40),
(6,	'Vaso',	'Hogar', 4.99, 80),
(7,	'Libreta', 'Papeleria',	2.99, 120),
(8,	'Reloj', 'Accesorios', 39.99, 15),
(9,	'Juguete', 'Infantil', 12.99, 70),
(10, 'Bolso', 'Accesorios',	24.99, 25);

select * from PRODUCTOS 
where precio >= 20
and CATEGORIA = 'Accesorios';

select * from PRODUCTOS
where CANTIDAD <=50;

update PRODUCTOS
set CANTIDAD = CANTIDAD + 10
where CATEGORIA = 'Ropa';



