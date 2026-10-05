{% snapshot snap_listings %}
{{
    config(
        target_schema='dataset_aditya',
        unique_key='listing_id',
        strategy='timestamp',
        updated_at='updated_at'
    )
}}
select
    *
from {{ref('src_listings')}}
{% endsnapshot %}