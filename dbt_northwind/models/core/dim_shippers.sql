WITH shippers AS (
    SELECT
        shipper_id,
        company_name,
        phone
    FROM {{ ref('stg_shippers') }}
)
SELECT *
FROM shippers
