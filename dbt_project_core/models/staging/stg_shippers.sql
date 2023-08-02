with source as (

    select * from {{ source('northwind_data', 'shippers') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source