select
    id as order_id,
    CUSTOMER as customer_id,
    ORDERED_AT as order_date,
    STORE_ID,
    SUBTOTAL,
    TAX_PAID,
    ORDER_TOTAL
from {{source("dbt_con","orders")}}