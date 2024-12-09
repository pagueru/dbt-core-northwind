WITH monthly_revenues AS (
    SELECT
        EXTRACT(YEAR FROM order_date) AS year,
        EXTRACT(MONTH FROM order_date) AS month,
		SUM({{ total_sales('unit_price', 'quantity', 'discount') }}) AS monthly_revenue
    FROM {{ ref('fact_orders') }}
    GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
),
cumulative_revenues AS (
    SELECT
        year,
        month,
        monthly_revenue,
        SUM(monthly_revenue) OVER (PARTITION BY year ORDER BY month) AS ytd_revenue
    FROM monthly_revenues
)
SELECT
    year,
    month,
    monthly_revenue,
    monthly_revenue - LAG(monthly_revenue) OVER (PARTITION BY year ORDER BY month) AS monthly_difference,
    ytd_revenue,
    ROUND(
        ((monthly_revenue - LAG(monthly_revenue) OVER (PARTITION BY year ORDER BY month)) /
         NULLIF(LAG(monthly_revenue) OVER (PARTITION BY year ORDER BY month), 0)) * 100, 2
    ) AS monthly_change_percentage
FROM cumulative_revenues
ORDER BY year, month
