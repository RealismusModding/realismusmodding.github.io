---
title: GEO mods
tags: [modding]
keywords: guide, modding, geo
last_updated: 2017-06-07 22:16:15 +0100
summary: ""
ref: geo
permalink: /mods/seasons/manual/modding/geo/
---

# GEO mods

A GEO mod is a small mod with some XML files and a special Seasons setting in the modDesc. It allows a player to choose a different weather and growth configuration. GEO comes from 'geographic', as the mods are meant to describe an actual area in the world, like Midwest U.S.A. or Northern Sweden.

You can download official GEO mods from Realismus Modding on ModHub. A list of available GEO mods can be found at [the additional mods page](/mods/seasons/supplements). Other modders have released GEO mods as well.

The guides in this category will explain how to create the configuration files.

**Note**: All of the possible configuration files for a GEO mod can also be supplied in a map mod. Make sure you put the files in the mod root folder. For example, if the mod is named MyMap, put the weather file at `MyMap/seasons_weather.xml`

## Layout

The layout of a GEO mod is different from any other: it contains only XML files and possibly textures and an i3d file (see for example the Paraguay GEO). To make the GEO mod register with Seasons, a small block of XML is needed inside the `modDesc.xml`:

```xml
<seasons version="3">
    <type>geo</type>
    <dataFolder>data/</dataFolder>
</seasons>
```

Make sure to use the latest version, which is currently 3. This version is used to make sure Seasons is up to date with your GEO mod. The type has to be geo for a GEO mod. This ensures only 1 GEO mod is loaded and no conflicts arise. The `dataFolder` value is the path where your `seasons_*.xml` files reside.

Make sure to look into the contents of our GEO mods for reference.

## Remarks on publishing

Do not put Realismus Modding as author of the mod. You can add us as contributor, if we contributed. Also make sure you use the proper XML in your modDesc. For examples, look at our own GEO mods.
It is preferable to call the zip name `FS17_GEO_<area>`. Do not put `RM` in the mod name, that is reserved for the Realismus Modding team.

If you upload your GEO mod to Giants ModHub, make sure to look at the testing document. Also, make sure you supply a screenshot of the growth overview in the Seasons menu.

### Console

Giants might invite your GEO mod on console as well. This will require more testing to make sure it does not affect Seasons on console in a very bad way. A console GEO mod can only contain XML files and replace textures, no scripts.

For replacement textures, the additional field `textureMemoryUsage` is required in the `textures` tag, containing the number of texture bytes required. Either Giants Software or Realismus Modding will calculate this value.
