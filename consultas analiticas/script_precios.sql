select MAX (precio_unitario) as "Precio maximo", 
MIN (precio_unitario) as "Precio minimo", 
AVG (precio_unitario)as "Precio promedio" 
from PRODUCTO;