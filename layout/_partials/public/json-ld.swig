{% if is_post() %}
<link rel="canonical" href="{{ page.permalink }}"/>
<script type="application/ld+json">
{% if page.isnews %}
[
{
	"@context": "https://schema.org",
	"@type": "NewsArticle",
	"mainEntityOfPage": {
		"@type": "WebPage",
		"@id": "{{ page.permalink }}"
	},
	"headline": "{{ page.title }}",
	"image": "{% if page.ld_json_img %}{{ page.ld_json_img }}{% else %}{{ page.cover_img }}{% endif %}",
	"datePublished": "{{ date_xml(page.date) }}",
	"dateModified": "{% if page.date_updated %}{{ date_xml(page.date_updated) }}{% else %}{{ date_xml(page.date) }}{% endif %}",
	"author": {
		"@type": "Person",
		"name": "{{ page.author }}"
	},
	 "publisher": {
		"@type": "Organization",
		"name": "南科一路 nanke.suste.ch",
		"logo": {
			"@type": "ImageObject",
			"url": "https://nanke.suste.ch/images/favicon-200.png"
		}
	},
	"description": "{{ page.summary }}"
},
{
	"@context": "http://schema.org",
	"@type": "BreadcrumbList",
	"itemListElement":
	[
	{
		"@type": "ListItem",
		"position": 1,
		"name": "首页",
		"item": "{{ config.url }}"
	},
	{
		"@type": "ListItem",
		"position": 2,
		"name": "{{ page.title }}",
		"item": "{{ page.permalink }}"
	}
	]
}
]
{% else %}
	[
	{
		"@context": "https://schema.org",
		"@type": "BlogPosting",
		"mainEntityOfPage": {
			"@type": "WebPage",
			"@id": "{{ page.permalink }}"
		},
		"headline": "{{ page.title }}",
		"image": "{% if page.ld_json_img %}{{ page.ld_json_img }}{% else %}{{ page.cover_img }}{% endif %}",
		"datePublished": "{{ date_xml(page.date) }}",
		"dateModified": "{% if page.date_updated %}{{ date_xml(page.date_updated) }}{% else %}{{ date_xml(page.date) }}{% endif %}",
		"author": {
			"@type": "Person",
			"name": "{{ page.author }}"
		},
		 "publisher": {
			"@type": "Organization",
			"name": "南科一路 nanke.suste.ch",
			"logo": {
				"@type": "ImageObject",
				"url": "https://nanke.suste.ch/images/favicon-200.png"
			}
		},
		"description": "{{ page.summary }}"
	},
	{
		"@context": "http://schema.org",
		"@type": "BreadcrumbList",
		"itemListElement":
		[
		{
			"@type": "ListItem",
			"position": 1,
			"name": "首页",
			"item": "{{ config.url }}"
		},
		{
			"@type": "ListItem",
			"position": 2,
			"name": "{{ page.title }}",
			"item": "{{ page.permalink }}"
		}
		]
	}
	]
{% endif %}
</script>

{% if is_home() %}
<script type="application/ld+json">
	{
		"@context":"http://schema.org",
		"@type":"Blog",
		"@id":"{{ url }}",
		"headline": "{{ config.title }}",
		"dateModified": "{{ date_xml(Date.now()) }}",
		"description": "{{ config.description }}",
		"image": "{{ config.url+config.blog_preview_image }}",
		"blogPost": [{% for post in page.posts %}{% if loop.index != 1 %},
		{% endif %}{"@type":"BlogPosting",
		"headline":"{{ post.title }}",
		"dateModified": "{{ date_xml(post.updated) }}",
		"datePublished":"{{ date_xml(post.date) }}",
		"author": {"@type": "Person",
		"name": "{{ post.author }}"},
		"publisher": {"@type": "Organization",
		"name": "{{ config.title }}",
		"logo": {"@type": "ImageObject",
		"url": "{{ config.url+theme.json_id_favicon }}"}},
		"image": "{{ post.cover_img }}",
		"mainEntityOfPage": "{{ post.permalink }}",
		"articleBody": "{% if post.ld_json_summary %}{{ post.ld_json_summary+theme.ellipsis }}{% else %}{{ post.summary+theme.ellipsis }}{% endif %}"}{% endfor %}]
	}
</script>
{% endif %}
