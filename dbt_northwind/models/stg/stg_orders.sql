WITH source AS (
    SELECT *
    FROM {{ ref('raw_orders') }}
)
SELECT
    CAST(order_id AS INTEGER) AS order_id,
    CAST(customer_id AS CHAR(5)) AS customer_id,
    CAST(employee_id AS SMALLINT) AS employee_id,
    CAST(order_date AS TIMESTAMP) AS order_date,
    CAST(required_date AS TIMESTAMP) AS required_date,
    CAST(shipped_date AS TIMESTAMP) AS shipped_date,
    CAST(ship_via AS SMALLINT) AS ship_via,
    CAST(freight AS NUMERIC(10, 2)) AS freight,
    CAST(ship_name AS VARCHAR(50)) AS ship_name,
    CAST(ship_address AS VARCHAR(100)) AS ship_address,
    CAST(ship_city AS VARCHAR(50)) AS ship_city,
    CAST(ship_region AS VARCHAR(50)) AS ship_region,
    CAST(ship_postal_code AS VARCHAR(20)) AS ship_postal_code,
    CAST(ship_country AS VARCHAR(50)) AS ship_country
FROM source
