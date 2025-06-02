-- Listar os Produtos sem Estoque;
-- Feito a ligação entre as tabelas products (produtos) e stocks (estoque) onde o resultado seja produtos com estoque zerado

Select produtos.product_id, 
       produtos.product_name, 
       produtos.brand_id, 
       produtos.category_id, 
       produtos.model_year, 
       produtos.lis_price,
       estoque.quantity
From products produtos
Left Join stocks estoque ON produtos.product_id = estoque.product_id
Where estoque.quantity_id = 0;
