{% set list_sources = config.get('reporting_category_sources') %}
{% set reporting_category_relations = [] %}
{{ log("liastSources:", info=true) }}
{{ log((list_sources) , info=true) }}
{% for row_source in list_sources %}
	{% set reporting_category_relation = dbt_utils.get_relations_by_pattern(config.get('source_dataset'), row_source) %}
	{% do reporting_category_relations.extend(reporting_category_relation) %}
{{ log(reporting_category_relation, info=true) }}
{% endfor %}
{{ log("liastSources2:", info=true) }}
{{ log((reporting_category_relations) , info=true) }}
{{ dbt_utils.union_relations(relations = reporting_category_relations) }}