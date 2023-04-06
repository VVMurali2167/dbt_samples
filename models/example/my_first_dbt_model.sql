
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}


with source_data as (

    select * from customer

)

select *
from with source_data
where c_birth_country = "canada"

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
