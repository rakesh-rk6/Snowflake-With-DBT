with scr_source as (
    select * from {{ref('src_genome_score')}}
    
)
select movie_id,
      tag_id,
      round(relevance,4) as relevance_score
      from
        scr_source
        where relevance > 0
