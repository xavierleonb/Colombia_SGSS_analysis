WITH total_affiliates AS (
	SELECT 
		"contributory" as regimen
		type_affiliate,
		genre,
		quantity_contributory AS quantity,
	FROM
		contributory
	UNION ALL
	SELECT
		"subsidised" as regimen,
		type_affiliate,
		genre,
		quantity_subsidised AS quantity
	FROM
		subsidised
),
SELECT
	regimen,
	type_affiliate,
	genre,
	sum(quantity) As total_quantity
FROM
	total_affiliates
GROUP BY
	 regimen,
    type_affiliate,
    genre;
ORDER BY
