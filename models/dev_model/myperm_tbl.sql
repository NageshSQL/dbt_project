{{
  config(
    materialized='table',
    transient=false

  )
}}

    select * from {{ ref ('dbt_raw_customer')}}