use sakila;

-- Maior venda $ "max()"
-- Menor venda $ "min()"
-- Média de venda $ "avg()"
-- "AS" é usada para criar um apelido temporário para uma tabela ou coluna nas consultas.
select 
	max(amount) as Maior,
    min(amount)as Menor,
    avg(amount) as 'Media de Valores'
from payment;




