SELECT
  BOOKING_DATE,
  HOTEL,
  COUNT(ID) as count_bookings
FROM DEMO_DBT.Public.prepped_data
GROUP BY
  BOOKING_DATE,
  HOTEL