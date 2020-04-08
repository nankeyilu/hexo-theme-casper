{# 分类归档 #}
{% extends '_layout.swig' %}
{% import '_partials/index-archive.swig' as template %}
{% block content %}
{% set description = __('categories') %}
{% include '_partials/header.swig' %}
{{ template.tpl() }}
{% endblock %}
