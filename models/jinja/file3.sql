{% set countries = ['USA', 'Canada', 'Spain', 'Pakistan', 'Iran'] %}
 
select *
 
from (
 
{% for country in countries %}
 
select '{{ country }}' as country
 
{% if not loop.last %}union all{% endif %}
 
{% endfor %}

)
 