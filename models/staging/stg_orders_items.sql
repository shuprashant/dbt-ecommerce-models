select 
order_id,
product_id,
price,
freight_value
from {{source('silver','silver_order_item')}}

