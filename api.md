---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  API
</small>

<ul>
  {% for post in site.tags.API %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>
