select
*
from {{ source('tpch', 'orders') }}
   where O_ORDERKEY is not null
   and o_orderdate >= date '1990-01-01'