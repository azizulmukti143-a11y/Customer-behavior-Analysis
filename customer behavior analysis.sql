select * 
from customer_data limit 20;

-- total revenue generated from male and female
select gender,sum(purchase_amount) as 'total_revenue'
from customer_data
group by gender;

-- which customers used a discount but still spent more than the average purchase amount
select customer_id,purchase_amount
from customer_data
where discount_applied = 'Yes' and purchase_amount > (select avg(purchase_amount) from customer_data);

--  which are top 5 products with highest average review rating

select item_purchased, round(avg(review_rating),2) as 'avg_product_rating'
from customer_data
group by item_purchased
order by avg(review_rating) desc limit 5;

-- comparing the average purchase amount between standard and express shipping
select shipping_type, round(avg(purchase_amount),2) as 'avg_purchase'
from customer_data
where shipping_type in ('Standard','Express')
group by shipping_type;

-- do customer subscribed customer spends more ? comparing total revenue and avg spending
-- between susbsciber and non- subscriber

select subscription_status, 
count(customer_id) as 'total_customer',
round(avg(purchase_amount),2) as 'avg_purchase',
sum(purchase_amount) as 'total_revenue'
from customer_data
group by subscription_status;

-- which 5 products have the highest percentage of purchases with discount applied

select item_purchased, 
round(100*SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/count(*),2) as 'discount_rate'
from customer_data
group by item_purchased
order by discount_rate desc limit 5;

-- segment customers into new, returning , and loyal based on their
-- total previous purchases, and show the  count of each segment 


with customer_type as ( select customer_id, previous_purchases , 
CASE 
	WHEN previous_purchases = 1 then "New Customer"
	WHEN previous_purchases  between 2 AND 10 then "Returning Customer"
	ELSE "Loyal Customer" 
	END AS "customer_segment"
From  customer_data )
SELECT customer_segment, count(*) as "customr_count"
from customer_type
group by customer_segment;

-- the  top 3 most purchased products in each category 
with item_counts as (select category,
item_purchased,
count(item_purchased) as "total_orders",
ROW_NUMBER() over(PARTITION BY category order by count(customer_id) desc)  as "item_rank"
from customer_data
group by category,item_purchased )
select*
from item_counts
where item_rank < 4 ;

-- are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?

select subscription_status, count(customer_id) as repeat_buyers
from customer_data
where previous_purchases  > 5 
group by subscription_status;

-- what is the revenue contribution by age_group

select age_group, round(sum(purchase_amount)/(select sum(purchase_amount) from customer_data)*100,2) as "revenue_share(%)" 
from customer_data
group by age_group
order by `revenue_share(%)` desc


