---
layout: default
---

<small>
  <a href="./">all</a> | 
  <a href="data">data</a> |
  <a href="tools">tools</a> | 
  training |
  <a href="research">research</a> |
  <a href="community">community</a>
</small>

<ul>
  {% for post in site.tags.training %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: ", " }}</small>
    </li>
  {% endfor %}
</ul>
