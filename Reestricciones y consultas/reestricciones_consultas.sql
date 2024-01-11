/* PARTE 6 */

--Calcular el precio promedio de los productos en cada categoría
select categoria.nombre as "Nombre_categoria", avg(producto.precio_unitario) as "Precio_promedio"
from producto
join categoria on categoria.id = producto.categoria_id
group by categoria.nombre;

--Obtener la cantidad total de productos en stock por categoría
select categoria.nombre as "Nombre_categoria", sum(stock.cantidad) as "Total_productos"
from stock
join producto on stock.producto_id = producto.id 
join categoria on producto.categoria_id = categoria.id
group by categoria.nombre;

--Calcular el total de ventas por sucursal
select sucursal.nombre as "Nombre_sucursal", sum(orden.total) as "Total_ventas"
from orden
join sucursal on orden.sucursal_id = sucursal.id 
group by sucursal.nombre;

--Obtener el cliente que ha realizado el mayor monto de compras
SELECT cliente.nombre, sum(orden.total) AS "Total_compra"
FROM orden
join cliente on orden.cliente_id = cliente.id
group by cliente.nombre
order by "Total_compra" desc limit 1;



