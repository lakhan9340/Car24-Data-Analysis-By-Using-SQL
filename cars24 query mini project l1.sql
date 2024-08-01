use car24;
select name, seats from cars where seats between 5 and 6 order by seats desc;
select seller_type, count(name), avg(selling_price) from cars group by seller_type;
select transmission, count(*) from cars group by transmission;
select transmission, avg(selling_price) from cars group by transmission;

select name from cars where name like '%gypsy%' or name like '%thar%';

select*,  (2024-year) as age ,
case 
when (2024-year) > 20 then 'very old model'  
when (2024-year) between 10 and 15 then 'old model'
when (2024-year) between 5 and 10 then 'medium aged model'
Else 'latest model' end as age_group,
case 
when 15 < mileage then 'low mileage'  
when mileage between 15 and 25 then 'medium mileage'
when mileage between 26 and 30 then 'high mileage'
Else 'very high mileage' end as mileage_group,
case
when seats between 1 and 5 then 'sadan/hatchback'
when seats > 5 and name not like '%gypsy%' and name not like '%thar%'then 'SUV'
when seats > 5 and name like '%gypsy%' or name like '%thar%' then 'gypsy/thar' end as vehicle_type,
select 
case
when `engine [cc]` between 100 and 500 then '100-500'
when `engine [cc]` between 500 and 1000 then '500-1000'
when `engine [cc]` between 1000 and 1500 then '1000-1500'
when `engine [cc]` between 1500 and 2000 then '1500-2000'
when `engine [cc]` between 2000 and 2500 then '2000-2500'
when `engine [cc]` > 2500 then '>2500' end as engine_CC_group, avg (mileage), avg(selling_price)
from cars group by engine_CC_group;


select count(seats),case
when seats between 1 and 5 then 'sadan/hatchback'
when seats > 5 and name not like '%gypsy%' and name not like '%thar%'then 'SUV'
when seats > 5 and name like '%gypsy%' or name like '%thar%' then 'gypsy/thar' end as vehicle_type
from cars group by vehicle_type;

select  count(2024-year) as age ,
case 
when (2024-year) > 20 then 'very old model'  
when (2024-year) between 10 and 15 then 'old model'
when (2024-year) between 5 and 10 then 'medium aged model'
Else 'latest model' end as age_group from cars group by age_group;

select owner , avg(mileage) from cars group by owner;
select * from cars;
select distinct name , year from cars where name like '%Maruti Alto 800 LXI%'  order by year asc;

select name, avg(km_driven), avg( mileage) from cars where name like '%Maruti Alto 800 LXI%' 
group by name  order by km_driven desc limit 6;




select `engine [cc]` from cars;
select  avg(mileage),case
when `engine [cc]` between 100 and 500 then '100-500'
when `engine [cc]` between 500 and 1000 then '500-1000'
when `engine [cc]` between 1000 and 1500 then '1000-1500'
when `engine [cc]` between 1500 and 2000 then '1500-2000'
when `engine [cc]` between 2000 and 2500 then '2000-2500'
when `engine [cc]` > 2500 then '>2500' end as engine_CC_group from cars group by engine_CC_group ;


select name,`engine [cc]` from cars where `engine [cc]` < 500;

select  
case 
when (2024-year) > 20 then 'very old model'  
when (2024-year) between 10 and 15 then 'old model'
when (2024-year) between 5 and 10 then 'medium aged model'
Else 'latest model' end as age_group,count(name) as countofcars , avg(selling_price) from cars group by age_group;

select count(name) ,substring_index(name,' ',1) as manufacturer
from cars group by manufacturer order by count(name) desc limit 5 ;

select owner ,avg(mileage) from cars group by owner order by avg(mileage) desc;
select year, avg(selling_price) as price from cars group by year order by year desc;
select * from cars ;


select transmission, count(*) from cars group by transmission;
select transmission, avg(selling_price) from cars group by transmission;


select  
case 
when (2024-year) > 20 then 'very old model'  
when (2024-year) between 10 and 15 then 'old model'
when (2024-year) between 5 and 10 then 'medium aged model'
Else 'latest model' end as age_group,count(name) as countofcars , avg(selling_price) from cars 
group by age_group;


select seller_type, count(name), avg(selling_price) from cars group by seller_type;



select substring_index(name,' ',1) as manufacturer,count(name)
from cars group by manufacturer order by count(name) desc limit 5 ;


select fuel , avg(selling_price), avg(mileage) from cars group by fuel;


select owner ,avg(mileage) from cars group by owner order by avg(mileage) desc;




select count(seats),case
when seats between 1 and 5 then 'sadan/hatchback'
when seats > 5 and name not like '%gypsy%' and name not like '%thar%'then 'SUV'
when seats > 5 and name like '%gypsy%' or name like '%thar%' then 'gypsy/thar' end as vehicle_type
from cars group by vehicle_type;


select name, avg(km_driven), avg( mileage) from cars where name like '%Maruti Alto 800 LXI%' 
group by name  order by km_driven desc limit 6;



select 
case
when `engine [cc]` between 100 and 500 then '100-500'
when `engine [cc]` between 500 and 1000 then '500-1000'
when `engine [cc]` between 1000 and 1500 then '1000-1500'
when `engine [cc]` between 1500 and 2000 then '1500-2000'
when `engine [cc]` between 2000 and 2500 then '2000-2500'
when `engine [cc]` > 2500 then '>2500' end as engine_CC_group, avg (mileage), avg(selling_price)
from cars group by engine_CC_group;







