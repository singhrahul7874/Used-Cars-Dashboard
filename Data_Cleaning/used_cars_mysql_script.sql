-- Switching to the "used_cars" database and selecting all records from the "used_car_dataset" table
USE used_cars;
SELECT * FROM used_car_dataset;

-- Removing safe update mode to allow updates without a key constraint
SET SQL_SAFE_UPDATES = 0;

-- Removing unwanted characters from the "kms_driven" column
UPDATE used_car_dataset
SET kms_driven = REPLACE(kms_driven, "km", "");
UPDATE used_car_dataset
SET kms_driven = REPLACE(kms_driven, ",", "");

-- Removing unwanted characters and converting car prices to standard format in the "car_price_in_rupees" column
UPDATE used_car_dataset
SET car_price_in_rupees = REPLACE(car_price_in_rupees, "â‚¹ ", "");
UPDATE used_car_dataset
SET car_price_in_rupees = CASE 
    WHEN car_price_in_rupees LIKE "%Lakh" THEN REPLACE(car_price_in_rupees, " Lakh", "") * 100000
    WHEN car_price_in_rupees LIKE "%Crore" THEN REPLACE(car_price_in_rupees, " Crore", "") * 10000000
    ELSE car_price_in_rupees
  END;
UPDATE used_car_dataset
SET car_price_in_rupees = ROUND(car_price_in_rupees);

-- Modifying the data type of the "car_price_in_rupees" column to INT
ALTER TABLE used_car_dataset MODIFY COLUMN car_price_in_rupees INT;

-- Adding "brand" and "car_model" columns to the table
ALTER TABLE used_car_dataset ADD COLUMN brand VARCHAR(255);
ALTER TABLE used_car_dataset ADD COLUMN car_model VARCHAR(255);

-- Populating the "brand" and "car_model" columns based on the car name
UPDATE used_car_dataset
SET brand = CASE 
    WHEN car_name LIKE "Maruti Suzuki%" THEN "Maruti Suzuki"
    WHEN car_name LIKE "Land Rover%" THEN "Land Rover"
    ELSE SUBSTRING_INDEX(car_name, " ", 1)
  END;
UPDATE used_car_dataset
SET car_model = REPLACE(car_name, brand, "");

-- Trimming the whitespace in the "car_model" column
UPDATE used_car_dataset
SET car_model = TRIM(car_model);

-- Dropping the "car_name" column
ALTER TABLE used_car_dataset DROP COLUMN car_name;

-- Retrieving records where the car_model starts with 'u' or 'n'
SELECT *
FROM used_car_dataset
WHERE LEFT(car_model, 1) IN ("u", "n");

-- Retrieving records where the car_model starts with 'u' or 'n' using regular expression
SELECT *
FROM used_car_dataset
WHERE car_model REGEXP "^[un]";

-- Retrieving records where the car_model ends with 'uncopyrightable' using regular expression
SELECT *
FROM used_car_dataset
WHERE car_model REGEXP "[uncopyrightable]$";

-- Removing non-alphabetic characters from the car_model column using regular expression
SELECT REGEXP_REPLACE(car_model, "[^a-zA-Z]", "") AS car_model
FROM used_car_dataset;

-- The above code performs various data cleaning and transformation operations on the "used_car_dataset" 
-- table in the "used_cars" database. It removes unwanted characters from the "kms_driven" and "car_price_in_rupees" columns, 
-- converts car prices to a standard format, adds "brand" and "car_model" columns, populates them based on the car name, trims 
-- whitespace, and drops the "car_name" column. It also demonstrates filtering records based on specific conditions using both 
-- basic string operations and regular expressions. 
