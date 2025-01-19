 {{
    config(
        materialized='table'
    )

 }}
 
 select * from {{ ref ('dbt_raw_customer')}}