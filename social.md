---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  <a href="api">API</a> | 
  <a href="training">training</a> |
  <a href="research">research</a> |
  social
</small>

<ul>
  {% for post in site.tags.social %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>