use sakila;

-- Deletando um valor
delete from payment -- qual a tabela que quer deletar
where payment_id = 16049; -- filtro coluna payment_id e o nº que será deletado.
