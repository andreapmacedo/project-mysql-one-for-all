SELECT
    MIN(p.plan_price) AS faturamento_minimo,
    MAX(p.plan_price) AS faturamento_maximo,
    ROUND(AVG(p.plan_price),2) as faturamento_medio,
	SUM(p.plan_price) as faturamento_total
FROM
    `SpotifyClone`.tb_plan AS p
INNER JOIN
    `SpotifyClone`.tb_user AS u
ON
    p.id = u.id;
    

