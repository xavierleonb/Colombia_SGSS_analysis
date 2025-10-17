-- Convert "Cantidad de registros" from TEXT to BIGINT (contributivo)
-- Step 1: Remove commas
UPDATE landing.contributivo 
SET "Cantidad de registros" = REPLACE("Cantidad de registros", ',', '')
WHERE "Cantidad de registros" LIKE '%,%';

-- Step 2: Convert to BIGINT
ALTER TABLE landing.contributivo 
ALTER COLUMN "Cantidad de registros" TYPE BIGINT 
USING "Cantidad de registros"::BIGINT;

-- Convert "cantidad" from TEXT to BIGINT (subsidado)
-- Step 1: Remove commas
UPDATE landing.subsidiado 
SET "cantidad" = REPLACE("cantidad", ',', '')
WHERE "cantidad" LIKE '%,%';

-- Step 2: Convert to BIGINT
ALTER TABLE landing.subsidiado 
ALTER COLUMN "cantidad" TYPE BIGINT 
USING "cantidad"::BIGINT;
