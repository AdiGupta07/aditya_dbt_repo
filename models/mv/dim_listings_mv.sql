{{
    config(
        materialized = 'table', 
        enable_refresh = true,
        refresh_interval_minutes = 30,
        partition_by = {
            "field" : "created_at",
            "data_type" : "timestamp",
            "granularity" : "year"
        } 
    )
}}
with cte_1 as
(
select
*
from
{{ref('src_listings')}}
)
select
listing_id,
listing_url,
listing_name,
room_type,
minimum_nights,
host_id,
price_str,
created_at,
updated_at
from
cte_1