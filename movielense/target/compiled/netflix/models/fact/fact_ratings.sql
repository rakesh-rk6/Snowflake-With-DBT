

with scr_ratings as (
    select * from MOVIELENS.DEV.src_ratings
    
)
select user_id,
      movie_id,
      rating,
      rating_timestamp
      from
        scr_ratings
        where rating is not null


    and rating_timestamp > (select max(rating_timestamp) from MOVIELENS.DEV.fact_ratings)
