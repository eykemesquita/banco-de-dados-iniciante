select current_user()

explain select * from cliente 
           where nome = 'João Silva'
           
alter table cliente
  add index ix_nome (nome)
