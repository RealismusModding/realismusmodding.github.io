---
title: Seasons Mask
tags: [modding, maps, mask]
keywords: guide, modding, maps, mask, snow
last_updated: 2019-06-16 20:00:00 +0100
summary: "Learn how to add the Seasons mask to your map for full compatibility"
ref: maps_seasons_mask
permalink: /mods/seasons19/manual/modding/maps/seasons-mask
---

# Seasons Mask
{:.no_toc}

<div class="alert alert-warning" role="alert">
    <strong>Warning:</strong> The Seasons mask system completely changed for Farming Simulator 19.
</div>

The Seasons mask is a bitvector map (also known as a grle file or an infolayer) that contains a mask used by Seasons to determine if the area is inside or outside. Or technically. whether the terrain at the area is accessible from the air. If there is a roof above, then it is not accessible. Also when there is a road shape on top it is not accessible.

The mask is used to place snow only outside of sheds and not under road objects. It is also used to determine whether bales and swath (grass, hay and straw) is inside a building or outside.

This infolayer has to be implemented by any map that wants ultimate support for Seasons.

Note that when a map does not have a Seasons mask, the tipCol layer will be used as a fallback (this is new in Seasons 19). There have been major changes between Farming Simulator 17 and 19 that made a simplified system possible (and also the fallback). The tipCol is only used for snow. Bales will not rot until a custom mask is supplied.

In this guide you will learn all steps of adding the Seasons mask to a map.

<div class="alert alert-info" role="alert">
  <strong>Please read the full guide</strong> before executing the steps, or asking questions about issues you have. This guide contains a step-by-step explanation on how to properly add the mask.
</div>

* TOC
{:toc}

## Creating and installing the mask file

To create the mask, duplicate the tipCol file from your map and name it `seasonsMask.grle`.

Next the map.xml has to be updated to let Seasons know where the mask is.

```xml
<map>
    ...

    <seasons>
        <mask filename="map/seasonsMask.grle" /> <!-- point to the mask file -->
    </seasons>

    ...
</map>
```

To paint the infolayer the file also needs to be added to the map i3d file:

```xml
<Files>
    ...
    <File fileId="100000" filename="seasonsMask.png" /> <!-- note to use .png here instead of .grle -->
    ...
</Files>

...

<InfoLayer name="tipCol" fileId="64" numChannels="1" runtime="true"/>
<InfoLayer name="farmland" fileId="65" numChannels="2"/>
<InfoLayer name="seasons" fileId="100000" numChannels="1"/> <!-- new -->
```

You now have a mask based on your tip collisions. This is not required but highly recommended, as no snow can be picked up where tip collision is active. On its turn, tip collision is normally active where a shovel or other tool can't get to the tip, like below road objects.

Tip: To improve the precision in which you can draw your mask, you can convert the GRLE file you created to a PNG file using the grleConverter on [GDN](https://gdn.giants-software.com). Then resize that file to 2048x2048. Save it again as PNG and put it in the location that the GRLE file is. Then delete the GRLE file and open the map in the editor normally. Save at least once so it gets converted to GRLE again.

## Painting the mask

The next and final step is to paint any changes you want on the mask.

To start painting, use the same tools as with the farmland and tipcol layers: the infolayer tool. In the terrain box, select the `seasons`. Use an Add and Subtract tool on your mouse, and start painting away using value `1`.

Anywhere painted with 1 (shown as white in the editor), Seasons considers ***inside***. (This is equivalent to the tipCol where white is also collision).

You should paint:
 - Inside buildings
 - Inside lakes (possibly handled by the tipCol)

If you have static animal pens you can also clean up those:
 - Animal troughs
 - Wool spawnpoints
 - Manure heaps
 - Other pallet spawnpoints

## Adding masks to custom placeables

With the new placeable system in Farming Simulator 19 come new masks. In Seasons17 the whole clearArea of the placeable was automatically masked so no snow fell inside sheds. This is not possible in Farming Simulator 19 as placeables are now bigger and more varied. Especially animal pens have different requirements.

If your map uses custom animal pens that can be placed by the player, you should supply new masks. If the pens are placed by you in items.xml, you can also mask directly in the map Seasons mask, and disable masking inside the placeable. Or you can put the mask inside the placeable.

Areas in placeables that should be masked:
 - Silage bunkers
 - Manure heaps
 - Feeding troughs
 - Pallet spawnpoints (otherwise they are blocked from spawning)
 - Inside buildings on the placeable.

The areas are created in the same way as the clearAreas, foliageAreas, and so on. Any area with a mask will not have snow and will be treated as inside.

For each area you want to mask (prevent snow from falling or bales from rotting), you need to create a parallelogram. Do this by creating a new transform group in your placeable model. This is the first corner. Then add two children, also transform groups. Each form another corner of the parallogram. These corners have to be the sides of the first corner (so not the opposite). This is exactly the same as the other areas.

Then add the areas to the XML:

```xml
<placeable>
    ...
    <seasons>
        <maskAreas>
            <maskArea startNode="0|1|1" widthNode="0|1|1|0" heightNode="0|1|1|1" />
        </maskAreas>
    </seasons>

    ...
</placeable>
````

<div class="alert alert-info" role="alert">
  <strong>Note:</strong> You will not find an example of this in the basegame. We have inserted the masks for the basegame placeables in a different way, without the need to update the game or any assets.
</div>

### Disabling automatic masking fallback

If you do not want to block any snow for your placeable, for example because it does not have a open footprint, or because you already mask it in the map, you can disable automatic masking by setting an empty mask.

Use the following mask definition in your placeable:

```xml
<placeable>
    ...
    <seasons>
        <maskAreas>
            <!-- empty list so there is no masking -->
        </maskAreas>
    </seasons>

    ...
</placeable>
````

This will tell Seasons that there is a custom mask, where the mask has no areas.

## Testing

The masks can be tested in-game by dropping snow using the `rmAddSnow 1` console command. Use `rmResetSnow` to remove all snow and start over.
