select current_user()

select * from pedido

insert into pedido (data_criacao, data_entrega, valor_frete, valor_total, cliente_id)
 values (now(), '2014-08-24', 10.00, 100.00, 1) 
 

select * from pedido
 where month(data_criacao) = 7
   and year(data_criacao) = 2014

select * from pedido
 where data_criacao >= '2014-07-01 00:00:00'
   and data_criacao <= '2014-07-31 23:59:59'
