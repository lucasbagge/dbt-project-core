with source as (

    select * from {{ source('northwind_data', 'order_details_status') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source
