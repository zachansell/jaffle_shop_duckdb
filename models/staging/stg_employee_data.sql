with source as (

    select * from {{ ref('raw_employee_data_clean') }}

)

select * from source
