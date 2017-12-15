---
title: Weather
tags: [gameplay]
keywords:
last_updated: 2017-06-07 22:16:15 +0100
summary: ""
ref: gp_weather
permalink: /mods/seasons/manual/gameplay/weather
---

# Weather

The weather system in the game has been adjusted to suit each season. In general the winters are cold, the autumn is wet, while the summers are warm and with less chance of rain. The weather when using the Seasons mod is generally based on weather data from southern UK, except that winters have been made colder. The weather can be customised by map makers, or other mods like for example our GEO mods.

### Randomized weather
For every day in the game the air temperature and weather is determined according to weather statistics. In the current version of the mod the weather forecast is very reliable and the forecast will not change. This is with one exception. Hail will not be forecasted and can occur only with a couple of hours warning.

### Daylight
Equations for the suns elevation above the horizon has been used to determine the completely new daylight effects. As default we have used a latitude of 51 degrees, but this can be changed for a map that is prepared for our mod, or by using one of our GEO mods.

### Soil temperature
A thermodynamic model has been implemented to model the propagation of heat into the soil. The model uses air temperature and solar radiation, which changes with season and time of day. In winter the soil be frozen and cannot be worked on. An icon will show on the screen when the soil is frozen (shown below). Crops need a certain soil temperature in order for the seeds to germinate. You should consult the planting and harvesting calendar before planting.

<img src="/assets/img/mods/seasons/frozenGround.jpg" alt="Frozen ground icon" class="img-fluid rounded" />

### Crop moisture
Crop moisture is simulated in the Seasons mod. Rain and hail increases crop moisture, while sunny weather helps to decrease it. An icon will show on the screen when the crop is too moist to harvest crops (shown below). When crop is moist it is also not possible to turn grass into hay by using a tedder. Crops will dry faster in summer than in autumn, both due to lower temperatures in autumn, but at this time of year there is also much less solar radiation. At night crop dry very slowly (as of yet there is no modelling of wind). This will mean that if you are unlucky and experiences a late afternoon shower in autumn, you might not be able to harvest before next morning after sunrise some time.

<img src="/assets/img/mods/seasons/wetCrop.jpg" alt="Wet crops icon" class="img-fluid rounded" />

### Snow
Snow is a swath. You can handle it with any bucket you would be able to use on grass. Because of the Tip Anywhere functionality, there is this new feature called the TipCol. This is a way for map developers to decide where snow can't be placed. Good places are inside buildings, or on roads that are made of models. (The snow would not be able to be cleaned up by machinery because the road object is in the way). We can't use this TipCol (for performance and technical reasons), so we place snow everywhere. This will sadly cause a lot of ploblems on roads where it can't be cleared by a snowplough. So we added a way for map makers to tell us where we can and can't place snow. As long as the map does not tell us this, we will keep the snow till a minumum, which is 1 layer (6 cm). As long as the map is prepared with a seasons mask, the mask is automatically updated when placing placeables in the game.

When snow falls, tippers and shovels fill up. Put them in a shed (when the map has a seasons mask) or activate the cover. Snow will melt from tippers and shovels when it is not freezing outside.

If you want more fun with more snow, ask you mod-map maker to update his or her map for Seasons.

*Note*: The extra weather effects, such as snow, will work on any map, but for the full gameplay experience, we highly recommend you to play on maps that have been optimised for seasons.
