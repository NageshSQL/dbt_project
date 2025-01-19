select
    id as customer_id,
    NAME first_name,
    '' as last_name

from {{source("dbt_con","customers")}}