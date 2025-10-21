{% macro learn_variables() %}
    {% set your_name = "zoltan" %}
    {{ log("hello " ~ your_name, info=True) }}

    {{ log("hello dbt user " ~ var("user_name") ~ "!", info=True)}}
{% endmacro %}