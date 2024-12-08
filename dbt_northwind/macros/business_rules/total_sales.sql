{% macro total_sales(unit_price, quantity, discount) %}
    ({{ unit_price }} * {{ quantity }} * (1 - {{ discount }}))
{% endmacro %}
