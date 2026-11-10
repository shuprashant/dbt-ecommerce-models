select 
order_id,
purchased_at,
product_id,
price,
freight_value,
(price+freight_value) as total_revenue
from {{ref('int_order_details')}}
where order_status='delivered'

