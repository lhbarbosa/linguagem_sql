-- Exibindo quanto cada cliente gasto na locadora.

-- O "GROUP BY" em SQL é usado para agrupar linhas que têm valores 
-- iguais em colunas especificadas e é frequentemente utilizado em 
-- conjunto com funções de agregação (como COUNT, SUM, AVG, MAX, MIN).

-- O "ORDER BY" em SQL é usado para ordenar os resultados de uma consulta 
-- com base em uma ou mais colunas.

select 
	customer_id,
    SUM(amount) as total
from payment
group by customer_id -- agrupa todos os valores a partir da tabela customer_id.
order by total desc -- ordena a partir da tabela total do maior para o menor.