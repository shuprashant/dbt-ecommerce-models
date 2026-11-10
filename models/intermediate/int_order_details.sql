with
    orders as (select * from {{ ref("stg_orders") }}),
    items as (select * from {{ ref("stg_orders_items") }}),
    products as (select * from {{ ref("stg_products") }})

select
    o.order_id,
    o.purchased_at,
    o.order_status,
    i.product_id,
    i.price,
    i.freight_value,
    p.product_category_name
from orders o
left join items i on o.order_id = i.order_id
left join products p on i.product_id = p.product_id
