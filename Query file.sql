create database cars;

select * from car_dekho;

-- Q.1 Total Cars Count ? --
select count(*) from car_dekho;

-- Q.2 How many cars will be available in 2023 ? --
select count(*) from car_dekho
where year = 2023;

-- Q.3 How many cars of year 2020, 2021 and 2022 are available ? --
select year, count(*) from car_dekho
where year in (2020,2021,2022)
group by year;

-- Q.4 Total no of cars year wise ? --
select year, count(*) from car_dekho
group by year;

-- Q.5 How many diesel cars of year 2020 are there ? --
select count(*) as diesel_car_in_2020 from car_dekho
where year = 2020 and fuel = 'Diesel'; 

-- Q.6 How many petrol cars of year 2020 and 2021 are there ? --
select count(*) as Petrol_cars_in_2020and2021 from car_dekho
where year in (2020,2021) and fuel = 'Petrol';  

-- Q.7 How many no. of CNG cars in each year ? --
select year, count(*) as no_of_CNG_cars from car_dekho
where fuel = 'CNG'
group by year;

-- Q.8 In which years the number of cars are more than 100 ? --
select year as years_with_more_than_100_cars, count(*) as no_of_cars from car_dekho
group by year
having count(*)>100;

-- Q.9 Show names of all the  automatic petrol cars between year 2020 to 2023 
-- which have been drived less than 10k Km ? --
select name from car_dekho
where year between 2020 and 2023
and fuel = 'Petrol'
and transmission = 'Automatic'
and km_driven < 10000 ; 

-- Q.10 Show all total number of cars of each fuel type, with the maximun number showing first ? --
select fuel, count(*) as No_of_cars from car_dekho
group by fuel
order by No_of_cars desc;

-- Q.11 How many fuel efficent cars are there of year 2020 to 2023 
-- whose selling price is less than 5 lakhs ?
-- (cars with mileage greater than 18 is considered fuel efficent) --
select name from car_dekho
where year in (2020,2021,2022,2023)
and selling_price < 500000
and mileage > 18; 

-- Q.12 How many maruti cars of different transmissions are available
--  whose model should not be of before 2018 ? --
select transmission, count(*) from car_dekho
where year between 2018 and 2023
and name like '%Maruti%'
group by transmission
order by count(*) desc;

-- Q.13 Show all the details of all luxary cars ? --
select * from car_dekho
where name like '%Audi%'
or name like '%BMW%'
or name like '%Volvo%'
or name like '%Lexus%'
or name like '%Rover%'
or name like '%Mercedes%';

-- Q.14 Show all the manual transmission cars of year between 2018 to 2023 whose owner is first owner
-- and which has engine of < 1000 CC ? --
select name, year from car_dekho
where year between 2018 and 2023
and transmission = 'Manual'
and owner = 'First Owner'
and engine like '____CC%';

-- Q.15 Show the average price of petrol cars of different transmissions of year 2018 to 2023 ? --
select transmission, avg(selling_price) from car_dekho
where year between 2018 and 2023
and fuel = 'Petrol'
group by transmission
order by avg(selling_price) desc;































 