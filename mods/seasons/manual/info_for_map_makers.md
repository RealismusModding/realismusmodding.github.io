---
title: Info for map makers (wip)
tags: [modding]
keywords:
last_updated: 2017-06-07 22:16:15 +0100
summary: ""
ref: info_for_map_makers
permalink: /mods/seasons/manual/modding/info-for-map-makers
---

Make sure fruit_density.gdm and the terrainDetailHeight_density.gdm are the exact same size to avoid problems with growth of crops. If the files have different size the player will experience uneven (stripes) of growth. 

# Info for map makers (wip)

This document will guide you through the process of optimizing your map for use with the Seasons mod from RealismusModding.

The process consists of one or more of the following steps that will be described in detail bellow.

- Adding a snowMask to tell seasons about areas where snow should not be added. If your map only uses giants default trees and bushes and you are content with the default tunable values from the seasons mod this might be all you have to do.
- If you have vegetation or other objects that you want to change textures as the seasons progresses you will have to configure texture replacements.
- You have the ability to customize how growth and animals work to fit the region of the map.
- You can customize the weather to fit the region of the map.
- You can add a lake plane to lakes and rivers.
- You can configure specific objects to be visible only in some seasons.

To help you test your map there are 4 console commands:
- `ssResetGrowth` resets all growth
- `ssAddSnow` adds a layer of snow
- `ssRemoveSnow` removes a layer of snow
- `ssResetSnow` removes all snow on the map
- `ssSetVisualSeason <season>` sets the visual season, where <season> is autumn, summer, winter, spring.

### Snow Mask

The snow mask will keep snow from falling inside sheds, houses, rivers and on model roads. The snow mask is also used to determine if an object is 'inside' our 'outside', for example with bales and vehicles.
It is important that you supply a snow mask so that Seasons can use snow up to 0.5 meter. (It will otherwise default to 0.06m. See the F.A.Q.)
The mask is a new foliage layer named `ssSnowMask`. Everywhere you paint, snow will not fall.

There are also some other layers that we use for other purposes or for the future.

