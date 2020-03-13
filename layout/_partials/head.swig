{# HTML 中的 <head></head> 部分 #}
{% set title = page.title %}
{% if is_home() %}
{% set title = config.title %}
{% elseif is_archive() %}
{% set title = __('archive_a') %}
{% elseif is_month() %}
{% set title += ': ' + page.year + '/' + page.month %}
{% elseif is_year() %}
{% set title += ': ' + page.year %}
{% elseif is_category() %}
{% set title = __('category') + ': ' + page.category %}
{% elseif is_tag() %}
{% set title = __('tag') + ': ' + page.tag %}
{% endif %}
{% set body_class = 'tag-template' %}
{% if is_home() %}
{% set body_class = 'home-template' %}
{% elseif is_post() %}
{% set body_class = 'post-template' %}
{% endif %}
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link rel="preconnect" href="//www.google-analytics.com">
	{% if is_post() %}
	<link rel="preload" href="//cdn.jsdelivr.net/npm/valine@latest/dist/Valine.min.js">
	<link rel="preconnect" href="//us.avoscloud.com">
	<link rel="preconnect" href="//js.fundebug.cn">
	<link rel="dns-prefetch" href="//gravatar.loli.net">
	{% endif %}

	<title>{% if title %}{{ title }}{% else %}{{ config.title }}{% endif %} | {% if is_home() %}{{ config.subtitle }}{% else %}{{ config.title }}{% endif %}</title>

	<meta name="HandheldFriendly" content="True" />
	<meta name="viewport" content="width=device-width" />
	<meta name="generator" content="hexo">

	{% if theme.keywords %}
	<meta name="keywords" content="{% if is_post() %}{{ page.keywords }}{% else %}{{ theme.keywords }}{% endif %}">
	{% endif %}

	{% if theme.favicon %}
	{{ favicon_tag(theme.favicon) }}
	<link rel="apple-touch-icon" href="{{ theme.favicon }}"/>
	{% endif %}

	{% if theme.navColor %}
	<meta name="theme-color" content="#{{ theme.navColor }}">
	<meta name="msapplication-TileColor" content="#{{ theme.navColor }}">
	{% endif %}

	{% if theme.manifest %}
	<link rel="manifest" href="{{ url_for('/manifest.json') }}">
	{% endif %}

	{% if theme.rss %}
	{{ feed_tag(theme.rss, [{title:config.title}])  }}
	{% endif %}

	<meta property="og:site_name" content="{{ config.title }}">
	<meta property="og:type" content="{% if is_post() %}article{% else %}website{% endif %}">
	<meta property="og:title" content="{% if title %}{{ title }}{% else %}{{ config.title }}{% endif %}{% if is_home() %} | {{ config.subtitle }}{% endif %}">
	<meta property="og:description" name="description" content="{% if is_post() %}{{ page.summary }}{% elif description %}{{ description }}{% else %}{{ config.description }}{% endif %}">
	<meta property="og:image" content="{% if is_post() %}{{ page.cover_img }}{% else %}{{ config.blog_preview_image }}{% endif %}" />
	<meta property="og:url" content="{{ config.url }}{{ url_for(page.path) }}">

	{% if is_post() %}
	<meta property="article:published_time" content="{{ date(page.date, 'YYYY-MM-DDTHH:MM:SS+08:00') }}"/>
	<meta property="article:author" name="author" content="{{ config.author }}">
	<meta property="article:published_first" content="{{ config.title }}, {{ url_for(page.path) }}" />
	<meta name="twitter:card" content="summary_large_image">
	{% endif %}

	{# {{ css('css/screen') }}
	{{ css('css/style') }}
	{{ css('css/markdown') }}
	{{ css('css/highlight') }}
	{{ css('css/darkmode') }} #}

	{{ css('css/allinonecss.min') }}

	{% if theme.googleAnalytics %}
	<script async src="https://www.googletagmanager.com/gtag/js?id={{ theme.GA_TRACKING_ID }}"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', '{{ theme.GA_TRACKING_ID }}');
	</script>
	{% endif %}

	{# {% include "public/json-ld.swig" %} #}
</head>
