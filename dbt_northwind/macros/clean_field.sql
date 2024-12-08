{% macro clean_field(column_name) %} nullif(trim({{ column_name }}), '') {% endmacro %}
