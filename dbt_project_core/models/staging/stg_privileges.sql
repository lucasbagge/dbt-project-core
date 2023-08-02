with source as (

    select * from {{ source('northwind_data', 'privileges') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source