{{
config(
    materialized='view',
    secure='true'
)
}}

select
* from {{source('dbt_con','EMPLOYEE')}}