---
title: Measuring
tags: [gameplay]
keywords:
last_updated: 2019-06-16 20:00:00 +0100
ref: gp_measuring
permalink: /mods/seasons19/manual/gameplay/measuring
---

# Measuring
{:.no_toc}

In Seasons 1.2 we added a measurement tool support to aid in getting information about your farm and the objects on it.

The Wopstr M420 is a measurement handtool, created specifically for Seasons. It is available in the shop under the 'Misc' category and sells for 3500 euros. It is a very magical device, that can measure a wide varierty of objects and metrics.

* TOC
{:toc}

{% include big_image.html title="Soil moisture model" url="/assets/img/blog/wopstr/measurement.jpg" %}

## Usage

Usage is simple: activate the handtool by pointing at something nearby and holding the activation button (left mouse button or X button). The measurement will start, and the indicator will start to pulsate, showing it is measuring. When the measurement is done and has succeeded, a dialog will show with all the information it has. If it has failed it will show a red circle. This can be either because it can't find anything near that can be measured, or it just behaves oddly (sometimes the Wopstr has issues finding its target. Not a surprise with such an advanced device).


## Measurements

The Wopstr can measure a number of things that were not available to the farmer before its introduction.

#### Trees

Both planted and 'static' trees (placeable trees are trees placed by the map maker) can be measured by the measurement tool. It might have difficulty with those 'static' trees though, as not much information is available.

For static trees, the device gives just the type of tree. For planted trees it also gives the nearest distance to the next tree and the growth percentage. When the growth of the tree is blocked by a tree nearby, the distance will be shown in red. This can be useful when thinning your forest.

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/tree_type.jpg" alt="An icon depicting a half-filled can" name="Contents" info="The type of tree. Not all treetypes are known." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/tree_height.jpg" alt="An icon depicting a tree with an upwards arroe" name="Tree height / maturity" info="The height of the tree as percentage of its possible height. If it can't be determined it will assume the tree has grown fully." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/tree_distance.jpg" alt="An icon depicting depicting two trees with a horizontal line between" name="Tree distance" info="Distance between the scanned tree and its nearest tree. If no tree is near, it shows the maximum measurable distance of 9.6m. The distance determines how high a tree can grow." %}

#### Bales

Measuring bales can be very useful, especially when they are wrapped. When measuring a bale, you get the contents (grass, hay, silage, straw), volume, and if it is fermenting you also get the percentage of the fermentation process and how many hours are left for full fermentation.

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/contents.jpg" alt="An icon depicting a half-filled can" name="Contents" info="Contents of the bale, especially useful with wrapped bales. Also shows current (compacted) volume." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/fermentation.jpg" alt="An icon depicting a silage bale" name="Fermentation progress" info="The progress of the fermentation including the number of hours left for full fermentation. Note that not all bales ferment and the progress will stuck at 0% and will show no time." %}

#### Soil

When you point the Wopstr slightly down, you can scan the soil. This gives useful information like crop, crop growth, crop moisture and [ground wetness](/blog/2017/11/09/ground-wetness). There are also other things you get to know, like the location in the world (in the map), and your elevation.

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/compass.jpg" alt="An icon depicting a compass" name="Location" info="Just for orientation and screenshots" %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/elevation.jpg" alt="An icon depicting a mountainside" name="Elevation" info="The reference point is the water level (the level when your tractor breaks down because you go too deep into the water). It is useful for seeing the relative height. At this moment, the height has no gameplay effect." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/fruit.jpg" alt="An icon depicting a seed" name="Fruit / Crop type" info="Type of crop in the soil, if any." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/crop_height.jpg" alt="An icon depicting a crop with an upwards arrow" name="Crop height / growth progress" info="Might stay under 100% if crop can't reach maturity." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/crop_moisture.jpg" alt="An icon depicting a crop with waterdrops next to it" name="Crop moisture" info="Used for determining if you can harvest the crop. In the future, you will always be able to harvest but higher moisture gives lower quality. Capped to 25%, which is fully moist." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/fertilization.jpg" alt="An icon depicting a leaf" name="Fertilization level" info="Fertilization level, also visible in the overview menu." %}

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/moisture.jpg" alt="An icon depicting a water droplet" name="Ground wetness" info="The wetness of the ground determines traction. In the future, this will also affect soil compaction." %}

#### Pallets

The Wopstr also supports scanning pallets and liftable crates (potatoes, sugarbeets). It will show you the contents and the volume of those contents.

{% include manual_icon_image.html src="/assets/img/mods/seasons/wopstr/contents.jpg" alt="An icon depicting a half-filled can" name="Contents" info="The contents of the pallet, with its volume or amount (liters of potatoes or number of saplings)" %}

## Final remarks

As said above, the Wopstr is magical, advanced and fragile. If it does not measure something you expect to, try it again in a different direction.

In real life, trees can grow on, and on, depending on how much light and food they can get. This not the case in the game. That means 100% tree heigth means the tree can't grow anymore in the game. If it is stuck at 50%, it can't grow with the current tree distances.

## TODO

- New icons
