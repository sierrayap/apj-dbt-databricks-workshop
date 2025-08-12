{{
   config(
       materialized='table'
   )
}}


select count(O_ORDERSTATUS) as ORDERSTATUS_COUNT,
          O_ORDERSTATUS
from {{ ref('orders_silver') }}
group by O_ORDERSTATUS
