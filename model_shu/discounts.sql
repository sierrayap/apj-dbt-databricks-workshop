{{
   config(
       materialized='table'
   )
}}


select
o.O_ORDERKEY,
o.O_TOTALPRICE,
l.L_ORDERKEY,
l.L_DISCOUNT,
case when (l.L_DISCOUNT >= 0.06) then 'discounted' else 'not_discounted' end as Discount
from {{ ref('orders_silver') }} as o
left join {{ ref('lineitem_silver') }} as l
on o.O_ORDERKEY = l.L_ORDERKEY