with source as (

    select * from {{ ref('raw_employee_data_clean') }}

),

final as (
    select
        years_of_experience,
        avg(salary) as average_salary
    from source
    group by years_of_experience
)

select * from final
