---
layout: default
---

<p>all | [data](data)</p>

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a> <small>{{ post.date | date: "%-d %B %Y" }} | <em>{{ post.tags | join: "</em> - <em>" }}</em></small>
    </li>
  {% endfor %}
</ul>

