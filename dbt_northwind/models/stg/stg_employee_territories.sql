WITH source AS (
    SELECT *
    FROM {{ ref('raw_employee_territories') }}
)
SELECT
    CAST(employee_id AS SMALLINT) AS employee_id,
    CAST(territory_id AS VARCHAR(20)) AS territory_id
FROM source
