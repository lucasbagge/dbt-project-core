with source as (

    select * from {{ source('northwind_data', 'inventory_transactions') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source