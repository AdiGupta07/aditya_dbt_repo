{{
 
    config(
        materialized = 'table', 
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
airbnb_raw.raw_listings
)
 
select
id as listing_id,
 
listing_url,
name as listing_name,
 
room_type,
 
minimum_nights,
 
host_id,
price AS price_str,
 
created_at,
 
updated_at
 
from
cte_1