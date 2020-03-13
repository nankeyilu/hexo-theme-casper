{# footer #}

{% include "search.swig" %}
<footer class="site-footer outer">
	<div class="site-footer-content inner">
		<div class="copyright">
			<a href="{{ config.root }}" title="{{ config.title }}" style="margin-right: 1em;">&#127279; {{ config.title }}</a>
			文本内容以<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">知识共享-署名-相同方式共享4.0 协议国际版</a>授权。
		</div>
		<nav class="site-footer-nav">
			{% for key,link in theme.footer %}
			<a href="{{ link }}" title="{{ key }}" target="_blank" rel="noopener">{{ key }}</a>
			{% endfor %}
			{{ link_to('https://hexo.io', 'Hexo', {external: true})}}
			{{ link_to('https://github.com/xzhih/hexo-theme-casper', 'Casper', {external: true})}}
		</nav>
	</div>
</footer>
