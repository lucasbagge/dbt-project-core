with source as (

    select * from {{ source('northwind_data', 'employees') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source