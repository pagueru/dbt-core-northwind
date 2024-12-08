WITH employees AS (
    SELECT
        employee_id,
        first_name || ' ' || last_name AS employee_name,
        last_name,
        first_name,
        title,
        hire_date,
        birth_date,
        city,
        region,
        postal_code,
        country,
        home_phone,
        reports_to
    FROM {{ ref('stg_employees') }}
)
SELECT *
	FROM employees
