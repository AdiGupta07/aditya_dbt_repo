{{ log(target.project, info=True) }}
{{ log(target.schema, info=True) }}
{{ log(target.type, info=True) }}


-- {%set my_host_id = 9%}

{% if target.project == 'racko-master-project-505113' %}

    SELECT 2+3 as result

{% elif target.project == 'abc'%}

    select 10+30 as result

{% endif %}


{% if execute %}

    {% set results = run_query(

    "select count(*) from dataset_aditya.src_hosts"

)%}

    {% set rowcount = results.columns[0].values()[0] %}

    {{log("rowcount = " ~ rowcount, info = true)}}

{% endif %}
 