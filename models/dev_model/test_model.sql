
{{
config(
    materialized='table'
)
}}


select
cust_id,
sale_amount
,
(case when sale_amount=1000 then 1 
when sale_amount=2000 then 2 
when sale_amount=3000 then 3
when sale_amount=4000 then 4 
when sale_amount=5000 then 5
end ) as sales_flag 
from {{ref('cust_sales_model')}}


