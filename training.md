---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  <a href="api">API</a> | 
  training |
  <a href="research">research</a> |
  <a href="social">social</a>
</small>

<ul>
  {% for post in site.tags.training %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>
