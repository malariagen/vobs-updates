---
layout: default
---

<small>
  all | 
  <a href="data">data</a> |
  <a href="api">API</a> |
  <a href="research">research</a> |
  <a href="blog">blog</a>
</small>

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>

