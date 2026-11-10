select
product_id,
product_category_name
from {{source('silver','silver_products')}}