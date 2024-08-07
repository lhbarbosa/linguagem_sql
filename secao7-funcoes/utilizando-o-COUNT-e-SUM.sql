USE sakila;

SELECT 
	MAX(amount) AS Maior,
    MIN(amount) AS Menor,
    AVG(amount) AS 'Média de Valores',
    SUM(amount) AS 'Total de Vendas',
    COUNT(amount) AS 'Número de Vendas'
FROM payment
WHERE staff_id = 1;

