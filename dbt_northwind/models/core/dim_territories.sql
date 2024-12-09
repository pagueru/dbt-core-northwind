WITH territories AS (
    SELECT
        t.territory_id,
        t.territory_description,
        r.region_id,
        r.region_description
    FROM {{ ref('stg_territories') }} t
    INNER JOIN {{ ref('stg_region') }} r
		ON t.region_id = r.region_id
)
SELECT *
FROM territories
