--- Find the top 10 pickup locations based on the number of trips
SELECT pl.pickup_latitude, pl.pickup_longitude, COUNT(*) as NUMBER_OF_TRIPS
FROM `uber-data-analysis-429718.uber_data_analysis.fact_table` f 
JOIN `uber-data-analysis-429718.uber_data_analysis.pickup_location_dim` pl
ON f.pickup_location_id = pl.pickup_location_id
GROUP BY pl.pickup_latitude, pl.pickup_longitude
ORDER BY NUMBER_OF_TRIPS DESC
LIMIT 10;

--- Find the total number of trips by passenger count 
SELECT pc.passenger_count, COUNT(*) as TOTAL_TRIPS
FROM `uber-data-analysis-429718.uber_data_analysis.fact_table` f
JOIN `uber-data-analysis-429718.uber_data_analysis.passenger_count_dim` pc
ON f.passenger_count_id = pc.passenger_count_id
GROUP BY pc.passenger_count
ORDER BY TOTAL_TRIPS DESC;

--- Find the average fare amount by the hour of the day
SELECT dt.pick_hour as Hour_of_day, AVG(f.fare_amount) as Average_fare 
FROM `uber-data-analysis-429718.uber_data_analysis.fact_table` f
JOIN `uber-data-analysis-429718.uber_data_analysis.datetime_dim` dt
ON f.datetime_id = dt.datetime_id
GROUP BY Hour_of_day;


