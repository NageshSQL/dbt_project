{{
config(
    materialized='table',
    pre_hook="delete from RAW.JAFFLE_SHOP.EMPLOYEE;",
    post_hook="call RAW.JAFFLE_SHOP.test_proc();"
)
}}

select
*
from 
{{source("dbt_con","EMPLOYEE")}}