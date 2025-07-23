
  create or replace   view MOVIELENS.DEV.src_genome_tags
  
   as (
    with raw_genome_tags as
(
    select * from movielens.raw.raw_genome_tags
)
select
    tagId as tag_id,
    tag
    from raw_genome_tags
  );

