-- back compat for old kwarg name
  
  begin;
    

        insert into MOVIELENS.DEV.fact_ratings ("USER_ID", "MOVIE_ID", "RATING", "RATING_TIMESTAMP")
        (
            select "USER_ID", "MOVIE_ID", "RATING", "RATING_TIMESTAMP"
            from MOVIELENS.DEV.fact_ratings__dbt_tmp
        );
    commit;