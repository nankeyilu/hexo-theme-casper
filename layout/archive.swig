{# 归档 #}
{% extends '_layout.swig' %}
{% import '_partials/index-archive.swig' as template %}
{% block content %}
{% set description = _p('total', site.posts.length) %}
{% include '_partials/header.swig' %}
{{ template.tpl() }}
{% endblock %}
