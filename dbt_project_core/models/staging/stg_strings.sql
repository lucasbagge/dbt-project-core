with source as (

    select * from {{ source('northwind_data', 'strings') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source