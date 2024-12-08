WITH source AS (
    SELECT *
    FROM {{ ref('raw_shippers') }}
)
SELECT
    CAST(shipper_id AS SMALLINT) AS shipper_id,
    CAST({{ clean_field('company_name') }} AS VARCHAR(50)) AS company_name,
    CAST(phone AS VARCHAR(24)) AS phone
FROM source
