WITH source AS (
    SELECT *
    FROM {{ ref('raw_order_details') }}
)
SELECT
    CAST(order_id AS INTEGER) AS order_id,
    CAST(product_id AS SMALLINT) AS product_id,
    CAST(unit_price AS NUMERIC(10, 2)) AS unit_price,
    CAST(quantity AS SMALLINT) AS quantity,
    CAST(discount AS NUMERIC(4, 2)) AS discount
FROM source
