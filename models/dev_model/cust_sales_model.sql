
{{
config(
    materialized='table'
)

}}
select
cust_id,
SALE_AMOUNT
from {{ref('cust_sales')}}