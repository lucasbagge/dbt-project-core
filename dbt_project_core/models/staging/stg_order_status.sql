with source as (

    select * from {{ source('northwind_data', 'orders_status') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source