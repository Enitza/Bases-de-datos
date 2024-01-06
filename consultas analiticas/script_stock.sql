select sucursal_id, SUM(cantidad) from stock
group by sucursal_id;