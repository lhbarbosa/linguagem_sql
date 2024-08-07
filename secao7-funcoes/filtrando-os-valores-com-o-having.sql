-- No SQL, as cláusulas WHERE e HAVING são usadas para filtrar 
-- registros, mas são aplicadas em diferentes momentos do processo de consulta. 
-- Aqui está uma explicação detalhada sobre cada uma:

-- WHERE
-- Propósito: Filtra registros antes da agregação.
-- Aplicação: Usado para especificar uma condição que os registros devem satisfazer 
-- antes de qualquer operação de agrupamento ou agregação.
-- Sintaxe: É usada em conjunto com SELECT, FROM, e outras cláusulas básicas.

-- HAVING
-- Propósito: Filtra grupos de registros após a agregação.
-- Aplicação: Usado para especificar uma condição que os grupos de 
-- registros devem satisfazer após a aplicação de funções de agregação como SUM, AVG, COUNT, etc.
-- Sintaxe: É usada em conjunto com GROUP BY e funções agregadas.

-- Diferença Principal
-- A cláusula WHERE filtra registros individuais antes de qualquer agregação, 
-- enquanto a cláusula HAVING filtra grupos de registros após as operações de agregação.
-- Em resumo, use WHERE para filtrar registros antes de realizar agrupamentos
-- e use HAVING para filtrar os resultados após os agrupamentos e agregações.

-- Ex.: Fornecer uma lista com total >= a $150.00
select 
	cus.customer_id as ID,
    cus.first_name as Nome,
    cus.last_name as Sobrenome,
    SUM(amount) as Total

from payment pay
join customer cus using(customer_id)

group by customer_id
order by Total desc	