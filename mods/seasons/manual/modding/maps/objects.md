---
title: Map Objects
tags: [modding, maps, objects]
keywords: guide, modding, maps, objects, ssSnowAdmirer, ssSeasonAdmirer, admirer, ssIcePlane
last_updated: 2017-09-21 20:00:00 +0100
summary: "Add admirers to objects to give more immersion to your map"
ref: maps_objects
permalink: /mods/seasons/manual/modding/maps/objects
---

# Map Objects
{:.no_toc}

A map contains many objects, including houses, roads, trees but also traffic lights and other decorations. The vanilla game allows the use of 'admirers' to give certain behaviour to objects.
A good example is the `Nightlight2`: it makes the object visible during night and invisible during the day. Another example is the `SunAdmirer`, that makes an object only visible when the sun is. (It is invisible in bad weather or the night.)

Seasons adds some more of these 'admirers' to the game, to allow for seasonal objects, such as a BBQ in the summer or a hearth in the winter.

* TOC
{:toc}

## How admirers and objects work

Admirers are object classes with an `onCreate` method. You have probably seen the term `onCreate` before. The method is called during the loading of a map or placeable if it is specified to an object.

The generic use of an admirer is as follows:
 - Select the object
 - In the attributes editor, add a new use attribute of type `script`.
 - Name the attribute `onCreate`
 - Give the attribut a value in the form of `<admirer class>.onCreate`, like `Nightlight2.onCreate`
 - Add any attributes that are used by the used admirer.

Note that adding such a script will not change the appearance of an object. The scripts only run when playing the map.

### Defaults: vanilla compatibility

When testing your admirers, you will notice that without Seasons running, the objects do not change visiblity. That is because the script to do so is not available.
If a game encounters an onCreate script call that it can't fulfill because the class is not available, it will be ignored. That means it will not change the state.

If you want an object to be visible on a map when Seasons is not active, set it as visible in the Giants Editor. A good example is a BBQ. If you want to hide it, like a snowman, set it as invisible.

There is one more issue, and that is colissions. Setting an object invisible does not disable its colission. This is by design. To solve ghost colissions in a game without Seasons, you need to add the Seasons filler script to your modmap. This script will disable all colissions of objects with Seasons admirers that are set to invisible. This has no performance impact on the speed of the map.

TODO: link to script.

## Object types

As of Seasons 1.2, there are three objects that can be used by maps. They are detailed below.

For each admirer, the name of the class is specified, to be used in the `onCreate` attribute. Also any attributes for that admirer are given, with a possible default value. If you omit the attribute the default value is used.

If you are missing something or want something special, make your own objects or ask the team for it to be added in a future version.

### Visibility per season

Make an object appear in one or more seasons, while hiding it in the other seasons. By default, when not specifying any season, the object is always visible. Add a boolean attribute with the season name and an unchecked value to hide it in that season.

 - class name: ssSeasonAdmirer
 - attributes:
   - spring (boolean, default is On)
   - summer (boolean, default is On)
   - autumn (boolean, default is On)
   - winter (boolean, default is On)

### Visibility for snow

To create a snowman or visual heaps of snow, you can use the `ssSnowAdmirer`. With it you can make an object visible when there is snow. You can also hide objects if there is snow, by adding the `snow` attribute and unchecking it.

Since Seasons version 1.2 you can specify the required snow level for the object to be visible. Each level is 6cm of snow.

 - class bane: ssSnowAdmirer
 - attributes:
   - snow (boolean, default is On)
   - level (float, default is `1`, since version 1.2)

### Frozen lakes

It is not possible to freeze a lake. It is however possible to make it look like it is frozen, by adding a plane just above the water with a frozen ice texture. Then use the `ssIcePlane` admirer to make it visible only when the ground is frozen.

Make sure you set the plane invisible so it does not show when not using Seasons.

 - class name: ssIcePlane
 - attributes: none

For a nice guide to make frozen lakes, see this video by ShyWizard:

{% include video.html title="Seasons mod icePlane FS17" id="fqG8NeWQMF8" duration="45M46S" date="2017-10-24T10:00:00+01:00" %}

## Notes

Seasons disables colission masks when hiding the objects, unlike the vanilla admirers. Note however that this does not work when using an admirer on a transform group containing nodes with colissions.

You can use multiple admirers together by using transform groups. Make sure the most restrictive is on the actual node, as per the note above. An example is a BBQ that is only visible in summer when the sun shines.
