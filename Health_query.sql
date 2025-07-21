WITH total_affiliates AS (
	SELECT 
		"contributory" as regimen,
		department,
		municipality,
		entity_name,
		type_affiliate,
		genre,
		quantity_contributory AS quantity,
	FROM
		contributory
	UNION ALL
	SELECT
		"subsidised" as regimen,
		department,
		municipality,
		entity_name,
		type_affiliate,
		genre,
		quantity_subsidised AS quantity
	FROM
		subsidised
),
SELECT
    regimen,
    department,
    municipality,
    entity_name,
    type_affiliate,
    genre,
    SUM(quantity) AS total_quantity
FROM
	total_affiliates
GROUP BY
	regimen,
    department, 
    municipality,
    entity_name,
    type_affiliate,
    genre
ORDER BY
	department,
    municipality;
