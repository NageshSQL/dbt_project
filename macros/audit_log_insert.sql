{% macro audit_inset_log(model, run_status) %}
    {% set sql %}
        INSERT INTO audit_log (audit_name, start_time, status) 
        VALUES ('{{ model }}', CURRENT_TIMESTAMP, '{{ run_status }}')
    {% endset %}
    {{ return(sql) }}
{% endmacro %}

{% macro audit_update_log(model, run_status) %}
    {% set sql %}
        UPDATE audit_log 
        SET end_time = CURRENT_TIMESTAMP, status = '{{ run_status }}'  
        WHERE aduit_id = (
            SELECT MAX(aduit_id) 
            FROM audit_log 
            WHERE audit_name = '{{ model }}'
        )
    {% endset %}
    {{ return(sql) }}
{% endmacro %}
