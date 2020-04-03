{# 社交连接 #}
<div class="social-links" {% if url_for(page.path) === theme.menu.ABOUT+'/index.html' %} style="display: none;" {% endif %}>
    {% if theme.social.weibo %}
    <a class="social-link" title="Weibo" href="{{ theme.social.weibo }}" target="_blank" rel="noopener">
        {% include "icons/weibo.svg" %}
    </a>
    {% endif %}
    {% if theme.social.github %}
    <a class="social-link" title="GitHub" href="{{ theme.social.github }}" target="_blank" rel="noopener">
        {% include "icons/github.svg" %}
    </a>
    {% endif %}
    {% if theme.social.facebook %}
    <a class="social-link" title="Facebook" href="{{ theme.social.facebook }}" target="_blank" rel="noopener">
        {% include "icons/facebook.svg" %}
    </a>
    {% endif %}
    {% if theme.social.twitter %}
    <a class="social-link" title="Twitter" href="{{ theme.social.twitter }}" target="_blank" rel="noopener">
        {% include "icons/twitter.svg" %}
    </a>
    {% endif %}
    {% if theme.social.telegram %}
    <a class="social-link" title="Telegram" href="{{ theme.social.telegram }}" target="_blank" rel="noopener">
        {% include "icons/telegram.svg" %}
    </a>
    {% endif %}
    {% if theme.social.bilibili %}
    <a class="social-link" title="bilibili" href="{{ theme.social.bilibili }}" target="_blank" rel="noopener">
        {% include "icons/bilibili.svg" %}
    </a>
    {% endif %}
    {% if theme.social.youtube %}
    <a class="social-link" title="YouTube" href="{{ theme.social.youtube }}" target="_blank" rel="noopener">
        {% include "icons/youtube.svg" %}
    </a>
    {% endif %}
    {% if theme.rss %}
    <a class="social-link" title="Feed" href="{{ theme.rss }}" target="_blank" rel="noopener">
        {% include "icons/feed.svg" %}
    </a>
    {% endif %}
</div>
