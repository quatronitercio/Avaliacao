-- Listar todos Clientes que não tenham realizado uma compra;

Select clientes.customer_id, 
       clientes.first_name, 
       clientes.last_name, 
       clientes.phone, 
       clientes.eamil, 
       clientes.street,
       clientes.city,
       clientes.state,
       clientes.zi_code
From customers clientes
Left Join orders pedidos ON clientes.customer_id = pedidos.customer_id
Where pedidos.order_id IS NULL;