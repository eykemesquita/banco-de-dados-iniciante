select current_user()

 
alter table pedido
 add column forma_pagamento varchar(20) not null
 
alter table pedido
 add column status varchar(20) not null default 'ORCAMENTO'
 

alter table pedido
 drop column status
 
