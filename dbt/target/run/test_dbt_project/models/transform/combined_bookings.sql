
  create or replace   view DEMO_DBT.Public.combined_bookings
  
   as (
    
    

        (
            select
                cast('DEMO_DBT.Public.bookings_1' as TEXT) as _dbt_source_relation,

                
                    cast("ID" as NUMBER(38,0)) as "ID" ,
                    cast("BOOKING_REFERENCE" as NUMBER(38,0)) as "BOOKING_REFERENCE" ,
                    cast("HOTEL" as character varying(16777216)) as "HOTEL" ,
                    cast("BOOKING_DATE" as DATE) as "BOOKING_DATE" ,
                    cast("COST" as NUMBER(38,0)) as "COST" 

            from DEMO_DBT.Public.bookings_1

            
        )

        union all
        

        (
            select
                cast('DEMO_DBT.Public.bookings_2' as TEXT) as _dbt_source_relation,

                
                    cast("ID" as NUMBER(38,0)) as "ID" ,
                    cast("BOOKING_REFERENCE" as NUMBER(38,0)) as "BOOKING_REFERENCE" ,
                    cast("HOTEL" as character varying(16777216)) as "HOTEL" ,
                    cast("BOOKING_DATE" as DATE) as "BOOKING_DATE" ,
                    cast("COST" as NUMBER(38,0)) as "COST" 

            from DEMO_DBT.Public.bookings_2

            
        )

        
  );

