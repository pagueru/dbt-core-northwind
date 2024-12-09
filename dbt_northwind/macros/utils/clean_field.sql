{% macro clean_field(field) %}
    NULLIF(REGEXP_REPLACE(TRIM({{ field }}), '\s+', ' ', 'g'), '')
{% endmacro %}
