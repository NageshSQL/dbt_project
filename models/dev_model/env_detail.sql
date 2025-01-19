{{ config(materialized='table') }}
WITH source_data AS (

  SELECT  '{{ target.database }}' as target_db,
 '{{ target.schema }}' as target_schema,
  '{{this.name}}' as model_name,
  '{{project_name}}' as project_name

)

SELECT 
    *
FROM source_data
