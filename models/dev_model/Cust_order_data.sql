


 with orders as  (
    select * from {{ ref("dbt_raw_orders")}}
),
 customers as (
    select * from {{ ref ('dbt_raw_customer')}}
 )
select
customers.customer_id,
first_name,
last_name,
order_id,
order_date,
STORE_ID,
SUBTOTAL,
TAX_PAID,
ORDER_TOTAL


from customers join orders on(customers.customer_id=orders.customer_id)
