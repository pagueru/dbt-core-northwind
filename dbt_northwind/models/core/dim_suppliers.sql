WITH suppliers AS (
    SELECT
        supplier_id,
        company_name,
        contact_name,
        contact_title,
        address,
        city,
        region,
        postal_code,
        country,
        phone,
        fax
    FROM {{ ref('stg_suppliers') }}
)
SELECT *
	FROM suppliers
