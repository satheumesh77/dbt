
  create or replace   view DEMO_DBT.Public.customer
  
   as (
    SELECT ID 
    , FIRST_NAME
    , LAST_NAME
    , birthdate
FROM DEMO_DBT.Public.customers
  );

