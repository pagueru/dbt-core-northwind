WITH source AS (
    SELECT *
    FROM {{ ref('raw_customers') }}
)
SELECT
    CAST(customer_id AS CHAR(5)) AS customer_id,
    CAST({{ clean_field('company_name') }} AS VARCHAR(50)) AS company_name,
    CAST({{ clean_field('contact_name') }} AS VARCHAR(50)) AS contact_name,
    CAST({{ clean_field('contact_title') }} AS VARCHAR(50)) AS contact_title,
    CAST(address AS VARCHAR(100)) AS address,
    CAST(city AS VARCHAR(50)) AS city,
    CAST(region AS VARCHAR(50)) AS region,
    CAST(postal_code AS VARCHAR(20)) AS postal_code,
    CAST(country AS VARCHAR(50)) AS country,
    CAST(phone AS VARCHAR(24)) AS phone,
    CAST(fax AS VARCHAR(24)) AS fax
FROM source
