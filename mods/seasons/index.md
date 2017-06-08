---
layout: mod
title:  "Seasons"
date:   2017-04-18 15:16:15 +0200
categories: seasons
redirect_from:
  - /seasons/
header:
  image: /assets/img/mods/seasons/SeasonsIcon_1024.jpg
---

{% assign mod = site.data.mods["seasons"] %}

{% lead %}Seasons is about more than just adding pretty textures corresponding to a season and snow. It is an attempt to better simulate a year in a farmer’s life. Nearly every aspect of Farming Simulator has been carefully rethought and rewritten from growth to weather, crop prices, loans and the vehicle maintenance system. It is a mod designed for the players who do not like being able to sow, harvest and sow again all in one day.{% endlead %}

{% if mod.released %}
<p class="text-center">
    <a class="btn btn-outline-primary m-1" href="https://farming-simulator.com/mod.php?mod_id={{ mod.modhub_id }}" ga-on="click" ga-event-category="Outbound Link" ga-event-label="https://farming-simulator.com/mod.php?mod_id={{ mod.modhub_id }}" ga-transport="beacon">Download and Vote</a>
</p>


<a name="video" />
{% include video.html title=mod.video.title id=mod.video.id duration=mod.video.duration date=mod.video.date %}
<p> </p>
{% endif %}

{% anchor h2 %}Screenshots{% endanchor %}
<div class="row">
    {% for screenshot in mod.screenshots %}
    <div class="col-md-4 col-sm-6 col-xs-12 mb-4">
        <a href="{{ screenshot.url }}" target="_blank">
            <img class="img-fluid rounded" src="{{ screenshot.url }}" alt="{{ screenshot.title }}" title="{{ screenshot.title }}" />
        </a>
    </div>
    {% endfor %}
</div>

{% anchor h2 %}More videos{% endanchor %}
<div class="row">
    {% for video in mod.videos %}
    <div class="col-md-4 col-sm-6 col-xs-12 mb-4">
        <a href="https://www.youtube.com/watch?v={{ video.id }}" target="_blank">
            <img class="img-fluid rounded" src="https://i.ytimg.com/vi/{{ video.id }}/hq720.jpg" alt="{{ video.title }}" title="YouTube video: {{ video.title }}" />
        </a>
    </div>
    {% endfor %}
</div>
