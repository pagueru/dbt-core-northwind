WITH orders_summary AS (
    SELECT
        o.order_date,
        c.contact_name,
        SUM({{ total_sales('o.unit_price', 'o.quantity', 'o.discount') }}) AS total_sales,
        SUM(o.quantity) AS total_quantity,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM {{ ref('fact_orders') }} AS o
    INNER JOIN {{ ref('dim_customers') }} AS c
        ON o.customer_id = c.customer_id
    GROUP BY o.order_date, c.contact_name
)
SELECT
    order_date,
    contact_name,
    total_sales,
    total_quantity,
    total_orders
FROM orders_summary
ORDER BY order_date, total_sales DESC
