with source as (

    select * from {{ source('northwind_data', 'purchase_orders') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source