use  used_cars;
select * from used_car_dataset;


SET SQL_SAFE_UPDATES=0;
update used_car_dataset
set kms_driven = replace(kms_driven,"km","");
update used_car_dataset
set kms_driven = replace(kms_driven,",","");


update used_car_dataset
set car_price_in_rupees = replace(car_price_in_rupees,"â‚¹ ", "");

update used_car_dataset
set car_price_in_rupees = case when car_price_in_rupees like "%Lakh" 
then replace(car_price_in_rupees," Lakh","")*100000
when car_price_in_rupees like "%Crore"
then replace(car_price_in_rupees," Crore","")*10000000
else car_price_in_rupees
end;

update used_car_dataset
set car_price_in_rupees = round(car_price_in_rupees);


Alter table used_car_dataset Modify column car_price_in_rupees INT;

-- Car_name 

-- Brand - 
-- Model -

-- Maruti Suzuki
-- Land Rover

-- car_price_in_rupees

Alter table used_car_dataset add column brand Varchar(255);
Alter table used_car_dataset add column car_model Varchar(255);

-- Maruti Suzuki
-- Land Rover

update used_car_dataset
set brand = case 
	when car_name like "Maruti Suzuki%" then "Maruti Suzuki"
    when car_name like "Land Rover%" then "Land Rover"
    else substring_index(car_name," ",1)
end;

update used_car_dataset
set car_model = replace(car_name,brand,"");

Select * from used_car_dataset;

update used_car_dataset
set car_model = trim(car_model);

Alter table used_car_dataset drop column car_name;

-- "uncopyrightable"

Select * from used_car_dataset where left(car_model,1)  in ("u","n") ;


Select * from used_car_dataset
where car_model Regexp "^[un]";

Select * from used_car_dataset
where car_model Regexp "[uncopyrightable]$";

Select Regexp_Replace(car_model,"[^a-zA-Z]","") as car_model
from used_car_dataset;
