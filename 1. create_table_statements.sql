CREATE TABLE landing.contributivo (
    "Género" TEXT,
    "Grupo etario" TEXT,
    "Código de la entidad" TEXT,
    "Nombre de la entidad" TEXT,
    "Régimen" TEXT,
    "Tipo de afiliado" TEXT,
    "Estado del afiliado" TEXT,
    "Condición del beneficiario" TEXT,
    "Zona de Afiliación" TEXT,
    "Departamento" TEXT,
    "Municipio" TEXT,
    "tps_nvl_ssb_id" TEXT,
    "Nivel del Sisbén" TEXT,
    "Cantidad de registros" TEXT  --We need convert this column to BIGINT
);

CREATE TABLE landing.subsidado (
    "Genero" TEXT,
    "Grupo etario" TEXT,
    "Código de la entidad" TEXT,
    "Nombre de la entidad" TEXT,
    "Régimen al que pertenece" TEXT,
    "Tipo de afiliado" TEXT,
    "Estado del afiliado" TEXT,
    "Condición del beneficiario" TEXT,
    "Zona de Afiliación" TEXT,
    "Departamento" TEXT,
    "Municipio" TEXT,
    "Nivel del Sisbén" TEXT,
    "Grupo poblacional del afiliado" TEXT,
    "cantidad" TEXT  --We need convert this column to BIGINT
);
