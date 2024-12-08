WITH customers AS (
    SELECT
        customer_id,
        company_name,
        contact_name,
        contact_title,
        city,
        region,
        postal_code,
        country,
        phone
    FROM {{ ref('stg_customers') }}
)
SELECT *
	FROM customers
