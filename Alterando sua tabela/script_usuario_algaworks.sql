select current_user()

select * from pedido


insert into pedido (data_criacao, data_entrega, valor_total, cliente_id, forma_pagamento)
  values (now(), '2014-08-25', 200, 1, 'DINHEIRO')

insert into pedido (data_criacao, data_entrega, valor_total, cliente_id, forma_pagamento
    , status)
  values (now(), '2014-08-25', 200, 1, 'DINHEIRO', 'CANCELADO')
 

 
