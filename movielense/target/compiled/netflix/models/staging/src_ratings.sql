
with raw_ratings as
(
    select * from movielens.raw.raw_ratings
)
select
userId as user_id,
    movieId as movie_id,
    rating,
    to_timestamp_ltz(timestamp) as rating_timestamp
from raw_ratings