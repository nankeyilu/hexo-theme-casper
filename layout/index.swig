{# 首页 #}
{% extends '_layout.swig' %}
{% import '_partials/index.swig' as template %}
{% set description = theme.bio %}
{% block content %}
{% include '_partials/header.swig' %}
{{ template.tpl() }}
{% endblock %}
