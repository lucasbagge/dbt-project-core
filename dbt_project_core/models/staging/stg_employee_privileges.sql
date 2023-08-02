with source as (

    select * from {{ source('northwind_data', 'employee_privileges') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source