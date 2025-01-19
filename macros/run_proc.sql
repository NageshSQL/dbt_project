{% macro run_proc() %}
  {% do run_query("call RAW.JAFFLE_SHOP.test_proc();") %}
{% endmacro %}