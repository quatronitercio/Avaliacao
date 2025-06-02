-- Listar os Funcionarios que não estejam relacionados a um Pedido.
-- Feito a ligação entre as tabelas staffs (funcionarios) e orders (pedidos) listando o resultado nulo na tabela de funcionarios

Select funcionarios.staff_id, 
       funcionarios.first_name, 
       funcionarios.last_name, 
       funcionarios.email, 
       funcionarios.phone, 
       funcionarios.active 
From staffs funcionarios
Left Join orders pedidos ON funcionarios.staff_id = pedidos.staff_id
Where pedidos.staff_id IS NULL;
