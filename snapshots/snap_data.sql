
{% snapshot employee_snap %}

{{
config(
  target_schema='snapshots',      
    strategy='timestamp',     
    unique_key='EMPID',      
   updated_at='INSERT_DATE'   
)

}}

select
empid,ename,address,INSERT_DATE
from {{source("dbt_con","EMPLOYEE_snap")}}


{% endsnapshot %}