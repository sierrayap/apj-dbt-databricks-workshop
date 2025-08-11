{{
   config(
       materialized='streaming_table'
   )
}}


select *
from stream read_files('/Volumes/apj_dbt_workshop/setup/apj-dbt-workshop/lineitem.json')