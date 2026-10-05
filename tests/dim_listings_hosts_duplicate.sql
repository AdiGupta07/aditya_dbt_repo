select
count(*)
from 
{{ref('src_hosts')}}
group by host_id
having count(host_id) > 1
limit 10