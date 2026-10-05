{{
 
    config(
        materialized = 'table'
    )
 
}}

with cte_1 as
(
  select * from dataset_aditya.src_hosts
  where is_superhost is not null
)

SELECT    host_id,
COALESCE(host_name, 'Anonymous') AS host_name,
is_superhost,
created_at,
updated_at 
FROM cte_1
