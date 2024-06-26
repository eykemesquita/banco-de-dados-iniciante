select current_user()

drop table produto

create table produto (
  id bigint primary key auto_increment,
  nome varchar(50),
  valor_unitario decimal(10,2),
  quantidade_estoque integer
) engine=InnoDB

create table item_pedido (
  pedido_id bigint,
  produto_id bigint,
  quantidade integer,
  primary key (pedido_id, produto_id),
  foreign key (pedido_id)
    references pedido(id),
  foreign key (produto_id)
    references produto(id)
) engine=InnoDB
