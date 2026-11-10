select distinct
product_id,
product_category_name
from {{ref('int_order_details')}}
where product_id is not null