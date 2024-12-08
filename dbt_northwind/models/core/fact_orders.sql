WITH orders AS (
    SELECT
        o.order_id,
        o.customer_id,
        o.employee_id,
        o.order_date,
        o.required_date,
        o.shipped_date,
        o.freight,
        od.product_id,
        od.unit_price,
        od.quantity,
        od.discount,
        p.supplier_id,
        s.company_name AS supplier_name,
        c.company_name AS customer_name,
        e.first_name || ' ' || e.last_name AS employee_name
    FROM {{ ref('stg_orders') }} o
    INNER JOIN {{ ref('stg_order_details') }} od
		ON o.order_id = od.order_id
    INNER JOIN {{ ref('stg_products') }} p
		ON od.product_id = p.product_id
    INNER JOIN {{ ref('stg_customers') }} c
		ON o.customer_id = c.customer_id
    INNER JOIN {{ ref('stg_employees') }} e
		ON o.employee_id = e.employee_id
    INNER JOIN {{ ref('stg_suppliers') }} s
		ON p.supplier_id = s.supplier_id
)
SELECT
    order_id,
    customer_id,
    employee_id,
    order_date,
    shipped_date,
    freight,
    product_id,
    unit_price,
    quantity,
    discount,
    supplier_name,
    customer_name,
    employee_name
FROM orders
