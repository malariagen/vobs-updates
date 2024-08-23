---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  API | 
  <a href="research">research</a> |
  <a href="blog">blog</a>
</small>

<ul>
  {% for post in site.tags.API %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>
