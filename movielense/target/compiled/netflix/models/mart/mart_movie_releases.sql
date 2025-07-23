

with fact_ratings as
(
    select * from MOVIELENS.DEV.fact_ratings

),
seed_dates as
(select * from MOVIELENS.DEV.seed_movie_release_dates
)

select 
f.*,
case when s.release_date is null
        then 'unknown'
        else 'known'
        end as release_info_available
from fact_ratings f
left join seed_dates s
on f.movie_id = s.movie_id