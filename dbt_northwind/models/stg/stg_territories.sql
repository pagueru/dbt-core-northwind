WITH source AS (
    SELECT *
    FROM {{ ref('raw_territories') }}
)
SELECT
    CAST(territory_id AS VARCHAR(20)) AS territory_id,
    CAST({{ clean_field('territory_description') }} AS VARCHAR(50)) AS territory_description,
    CAST(region_id AS SMALLINT) AS region_id
FROM source
