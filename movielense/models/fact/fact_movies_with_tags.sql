with movies_with_tags as (
    select * from {{ref('dim_movies_with_tags')}}
)
select * from movies_with_tags