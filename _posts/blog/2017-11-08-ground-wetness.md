---
title: New model for ground wetness
date: 2017-11-08 15:00:00 +0100
author: reallogger
header:
  image: /assets/img/blog/groundWetness/wetnessModel.png
----

With Seasons version 1.2 comes a new model for ground wetness to better capture the variability of the water content in the soil. The model is driven by environmental factors like rain, melting snow, relative humidity, air and soil temperature, solar radiation and more. 

In the original game the ground basically dries after 30 in game minutes. Since Seasons brings a longer and variable time scale (i.e. ability to set number of days per season) it was necessary with some changes. The new model is based on a scientific model of soil moisture dynamics and this model was specifically made for soils in which crops grow.

Fundamental in the model is the calculation of the soil water content as a fraction of saturation, where unity is fully saturated soil. Different to vanilla mechanics is that the ground wetness in Seasons never reaches zero as there always is some water in the soil. Generally, depending on what environment (i.e. GEO) the player uses the minimum value is normally around 0.05-0.1. The model is global, which means that the same ground wetness is assumed for the whole map. It is possible to measure the ground wetness with the Wopstr handtool. The icon for ground wetness looks like this: 

{% include big_image.html title="Soil moisture model" url="/assets/img/blog/groundWetness/wetnessIcon.png" %}

The figure below shows the major effects captured in the model. In the game, at every hour, Seasons now calculates the water infiltration, transpiration from crops, evaporation from soil and drainage. 

{% include big_image.html title="Soil moisture model" url="/assets/img/blog/groundWetness/wetnessModel.png" %}

#### WATER INFILTRATION, DRAINAGE AND FROZEN SOIL

When it rains or when snow melts, water will infiltrate into the ground. This is the main inflow into the soil, but is countered by drainage (i.e. net outflow) to neighbouring areas. In reality the drainage is very dependent on soil type and topography, but for now this is kept constant so hilly areas are drained in similar manner as flat lands. Perhaps a future version can include the effects of topography and ways to customize soil parameters. Currently, when the soil water content is below a field capacity the drainage stops and there is assumed equilibrium between inflow and outflow in the soil. When the soil is frozen the soil water content is not updated. This means whatever water is in the soil in the autumn, when soil freezes, is locked until the soil thaws in spring. 

#### EVAPORATION AND TRANSPIRATION

From the surface of the soil and plants, water evaporate. In Seasons evaporation does not occur when the soil water content is below a certain soil saturation point, when the air is saturated with water (i.e. high relative humidity) or when snow is covering the ground. The evaporation is a function of soil water content and other factors. There is also has an upper limit to how much water that can evaporate in one hour. 

Crops, plants and trees are consumers of water. In Seasons the transpiration from growth is considered. There is a lower and upper limit to how much water crops and plants consume every hour. We have also assumed that there is effectively no growth when the air temperature is below 5 degrees so transpiration stops. The effect is that ground dries less quickly in autumn for instance when colder nights can be experienced. 

All of this might seem complicated, but as the model is based on physics, the model works for different locations (e.g. GEO’s) and in different seasons. The decay of ground wetness is scaled with the length of season used. This means that with a 3-day season, the ground will dry faster than when using a 24-day season. This gamification was included as there is less time available to work in fields in a 3-day season. 



