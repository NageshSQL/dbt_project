{%- set payment_methods=['bank_transfer', 'credit_card', 'coupon','gift_card']   -%}

with payment as
(
    select
    * from {{ref("dbt_raw_payment")}}
),
pivot as 
(
select
order_id,
{%- for payment_method in payment_methods -%}

 sum(case when payment_method='{{payment_method}}' 
     then amount else 0 end ) as {{payment_method}}_amount
    {%- if not loop.last -%}
    ,
    {%- endif -%}

{% endfor %}
from payment where STATUS='success'
group by 1

)

select
* from pivot
