---
layout: default
---

<small>
  <a href="../">all</a> | 
  data
</small>

<ul>
  {% for post in site.tags.data %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | {{ post.tags | join: " - " }}</small>
    </li>
  {% endfor %}
</ul>
