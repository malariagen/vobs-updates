---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  <a href="API">API</a> | 
  research |
  <a href="blog">blog</a>
</small>

<ul>
  {% for post in site.tags.research %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>
