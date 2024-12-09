WITH sales_performance AS (
    SELECT
        p.product_name,
        e.employee_name,
        CAST(o.order_date AS DATE) AS order_date,
        SUM({{ total_sales('o.unit_price', 'o.quantity', 'o.discount') }}) AS total_sales,
        SUM(o.quantity) AS total_quantity
    FROM {{ ref('fact_orders') }} AS o
    INNER JOIN {{ ref('dim_products') }} AS p
        ON o.product_id = p.product_id
    INNER JOIN {{ ref('dim_employees') }} AS e
        ON o.employee_id = e.employee_id
    GROUP BY p.product_name, e.employee_name, o.order_date
)
SELECT
    order_date,
    product_name,
    employee_name,
    total_sales,
    total_quantity
FROM sales_performance
ORDER BY order_date, total_sales DESC
