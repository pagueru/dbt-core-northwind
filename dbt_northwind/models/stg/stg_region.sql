WITH source AS (
    SELECT *
    FROM {{ ref('raw_region') }}
)
SELECT
    CAST(region_id AS SMALLINT) AS region_id,
	CAST({{ clean_field('region_description') }} AS VARCHAR(50)) AS region_description
FROM source
