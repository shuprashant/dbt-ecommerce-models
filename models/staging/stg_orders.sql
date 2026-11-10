select
order_id,
customer_id,
order_status,
order_purchase_timestamp as purchased_at
from {{source('silver','silver_orders')}}