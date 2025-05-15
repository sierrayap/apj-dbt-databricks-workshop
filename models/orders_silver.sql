select 
* 
from {{ source('tpch', 'orders_bronze') }}
    where O_ORDERKEY is not null
    and O_ORDER_DATE >= date '1990-01-01'
