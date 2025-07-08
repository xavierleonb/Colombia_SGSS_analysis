# SQL_health_sys
#Hyphotesis and questions:
#More than 50% of the entire country's health system affiliates (both contributory and subsidised combined) are concentrated in the three largest metropolitan areas: Bogotá D.C., Medellín (Antioquia), and Cali (Valle del Cauca).
#Question it answers: How centralized is the health system's population in the main economic hubs?
Queries about the Adres. Colombia´s National Health System

# This query able you to explore how the affialiates are distributed acrros all the municipalities of the country. 
WITH total_affiliates as ( 
	SELECT
		municipality,
		type_affiliate,
		quantity_contributory as quantity
		FROM contributory
	UNION ALL
	SELECT 
		municipality, 
		type_affiliate,
		quantity_subsidised as quantity
		FROM subsidised
)
SELECT
	municipality,
	sum(CASE WHEN type_affiliate="COTIZANTE" THEN quantity ELSE 0 END) as total_contributor,
	sum(CASE WHEN type_affiliate="BENEFICIARIO" THEN quantity ELSE 0 END) as total_beneficiaries,
	sum(CASE WHEN type_affiliate="ADICIONAL" THEN quantity ELSE 0 END) as total_additional
FROM total_affiliates	
GROUP BY municipality
ORDER BY municipality ASC
