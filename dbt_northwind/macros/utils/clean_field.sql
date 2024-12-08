{% macro clean_field(field) %}
    NULLIF(TRIM({{ field  }}), '')
{% endmacro %}
