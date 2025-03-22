with source as (

    select * from {{ ref('raw_employee_data_clean') }}

),

final as (
    select
        department,
        avg(salary) as average_salary
    from source
    group by department
)

select * from final
