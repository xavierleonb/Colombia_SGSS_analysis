-- Create indexes for better JOIN performance
CREATE INDEX idx_contributivo_entidad ON landing.contributivo ("Nombre de la entidad");
CREATE INDEX idx_subsidiado_entidad ON landing.subsidado ("Nombre de la entidad");
CREATE INDEX idx_contributivo_cantidad ON landing.contributivo ("Cantidad de registros");
CREATE INDEX idx_subsidiado_cantidad ON landing.subsidado ("cantidad");

-- Consolidated query for affiliates across both regimes
WITH contributivo_agg AS (
    SELECT 
        "Nombre de la entidad",
        SUM("Cantidad de registros") AS afiliados_contributivo
    FROM landing.contributivo
    GROUP BY "Nombre de la entidad"
),
subsidiado_agg AS (
    SELECT 
        "Nombre de la entidad", 
        SUM("cantidad") AS afiliados_subsidiado
    FROM landing.subsidado
    GROUP BY "Nombre de la entidad"
)
SELECT
    COALESCE(c."Nombre de la entidad", s."Nombre de la entidad") AS "Nombre de la entidad",
    COALESCE(c.afiliados_contributivo, 0) AS afiliados_contributivo,
    COALESCE(s.afiliados_subsidiado, 0) AS afiliados_subsidiado,
    COALESCE(c.afiliados_contributivo, 0) + COALESCE(s.afiliados_subsidiado, 0) AS total_afiliados
FROM contributivo_agg c
FULL OUTER JOIN subsidiado_agg s 
    ON c."Nombre de la entidad" = s."Nombre de la entidad"
ORDER BY total_afiliados DESC;
