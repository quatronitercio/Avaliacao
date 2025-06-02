-- Listar os Produtos que não tenham sido comprados
-- Feito a ligação entre as tabelas products (produtos) e order_items (itens comprados) onde o resultado seja itens comprados nulo

Select produtos.product_id, 
       produtos.product_name, 
       produtos.brand_id, 
       produtos.category_id, 
       produtos.model_year, 
       produtos.lis_price
From products produtos
Left Join order_items comprados ON produtos.product_id = comprados.product_id
Where comprados.product_id IS NULL;
