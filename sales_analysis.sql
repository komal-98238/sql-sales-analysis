-- create table sales
-- (
-- order_id varchar(20),
-- date date,
-- product varchar(50),
-- category varchar(50),
-- region varchar(20),
-- sales decimal(10,2)
-- );
select* from sales_data;
select sum(sales) as total_sales from sales_data;
select region, sum(sales) as total_sales
from sales_data
group by region
order by total_sales DESC;
select product, sum(sales) as total_sales
from sales_data
group by product
order by total_sales DESC
limit 5;
select category, sum(sales) as total_sales
from sales_data
group by category
order by total_sales DESC;
select month(date) as month,
sum(sales) as total_sales
from sales_data
group by month
order by month;
select AVG(sales) as average_order_value
from sales_data;