- Download [invisible_mask_diffuse.dds](https://github.com/RealismusModding/FS17_seasons/raw/develop/modding/snowMask/map01/invisible_mask_diffuse.dds), [invisible_mask_diffuse0.dds](https://github.com/RealismusModding/FS17_seasons/raw/develop/modding/snowMask/map01/invisible_mask_diffuse0.dds), and [seasons_density.gdm](https://github.com/RealismusModding/FS17_seasons/raw/develop/modding/snowMask/map01/seasons_density.gdm) and put them into your map01 folder.
- Open the i3d file for your map i.e. map01.i3d with a text editor and do the following changes.

- Insert the following two lines under `<Files>`:

```xml
<File fileId="100050" filename="map01/invisible_mask_diffuse.png" relativePath="true"/>
<File fileId="100051" filename="map01/seasons_density.png" relativePath="true"/>
```

- Search for windrowFoliageShader.xml and copy the fileId
- Insert the following at the end of `<Materials>` and replace ???? with the fileId of the windrowFoliageShader:

```xml
<Material name="seasons_mask_mat" materialId="100610" ambientColor="1 1 1" customShaderId="????">
    <Texture fileId="100050"/>
    <CustomParameter name="alphaBlendStartEnd" value="70 75 0 0"/>
    <CustomParameter name="cellSizeTerrainSizeScaleXZScaleY" value="16 1024 2 255"/>
</Material>
<Material name="seasons_empty_mat" materialId="100611" diffuseColor="1 1 1 1" ambientColor="1 1 1">
    <CustomParameter name="dummyStartEnd" value="0 0 0 0"/>
</Material>
```

- Insert the following at the end of `<Layers>`:

***NOTE***: if you are making or updating a map for release: please seek contact with us, because we want to clean up the layers (not breaking compatibility).

```xml
<FoliageMultiLayer densityMapId="100051" numChannels="5" numTypeIndexChannels="0">`
    <FoliageSubLayer name="ssSnowMask"  densityMapChannelOffset="0" numDensityMapChannels="1" materialId="100610" cellSize="8" viewDistance="80" objectMask="16711935" decalLayer="0" atlasSize="1" atlasOffsets="1 0" numBlocksPerUnitDefault="1.8" numBlocksPerUnitMin="1.8" numBlocksPerUnitMax="1.8" width="0.8" height="0.3" widthVariance="0.1" heightVariance="0.1" horizontalPositionVariance="0.3" blockShapeId="1"/>
    <FoliageSubLayer name="ssTempMask" materialId="100611" densityMapChannelOffset="1" numDensityMapChannels="1" cellSize="8" viewDistance="0"  terrainOffset="0.0" objectMask="0" atlasSize="1" numBlocksPerUnit="0" width="0" widthVariance="0" heightVariance="0" horizontalPositionVariance="0" height="0" />
    <FoliageSubLayer name="ssReserved1" materialId="100611" densityMapChannelOffset="2" numDensityMapChannels="1" cellSize="8" viewDistance="0"  terrainOffset="0.0" objectMask="0" atlasSize="1" numBlocksPerUnit="0" width="0" widthVariance="0" heightVariance="0" horizontalPositionVariance="0" height="0" />
    <FoliageSubLayer name="ssReserved2" materialId="100611" densityMapChannelOffset="3" numDensityMapChannels="2" cellSize="8" viewDistance="0"  terrainOffset="0.0" objectMask="0" atlasSize="1" numBlocksPerUnit="0" width="0" widthVariance="0" heightVariance="0" horizontalPositionVariance="0" height="0" />
</FoliageMultiLayer>
```

- Now, in Giants Editor, use terrain foliage paint mode to paint windrowfoliage wherever snow must NOT appear (roads, inside buildings) (it appears in list as ssSnowMask).
- *Note:* make sure you only paint the first layer (ssSnowMask). All other layers *must* remain empty.
- Save in Giants Editor before launching the game

To test wether the snow mask works before painting it, you can place a shed on a field and then use the `ssAddSnow` command. If a snow mask was found, the shed will now not have snow inside.

Some users have experienced problems with maps that have old versions of windrowFoliageShader.xml rendering the snow mask invisible in Giants editor. If you have this problem try replacing windrowFoliageShader.xml in the map with the version from the games installation directory, you can find it in the `data/shaders` directory.

#### Preparing map for release
To make the map behave normally when not being used with Seasons, the seasons mask needs to be invisible.

- Rename invisible_mask_diffuse to invisible_mask_diffuse1 (to switch off the 'Visible green snowMask texture')
- Rename invisible_mask_diffuse0 to invisibe_mask_diffuse (to switch on 'invisible texture' )
- After you finished editing in GE, change the viewDistance from 80 to 0 to hide it correctly. When you want to do changes again, set it back to 80.

Snow should now appear correctly and not where the snowMask was painted.

If you want to make changes again, do these steps in reverse.

### Texture Replacements

The texture replacement system is actually a material replacement system so if you want you can change things like shaders and shader parameters between seasons.

*Note:* Even though it is season dependent, the autumn, spring and winter textures might be shown earlier or later, depending on the temperatures. The trees could be bare for longer after winter if the temperatures have been too cold.

To be able to replace textures in the game, the textures need to be loaded into materials. To keep them around they have to be bound to a shape. At last there is an XML file that defines what shapes are used as replacement in each season.

Like any other XML-part we have in Seasons, there are two ways to get new replacement visuals in the game: by adding it to the map or by making a separate mod. Ideally, a map maker incorporates it into the map. If that has not been done it is possible to make a Seasons Texture Mod (STM), as can be found on our GitHub for a couple of popular maps.

This procedure is a little tricky and I can recommend using a map with custom texture replacements like "Dusty Cove" by DustyDave available on the modhub as an example. You can use `data/textures.xml` and the files under resources/replacementTextures in the Seasons mod for examples of what's possible. Take it slowly and methodically doing one season for one material at a time and get that working before continuing to the next.

Except for seasons_textures.xml you could use different file and directory name as long as you edit the files accordingly but I will not point out where to do those changes but rather stick to one way of doing it in this example.

#### Adding texture replacements

By default, Seasons will replace textures for all default FS17 trees. If you have trees that do not have replacements (for example, FS15 trees, or CPF bushes), you can add your own replacement textures.

- Create a folder resources in the top level folder of your map.
- Create a textures folder and subfolders in it for each season like `textures/autumn`, `textures/spring` and `textures/winter`. This is where you will store the season specific texture files.
- Copy replacementTexturesMaterialHolder.i3d and replacementTexturesMaterialHolder.i3d.shapes from the directory "resources/replacementTextures" in the seasons mod to that resources folder.
- Edit replacementTexturesMaterialHolder.i3d so only the skeleton remains as follows:

```xml
<?xml version="1.0" encoding="iso-8859-1"?>
<!--
Do not ever open and save this file in Giants editor, you will loose data and mess ut then file.
It references textures in the game directory that the editor will not find and thus remove.
/MrBear
-->
<i3D name="untitled" version="1.6" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://i3d.giants.ch/schema/i3d-1.6.xsd">
  <Asset>
    <Export program="GIANTS Editor 64bit" version="7.0.5"/>
  </Asset>

  <Files>
    <!-- Autumn -->
    <!-- Winter -->
    <!-- Spring -->
  </Files>

  <Materials>
    <!-- Autumn -->
    <!-- Winter -->
    <!-- Spring -->
  </Materials>

  <Shapes externalShapesFile="replacementTexturesMaterialHolder.i3d.shapes">
  </Shapes>

  <Dynamics>
  </Dynamics>

  <Scene>
    <!-- Autumn -->
    <!-- Winter -->
    <!-- Spring -->
  </Scene>
</i3D>
```
- Create a file seasons_textures.xml in the toplevel folder of your map mod and edit it using a text editor as follows obviously using values for shapeName, secondaryNodeName and to as appropriate for your map and placeholder.

```xml
<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<textures materialHolder="resources/replacementTexturesMaterialHolder.i3d">
    <seasons>
        <spring>
        </spring>

        <summer>
        </summer>

        <autumn>
        </autumn>

        <winter>
        </winter>
    </seasons>
</textures>
```

#### Steps for adding a replacement mapping

- Start by opening the map i3d file in a text editor windows and the replacementTexturesMaterialHolder.i3d in an other.
- Open the map in Giants editor and find an object of the type that you want to add seasonal textures to. Take note of both the object, and the actual mesh that you want to modify.
- Search for the objects name in the i3d file and locate the actually mesh that you want to modify. Take note of the value after materialIds, say XXX.
- From the top of the maps i3d file search for materialId="XXX" and copy from &lt;Material...&gt; to &lt;/Material&gt; and add that in the &lt;Materials&gt; section of replacementTexturesMaterialHolder.i3d.
- For each of the fileIds refferenced in the material section locate the corresponding &lt;File... &gt; line by searching after fileId="XXX" from the top of the maps i3d file. Copy those lines over to the &lt;Files&gt; section of replacementTexturesMaterialHolder.i3d and replace fileId in both File and Material definition with the same unique value. Normally there are thre file refferences that needs to be handled Texture, Normalmap and customShaderId.
- Copy the texture file that you want to modify to a directory under the resource directory and make the modifications you want to it.
- Modify the filename attribute in the &lt;File...&gt; line corresponding to the texture file so it points to you newly created texture.
- Add a block as the one below to the &lt;Scene&gt; section of the replacementTexturesMaterialHolder.i3d. nodeId should be a unique value and materialIds should be the same as the materialId you defined above. Leave the shapeId and the rest of the value alone. Select a good name for the object.

```xml
    <Shape shapeId="1" name="XXX" visibility="false" nodeId="712" materialIds="412" distanceBlending="false" />
```

Note that file names are relative to the location of replacementTexturesMaterialHolder.i3d so you might have to prepend them with ../maps/ or something similar to refference unmodified files in there original location.
To reference paths in the games installation directory such as shaders or unchanged normal maps use  relativePath=false and give a path relative to the directory where the game is installed.

It's a good practise to  prefix all Shape names with some prefix like a short form of the map name to make them unique and sufix them with the relevant season to make things easer to follow.

Now you have created the material holder with material to use for the replacement, time to define the actual replacements that we want.

Add a line like the one bellow to block for the correct season in seasons_textures.xml.

```xml
<texture shapeName="XXX" secondaryNodeName="YYY" to="ZZZZ" />
```
An explanation of these attributes:

  - `shapeName` The name of the map object to search for. (You can find this using Giants Editor.)
  - `secondaryNodeName` The subobject to search for below the above, can be the same as shapeName if there is no hierarchy. This is used to replace LOD1 of birch_stage1 even if other objects also have meshes named LOD1. (You can find this using Giants Editor.)
  - `to` The name of the shape as defined in the material holder. (This is your Shape name from replacementTexturesMaterialHolder.i3d)

- You can also do replacement for foliageLayers by using XML like this instead of the &lt;texture.... &gt; tags

```xml
<foliageLayer name="grass" to="grass_winter" />
```

An explanation of these attributes:

  - `name` The name of the FoliageSubLayer to search for. (You can find this using Giants Editor.)
  - `to` The name of the shape as defined in the material holder. (This is your Shape name from replacementTexturesMaterialHolder.i3d)

### Animals and Growth Data

*WIP*

If you would like to add your own animals and growth data for your map, then you need to do the following

1. Copy animals.xml and growth.xml (both of these files can be found in the /data directory under the season mod into the root folder of your map) and then modify them.
2. Rename the files to seasons_animals.xml and seasons_growth.xml

### Custom weather
It is possible to supply a custom seasons_weather.xml with the map. In the 12 periods (period 1 = early spring, period 12 = late winter), there are three temperatures values to be specified (`min`, `mode`, `max`). Min and max values are not used at the moment, but needs to be given. The mode of the temperature is monthly average daily maximum temperature. So if you take the average of the daily high temperature for all days in January in your 20-30 data series you get the value for mode for January.

`probRain` is the daily average probability of occurrence for rain
`probClouds` is the daily average probability of occurrence for overcast and has per definition to be higher than probRain
`mu` and `sigma` are mean and standard deviation for a probability distribution that is used to determine the duration of a rain event.

### Adding frozen lakes and waters
You can add frozen lakes by using the FrozenLake object. There are a couple of steps to make this work:
- Make a new shape that covers your lake / rivers / waters. Place it a tad higher than your actual water. NOTE: this includes the GE waterPlane (defined by setting the water height of the map).
- If you want vehicles to be able to ride on top of it, give it a collision plane, .
  - As of now, there is no traction adjustments when riding on ice
  - Be sure that this works, and vehicles don't glitch into some unbounded map area
- Make it a ssIcePlane object. Now, it will only be visible when Seasons tells it to
- Give it a nice frozen-lake texture.
- Test it

Note: giving it transparency might look odd because there is still water below it.
Note: Snow can't fall on top of the ice, so make sure you keep a tipCol and snowMask on the lake.

If you don't want drivable lakes, only add the object, no collision and don't let snow fall on it.

### Adding season-based objects
It is possible to add objects that are only visible in one or more seasons, by using the SeasonAdmirer object.

