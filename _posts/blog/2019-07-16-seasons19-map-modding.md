---
title: "Seasons 19: Map and placeable mods"
date: 2019-07-16 12:00:00 +0100
author: rahkiin
header:
  image: /assets/img/blog/map-modding/modding.jpg
excerpt_separator: <!-- more -->
---

The manual of Seasons 19 has been [updated]({{ site.baseurl }}/mods/seasons19/manual/modding) to contain information on preparing mod maps and placeables.

<!-- more -->

IMAGE OF BALES IN A SHED
{% include big_image.html title="Weeds" url="/assets/img/blog/map-modding/modding.jpg" %}

#### Seasons mask

The Seasons mask is redesigned to be easier to create by map makers and to be lighter on the game engine. New changes in the Farming Simulator 19 engine allowed us to switch the way the mask is stored, allowing automatic fallback to the tip collision. This means that even without a prepared map, placeables will act correctly with the snow.

Preparing a map for Seasons is required to activate bale and swath rotting. Only with a custom mask can we be sure that all sheds are properly configured, so players know that their bales are safe inside. If a map is not prepared, bales will not rot but snow will still fall to great heights.

See the manual article on the Seasons mask on how to add the mask, configure it, and paint it.

#### Placeable masks

With the increased focus on placeables in Farming Simulator 19, we had to add some new tools to make them work better with snow. In Seasons 17 we looked at the 'clear area', the area that browned the ground when placed on grass. This worked great for the basegame placeables and most custom placeables.

In Farming Simulator 19 this is no longer the case. Placeables got more complex and bigger, with both open and roofed areas, sometimes even with platforms or spawnpoints. To accomodate this, we have added the possibility to add Seasons masks to placeables.

It works the same way as clearAreas and foliageAreas. For details, carefully read the [manual on placeables]({{ site.baseurl }}/mods/seasons19/manual/modding/maps/seasons-mask#adding-masks-to-custom-placeables).

This is also important for modders that made custom placeables on ModHub.

#### Trees

The new tree visuals in Seasons 19 are limited to a small number of trees. To have full visual support on the trees in your map, only use the trees supported. Of course evergreens do not change color so any evergreen is supported (pine, for example).

The supported trees are:
 - From Farming Simulator 19:
   - Maple
   - Birch
   - VolumeTree
 - From Farming Simulator 17:
   - Oak
 - Any evergreen

Older versions of the Farming Simulator 19 trees are not supported.

Find more information on the new visuals in the [visuals manual]({{ site.baseurl }}/mods/seasons19/manual/modding/maps/textures).

#### Custom objects

For Seasons 19 it is still possible to show and hide objects depending on the season. The system has been renamed and changed a bit, but it is all detailed in the manual. You can show and hide objects depending on the snow or season. And the ice plane can be used to show or hide objects when the soil is frozen. Make sure to read the manual carefully.

#### Animal pens and grazing

Any animal husbandry that visually contains grass should have this properly configured in the placeable. Even if the pen can't be bought or sold by the player. This ensures that the grazing system works for the animals in the pen.

To prepare for grazing, add foliageAreas with grass. This has already been done in the basegame pens and might already be the case for your own. See the manual for more information.

#### Mod updates to GIANTS

You might be eager to get your map or mod updated and sent to GIANTS before Seasons 19 releases. However, you really need to test the changes you make first, with Seasons, before you send it in. So make sure to wait for the release on July 24th, quickly (but thorougly) test your changes together with Seasons, and then send in your update.
