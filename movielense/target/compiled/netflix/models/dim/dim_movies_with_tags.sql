

with movies as(
    select * from MOVIELENS.DEV.dim_movies
),
tags as (
    select * from MOVIELENS.DEV.dim_genome_tags
    ),
scores as (
    select * from MOVIELENS.DEV.fact_genome_scores

)
select 
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_score
from movies m
    left join scores s
        on m.movie_id = s.movie_id
    left join tags t 
        on t.tag_id = s.tag_id