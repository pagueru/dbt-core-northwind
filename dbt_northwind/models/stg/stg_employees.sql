WITH source AS (
    SELECT *
    FROM {{ ref('raw_employees') }}
)
SELECT
    CAST(employee_id AS SMALLINT) AS employee_id,
    CAST({{ clean_field('last_name') }} AS VARCHAR(50)) AS last_name,
    CAST({{ clean_field('first_name') }} AS VARCHAR(50)) AS first_name,
    CAST({{ clean_field('title') }} AS VARCHAR(50)) AS title,
    CAST({{ clean_field('title_of_courtesy') }} AS VARCHAR(20)) AS title_of_courtesy,
    CAST(birth_date AS TIMESTAMP) AS birth_date,
    CAST(hire_date AS TIMESTAMP) AS hire_date,
    CAST(address AS VARCHAR(100)) AS address,
    CAST(city AS VARCHAR(50)) AS city,
    CAST(region AS VARCHAR(50)) AS region,
    CAST(postal_code AS VARCHAR(20)) AS postal_code,
    CAST(country AS VARCHAR(50)) AS country,
    CAST(home_phone AS VARCHAR(24)) AS home_phone,
    CAST(extension AS VARCHAR(10)) AS extension,
    CAST(photo AS BYTEA) AS photo,
    CAST(notes AS TEXT) AS notes,
    CAST(reports_to AS SMALLINT) AS reports_to,
    CAST(photo_path AS VARCHAR(255)) AS photo_path
FROM source
