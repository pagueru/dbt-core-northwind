WITH top_products AS (
    SELECT
        p.product_id,
        p.product_name,
        SUM({{ total_sales('o.unit_price', 'o.quantity', 'o.discount') }}) AS total_sales
    FROM {{ ref('fact_orders') }} AS o
    INNER JOIN {{ ref('dim_products') }} AS p
        ON o.product_id = p.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT
	ROW_NUMBER() OVER (ORDER BY total_sales DESC) AS top_id,
    product_id,
    product_name,
    ROUND(total_sales, 2) AS total_sales
FROM top_products
ORDER BY total_sales DESC
