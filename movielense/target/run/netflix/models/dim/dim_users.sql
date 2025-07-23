
  
    

        create or replace transient table MOVIELENS.DEV.dim_users
         as
        (with ratings as
(
    select distinct user_id from MOVIELENS.DEV.src_ratings
),
tags as
(
    select distinct user_id from MOVIELENS.DEV.src_tags
)
select distinct user_id
from ( select * from ratings
      union
      select * from tags)
        );
      
  