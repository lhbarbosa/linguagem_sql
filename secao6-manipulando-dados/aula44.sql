use sakila;

-- Criando um backup de uma tabela.
create table payment_backup as
select * from payment;

