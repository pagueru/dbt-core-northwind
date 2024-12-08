WITH customer_analysis AS (
    SELECT
        c.contact_name,
        c.country,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM({{ total_sales('o.unit_price', 'o.quantity', 'o.discount') }}) AS total_sales,
        MAX(o.order_date) AS last_purchase_date
    FROM {{ ref('fact_orders') }} AS o
    INNER JOIN {{ ref('dim_customers') }} AS c
        ON o.customer_id = c.customer_id
    GROUP BY c.contact_name, c.country
)
SELECT
    contact_name,
    country,
    total_orders,
    total_sales,
    last_purchase_date
FROM customer_analysis
ORDER BY total_sales DESC
