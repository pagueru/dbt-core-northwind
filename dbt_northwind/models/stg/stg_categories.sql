WITH source AS (
    SELECT *
    FROM {{ ref('raw_categories') }}
)
SELECT
    CAST(category_id AS SMALLINT) AS category_id,
    CAST({{ clean_field('category_name') }} AS VARCHAR(15)) AS category_name,
    CAST({{ clean_field('description') }} AS TEXT) AS description,
    CAST(picture AS BYTEA) AS picture
FROM source
