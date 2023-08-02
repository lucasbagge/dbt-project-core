WITH source AS (

    SELECT 
    * 
    from {{ source('northwind_data', 'customer') }}
    QUALIFY
      row_number() over(partition by id) = 1

)

select 
    * 
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
from source
