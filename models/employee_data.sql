with employee_data as (

    select * from {{ ref('stg_employee_data') }}

),

final as (

    select * from employee_data
)

select * from final
