---
title: Weather
tags: [gameplay]
keywords:
last_updated: 2019-06-16 20:00:00 +0100
summary: ""
ref: gp_weather
permalink: /mods/seasons19/manual/gameplay/weather
---

# Weather

The weather system in the game has been adjusted to suit each season. In general the winters are cold, the autumn is wet, while the summers are warm and with less chance of rain. The weather when using the Seasons mod is generally based on weather data from southern UK, except that winters have been made colder. The weather can be customised by map makers, or other GEO mods.

Seasons 19 contains a new detailed forecast, with 3-hourly information for the next 24 hours. It also contains wind and percipitation information. Lastly it gives an indication on how well grass can dry.

The new weather also carefully controls downfall, clouds, cloud wind, and wind in trees.

### Randomized weather
For every day in the game the air temperature and weather is determined according to weather statistics. The forecast can be used to determine what the weather will be. However, there is an uncertainty in the forecast. This increases when forecasting further into the future.

### Daylight
Equations for the suns elevation above the horizon has been used to determine the completely new daylight effects. As default we have used a latitude of 48.9 degrees, but this can be changed for a map that is prepared for our mod, or by using one of our GEO mods.

### Soil temperature
A thermodynamic model has been implemented to model the propagation of heat into the soil. The model uses air temperature and solar radiation, which changes with season and time of day. In winter the soil be frozen and cannot be worked on. An icon will show on the screen when the soil is frozen (shown below). Crops need a certain soil temperature in order for the seeds to germinate. You should consult the planting and harvesting calendar before planting.

<img src="/assets/img/mods/seasons/frozenGround.jpg" alt="Frozen ground icon" class="img-fluid rounded" />

### Crop moisture
Crop moisture is simulated in the Seasons mod. Rain and hail increases crop moisture, while sunny weather helps to decrease it. An icon will show on the screen when the crop is too moist (more than 20% moisture content) to harvest crops (shown below). When crop is moist it is also not possible to turn grass into hay by using a tedder. Crops will dry faster in summer than in autumn, both due to lower temperatures in autumn, but at this time of year there is also much less solar radiation. At night crop dry very slowly (as of yet there is no modelling of wind). This will mean that if you are unlucky and experiences a late afternoon shower in autumn, you might not be able to harvest before next morning after sunrise some time.

Note that you can turn off this feature if it is too bothersome to you. There is a toggle in the Seasons menu settings.

<img src="/assets/img/mods/seasons/wetCrop.jpg" alt="Wet crops icon" class="img-fluid rounded" />

### Snow
Snow with Seasons is just like heaps of wheat, seeds, fertilizer, grass or chaff: you can pick it up, move it around, load it into a tipper, and so on. On top of that, when driving through snow you will be compressing it with the wheels.

Snow does not fall everywhere: if a map is optimized it will not fall inside buildings that have a roof or on other parts where snow can't get. Snow also does not fall inside placeable sheds.
If a map is not fully optimized for Seasons, snow will fall everywhere and will not accumulate higher than 1 level (6cm).

When snow falls, tippers and shovels fill up. Put them in a shed (when the map has a seasons mask) or activate the cover. Snow will melt from tippers and shovels when it is not freezing outside.

If you want more fun with more snow, ask you mod-map maker to update his or her map for Seasons.

*Note*: The extra weather effects, such as snow, will work on any map, but for the full gameplay experience, we highly recommend you to play on maps that have been optimised for seasons.
