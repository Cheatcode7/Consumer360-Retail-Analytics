-- First imported data from import wizard which is in raw_transactions file 
-- after cleaning it in jupyter notebook and then created a new table called raw_transactions and inserted the cleaned data into it.

-- created raw transactions table and inserted data into it ,it is also a fact_table for our star schema
CREATE TABLE raw_transactions (
    invoice_id varchar(255),
    stock_id varchar(255),
    product_name text,
    quantity INT,
    price float,
    customer_id INT,
    country varchar(255),
    invoice_date date,
    invoice_time time
);

-- created dimensions tables for star schema 
create dim_customer as
select distinct customer_id , country from raw_transactions; 


-- created dim_product table
create dim_product as
select distinct stock_id as product_id, product_name , price from raw_transactions;


-- created dim_date table
create dim_date as
select distinct invoice_date as date_id 
year(invoice_date) as year,
month(invoice_date) as month,
quarter(invoice_date) as quarter,
dayname(invoice_date) as day_name
 from raw_transactions;

-- created single_customer_view to get all the transactions of a single customer
create view single_customer_view as
select distinct customer_id , count(invoice_id) as total_orders ,
 sum(quantity) as total_quantity , sum(price*quantity) as total_revenue,
 min(invoice_date) as first_purchase_ts , max(invoice_date) as last_purchase_ts,
 diff(max(invoice_date), min(invoice_date)) as customer_lifetime_days
from raw_transactions
group by customer_id; 


