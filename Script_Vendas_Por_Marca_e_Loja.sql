-- Agrupar a quantidade de vendas que uma determinada Marca por Loja. 
-- Feito a ligação entre as tabelas orders (pedidos), order_items (itens vendidos), products (produtos), stores (lojas) e brands (marcas)
-- Realizado o agrupamento por nome da loja e nome da marca
-- Ordenado por nome da loja e nome da marca

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
