-- Listar os Produtos que não tenham sido comprados

Select produtos.product_id, 
       produtos.product_name, 
       produtos.brand_id, 
       produtos.category_id, 
       produtos.model_year, 
       produtos.lis_price
From products produtos
Left Join order_items comprados ON produtos.product_id = comprados.product_id
Where comprados.product_id IS NULL;