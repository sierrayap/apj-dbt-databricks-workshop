select 
* 
from {{ source('tpch', 'orders') }}
    where O_ORDERKEY is not null
    and O_ORDERDATE >= date '1990-01-01'
