{{
   config(
       materialized='table'
   )
}}
<<<<<<< HEAD
-- test
select 
=======


select
>>>>>>> 6dae1796e45aabe1ba7f9b3f3dc2c699b94a6bf2
o.O_ORDERKEY,
o.O_TOTALPRICE,
l.L_ORDERKEY,
l.L_DISCOUNT,
case when (l.L_DISCOUNT >= 0.06) then 'discounted' else 'not_discounted' end as Discount
from {{ ref('orders_silver') }} as o
left join {{ ref('lineitem_silver') }} as l
on o.O_ORDERKEY = l.L_ORDERKEY