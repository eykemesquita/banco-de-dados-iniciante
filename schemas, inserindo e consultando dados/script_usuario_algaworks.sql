use pedido_venda

show grants

-- yyyy-mm-dd
insert into cliente (nome, email, data_nascimento) 
 values ('Maria Santos', 'maria@maria.com', '1991-02-20')
 
select *
   from cliente
   
insert pedido (data_criacao, data_entrega, valor_frete, valor_total) 
 values ('2014-06-10 10:03:20', '2014-06-12', 30.25, 352.50)
 
select * from pedido
