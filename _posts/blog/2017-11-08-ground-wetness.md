---
title: New model for ground wetness
date: 2017-11-09 15:00:00 +0100
author: reallogger
header:
  image: /assets/img/blog/groundWetness/wetnessModel.png
description: With Seasons version 1.2 comes a new model for ground wetness to better capture the variability of the water content in the soil. This post elaborates on the model, its implementation and effects on the game.
excerpt_separator: <!-- more -->
---

_This post is part of a series with background information on Seasons. The previous post was about [maintenance and repair of vehicles](/blog/2017/11/07/maintenance-repair)._

With Seasons version 1.2 comes a new model for ground wetness to better capture the variability of the water content in the soil. The model is driven by environmental factors like rain, melting snow, relative humidity, air and soil temperature and more.

<!-- more -->

In the original game the ground basically dries fully within an hour after the rain has stopped. Since Seasons brings a longer and variable time scale (i.e. ability to set number of days per season) it was necessary to make some changes. The new model is based on a scientific model of soil moisture dynamics and this model was specifically made for soils in which crops grow.

Ground wetness is a game variable that varies between 0 and 1. Currently, ground wetness is mainly affecting the tire friction. Exciting features are planned for a future version of Seasons where ground wetness will play a larger role.

In Seasons ground wetness is interpreted as the level of saturation, where unity is fully saturated soil. Different to vanilla mechanics is that the ground wetness in Seasons never reaches zero as there always is some water in the soil. Generally, depending on what environment (i.e. GEO) the player uses the minimum value is normally around 0.05-0.1. The model is global, which means that the same ground wetness is assumed for the whole map.

The figure below shows the major effects captured in the model. In the game, at every hour, Seasons now calculates the water infiltration, transpiration from crops, evaporation from soil and drainage.

{% include big_image.html title="Soil moisture model" url="/assets/img/blog/groundWetness/wetnessModel.png" %}

#### Water infiltration, drainage and frozen soil

When it rains or when snow melts, water will infiltrate into the ground. This is the main inflow into the soil, but is countered by drainage (i.e. net outflow) to neighbouring areas. In reality the drainage is very dependent on soil type and topography, but for now this is kept constant so hilly areas are drained in similar manner as flat lands. Perhaps a future version can include the effects of topography and ways to customize soil parameters. Currently, when the soil water content is below a field capacity the drainage stops and there is assumed equilibrium between inflow and outflow in the soil. When the soil is frozen the soil water content is not updated. This means whatever water is in the soil in the autumn, when soil freezes, is locked until the soil thaws in spring, given a very cold winter.

#### Evaporation and transpiration

From the surface of the soil and plants, water evaporate. In Seasons evaporation does not occur when the soil water content is below a certain soil saturation point, when the air is saturated with water (i.e. high relative humidity) or when snow is covering the ground. The evaporation is a function of soil water content and other factors. There is also has an upper limit to how much water that can evaporate in one hour.

Crops, plants and trees are consumers of water. In Seasons the transpiration from growth is considered. There is a lower and upper limit to how much water crops and plants consume every hour. We have also assumed that there is effectively no growth when the air temperature is below 5 degrees so transpiration stops. The effect is that ground dries less quickly in autumn for instance when colder nights can be experienced.

Below is an example of the ground wetness for one year using a 9 day season length. It rains a few times in spring. Then the whole summer stays dry. In autumn there are days with rain again, but the ground dries before the next rain. Then in late autumn, the ground dries slower after rain. In mid winter the ground freezes when the ground has approximately 40% saturation. This will then be the start value when ground thaws in spring.

<img title="Soil moisture model" src="/assets/img/blog/groundWetness/plot.png" class="mx-auto d-block" />

#### Measuring the ground wetness

It is possible to measure the ground wetness with the Wopstr handtool. The icon for ground wetness looks like this:

<img title="Soil moisture model" src="/assets/img/blog/groundWetness/wetnessIcon.png" alt="Droplet icon shown in the WOPSTR for ground wetness" class="mx-auto d-block" />

All of this might seem complicated, but as the model is based on physics, the model works for different locations (e.g. GEO’s) and in different seasons. The decay of ground wetness is scaled with the length of season used. This means that with a 3-day season, the ground will dry faster than when using a 24-day season. This gamification was included as there is less time available to work in fields in a 3-day season.



