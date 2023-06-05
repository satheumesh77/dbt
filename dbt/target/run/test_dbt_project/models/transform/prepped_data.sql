
  create or replace   view DEMO_DBT.Public.prepped_data
  
   as (
    SELECT A.ID 
    , FIRST_NAME
    , LAST_NAME
    , birthdate
    , BOOKING_REFERENCE
    , HOTEL
    , BOOKING_DATE
    , COST
FROM DEMO_DBT.Public.customer  A
JOIN DEMO_DBT.Public.combined_bookings B
on A.ID = B.ID
  );

