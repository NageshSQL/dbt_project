{{
config(
    materialized = 'table'
)
}}

with payments as (
    select * from {{ ref("dbt_raw_payment") }}
),
order_payments as (
    select
        order_id,
        sum (case when status = 'success' then amount end) as amount

    from payments
    group by 1
)

select * from order_payments