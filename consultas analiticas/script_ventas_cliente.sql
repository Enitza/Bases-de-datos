select cliente_id,  sum(total) from orden
group by cliente_id;