
      
  
    

        create or replace transient table project.snapshot.snapshot_historical
         as
        (
    

    select *,
        md5(coalesce(cast(Date as varchar ), '')
         || '|' || coalesce(cast(Date as varchar ), '')
        ) as dbt_scd_id,
        Date as dbt_updated_at,
        Date as dbt_valid_from,
        
  
  coalesce(nullif(Date, Date), null)
  as dbt_valid_to

    from (
        



select * from project.data226.stockprice_historical

    ) sbq



        );
      
  
  