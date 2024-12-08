WITH source AS (
    SELECT *
    FROM {{ ref('raw_products') }}
)
SELECT
    CAST(product_id AS SMALLINT) AS product_id,
    CAST({{ clean_field('product_name') }} AS VARCHAR(50)) AS product_name,
    CAST(supplier_id AS SMALLINT) AS supplier_id,
    CAST(category_id AS SMALLINT) AS category_id,
    CAST(quantity_per_unit AS VARCHAR(20)) AS quantity_per_unit,
    CAST(unit_price AS NUMERIC(10, 2)) AS unit_price,
    CAST(units_in_stock AS SMALLINT) AS units_in_stock,
    CAST(units_on_order AS SMALLINT) AS units_on_order,
    CAST(reorder_level AS SMALLINT) AS reorder_level,
    CAST(discontinued AS SMALLINT) AS discontinued
FROM source
