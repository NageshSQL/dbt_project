{{
    config(

        materialized='incremental',
        unique_key='empid',
        incremental_strategy='merge',
        merge_update_columns = ['ename', 'address'],
          )
}}

select
*
from {{source('dbt_con','EMPLOYEE')}}

