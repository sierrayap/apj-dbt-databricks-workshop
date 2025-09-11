select
  L_ORDERKEY,
  L_LINENUMBER,
  L_QUANTITY,
  L_EXTENDEDPRICE,
  L_DISCOUNT,
  L_TAX,
  L_RETURNFLAG,
  L_LINESTATUS
from {{ ref('lineitem_bronze') }}
where L_ORDERKEY is not null
and L_SHIPDATE >= date '1990-01-01'