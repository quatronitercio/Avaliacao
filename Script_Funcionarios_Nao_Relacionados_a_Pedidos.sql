-- Listar os Funcionarios que não estejam relacionados a um Pedido.

Select funcionarios.staff_id, 
       funcionarios.first_name, 
       funcionarios.last_name, 
       funcionarios.email, 
       funcionarios.phone, 
       funcionarios.active 
From staffs funcionarios
Left Join orders pedidos ON funcionarios.staff_id = pedidos.staff_id
Where pedidos.staff_id IS NULL;
