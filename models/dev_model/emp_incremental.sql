{{
    config(

        materialized='incremental',
        unique_key='empid',
        on_schema_change='sync_all_columns'
          )
}}

select
*
from {{source('dbt_con','EMPLOYEE')}}

{% if is_incremental() %}

where insert_date>(select max(insert_date) from {{this}})

{% endif %}