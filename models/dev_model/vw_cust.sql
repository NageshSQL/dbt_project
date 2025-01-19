{{
 config(
    materialized='table',
  )

}}

select
*
from {{ source("dbt_con","CUSTOMERS_vw")}}