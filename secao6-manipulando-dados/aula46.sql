use sakila;

-- Atualizando um valor
update payment
set 
	amount = 15.99
where
	payment_id = 1;
