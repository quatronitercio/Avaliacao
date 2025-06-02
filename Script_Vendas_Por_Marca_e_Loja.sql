-- Agrupar a quantidade de vendas que uma determinada Marca por Loja. 

Select lojas.store_name,
       marcas.brand_name,
       Count(pedidos.order_id) AS total vendas
FROM orders pedidos
Join order_items itensvendidos ON pedidos.order_id    = itensvendidos.order_id
Join products produtos         ON pedidos.product_id  = produtos.product_id
Join stores   lojas            ON pedidos.store_id    = lojas.store_id
Join brands   marcas           ON produtos.brand_id   = marcas.brand_id
GROUP BY lojas.store_name, marcas.brand_name
ORDER BY lojas.store_name, marcas.brand_name;
