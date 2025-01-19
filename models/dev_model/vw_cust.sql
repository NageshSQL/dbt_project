{{
 config(
    materialized='table',
  )

}}

select
*
from {{ source("dbt_con","CUST_TOTAL_ORDER")}}