SELECT
    movie_id,
    tag_id,
    relevance_score
FROM MOVIELENS.DEV.fact_genome_scores
WHERE relevance_score <= 0