---
layout: page
title: About
permalink: /about/
---


{% assign authors = site.data.people %}
<div>
    {% for tmp in authors %}
        {% assign author = tmp[1] %}
        <div>
            <h3>{{ author.name }}</h3>
            <img src="https://www.gravatar.com/avatar/{{ author.gravatar_hash }}?s=135" alt="A photo of {{ author.name }}" />
            <figcaption>{{ author.name }}</figcaption>
            <ul>
                <li><label>Github: </label><a href="https://github.com/{{ author.github }}">{{ author.github }}</a></li>
                <li><label>Bitbucket: </label><a href="https://bitbucket.com/{{ author.bitbucket }}">{{ author.bitbucket }}</a></li>
                <li><label>Twitter: </label><a href="https://twitter.com/{{ author.twitter }}">{{ author.twitter }}</a></li>
                <!-- <li><label>Linkein: </label><a href="https://github.com/{{ author.linkedin }}">{{ author.linkedin }}</a></li> -->
            </ul>
        </div>
    {% endfor %}
</div>

---
