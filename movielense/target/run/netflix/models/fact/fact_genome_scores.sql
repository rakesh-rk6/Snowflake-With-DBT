
  
    

        create or replace transient table MOVIELENS.DEV.fact_genome_scores
         as
        (with scr_source as (
    select * from MOVIELENS.DEV.src_genome_score
    
)
select movie_id,
      tag_id,
      round(relevance,4) as relevance_score
      from
        scr_source
        where relevance > 0
        );
      
  