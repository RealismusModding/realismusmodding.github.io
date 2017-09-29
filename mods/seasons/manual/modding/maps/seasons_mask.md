---
title: Seasons Mask
tags: [modding, maps, mask]
keywords: guide, modding, maps, mask, snow
last_updated: 2017-09-20 22:00:00 +0100
summary: "Learn how to add the Seasons mask to your map for full compatibility"
ref: maps_seasons_mask
permalink: /mods/seasons/manual/modding/maps/seasons-mask
---

# Seasons Mask
{:.no_toc}

The Seasons mask is a density map (better known as a gdm file) that contains the Seasons mask (or snowmask). This density map must be implemented into a map to make it fully Seasons compatible.
The density map consists of multiple layers, of which the first one is the Seasons mask.

The Seasons mask is a layer that must be painted by the map maker to enable all functionalities of Seasons. This includes the rotting of bales and higher levels of snow. The Seasons mask is used to *determine whether a piece of the terrain is inside or outside*. It will prevent snow from falling inside buildings, and it will prevent rain from rotting bales inside those same buildings.

Note that when a map does not have a seasons mask, bales will _not_ rot.

In this guide you will learn all steps of adding the Seasons mask to a map.

* TOC
{:toc}

## Downloading required files

Download the following file. They will be used for the mask:
- [invisible_mask_diffuse.dds](https://github.com/RealismusModding/FS17_seasons/raw/develop/modding/snowMask/map01/invisible_mask_diffuse.dds)

Put this file in your `map01` folder. This is often located at `ModFolder/maps/map01`.

## Adding the density layers

The density layers need to be added to the map. Open your `map01.i3d` in a proper text editor. We will start by adding references to the two diffuse textures.

### File references

Add the following two lines inside the `<Files>` part of the `i3d`:
```xml
<File fileId="100050" filename="map01/invisible_mask_diffuse.png" relativePath="true"/>
<File fileId="100051" filename="map01/seasons_mask.png" relativePath="true"/>
```

Do make sure those fileIds are not in use already. Also note that once you save the map with Giants Editor again, these ids _will_ change.

### Materials

Now we need to add a material that uses these files. Search for the `<Materials>` part of the file and add this to the end:

```xml
<Material name="seasons_mask_mat" materialId="100610" ambientColor="1 1 1" customShaderId="WINDROW_SHADER_FILE_ID">
    <Texture fileId="100050"/>
    <CustomParameter name="alphaBlendStartEnd" value="70 75 0 0"/>
    <CustomParameter name="cellSizeTerrainSizeScaleXZScaleY" value="16 1024 2 255"/>
</Material>
<Material name="seasons_empty_mat" materialId="100611" diffuseColor="1 1 1 1" ambientColor="1 1 1">
    <CustomParameter name="dummyStartEnd" value="0 0 0 0"/>
</Material>
```

Once you pasted this into the file, it is important to replace `WINDROW_SHADER_FILE_ID` with the fileId of the windrowFoliageShader. You can find it by searching in the file. The line looks something like this:

```xml
<File fileId="50" filename="../shaders/windrowFoliageShader.xml" relative="true" />
```

Copy the value for `fileId` (here that is 50) and put it as `customShaderId`, replacing the `WINDROW_SHADER_FILE_ID`.

### Adding the density layers

The last part to add are the actual density layers. Copy the code below, and paste it at the end of the `<Layers>` part of the file:

```xml
<FoliageMultiLayer densityMapId="100051" numChannels="1" numTypeIndexChannels="0">`
    <FoliageSubLayer name="ssSnowMask"  densityMapChannelOffset="0" numDensityMapChannels="1" materialId="100610" cellSize="8" viewDistance="80" objectMask="16711935" decalLayer="0" atlasSize="1" atlasOffsets="1 0" numBlocksPerUnitDefault="1.8" numBlocksPerUnitMin="1.8" numBlocksPerUnitMax="1.8" width="0.8" height="0.3" widthVariance="0.1" heightVariance="0.1" horizontalPositionVariance="0.3" blockShapeId="1"/>
</FoliageMultiLayer>
```

Here you need to make sure that the `densityMapId` references to seasons_mask file and that the materialId on the second line references the material we just made.

Save the i3d file.

### Technical explanation

You can skip reading this part if you are not interested in the details of the density layer.

What we did above is add 4 different foliage sublayers in a big multilayer. The multilater references the density map, a `.gdm` (Giants Density Map) file containing binary data. The first layer is the Seasons mak, a single bit (on or off). It used a material so that the mask is visible in the editor when we draw it.

## Using the tipCol as a basis of the mask

The tipCol is a layer that is used to determine if you can tip a material to the ground. As tipped material is always on the terrain, and does not collide with objects, you can't pick up grains with a shovel when there is a road or another object at that location. To prevent tipped material to drop in locations where it can't be picked up again, GIANTS added the tipCol. Wherever it is painted material can be tipped. It is not painted at roads, big models you can drive at, and so on. GIANTS does not mask where you can't go with your machine.

As snow is also a material, it should not fall in any spot where you can't pick it up. The biggest problems are roads.

You can leverage the automatically generated tipCol by using it as a basis for your mask.

Use the GRLE converter from GDN to convert the `tipColInfoLayer.grle` to a PNG file. A readme file is inside the download. You can drag-and-drop the grle file on top of the convert.cmd.
Rename the generated file from `tipColInfoLayer.png` to `seasons_mask.png` and remove the Seasons gdm file.

Open your map in the Giants Editor and save it. Make sure there are no errors in the console. If there are any, you made a mistake.

### Testing the density layer

You can select the foliage brush and the ssSnowMask (sometimes called ssSnowMask) channel and start painting. Go to the step about the tipCol to get some useful data first.

## Painting the snowmask

Painting the mask is the same as with any foliage layer (wheat, grass, and so on): you select the correct layer (ssSnowMask), and use the mouse to paint.
You can see ugly green where the mask is. Remember: where there is green, _no_ snow will fall, and it will be seen as _inside_.

### Best practices

So where should you prevent snow from falling?

- Anywhere there is a tipCol (see previous step)
- Inside buildings
- Inside lakes (possibly handled by the tipCol)
- Animal troughs

Where should you NOT prevent snow from falling?

- Fields
- Animal fields

No not paint where you put placeables. These are automatically handled by the Seasons mod.

## Test the mask

It is important to test your mask. There are two ways to verify ingame where you painted:

- With Seasons active, use the `ssAddSnow` console command to add a layer of snow.
- Without Seasons active, look at the ugly green material, just like in the editor

## Finishing up for publishing

**Note**: If you don't plan on publishing your map to GIANTS ModHub or another mod publishing website, and only use your map with Seasons, you can skip these steps.

When you are going to publish your map, it is important to disable the green of the mask, so that when players use your map without Seasons, there is no mask visible. (Seasons automatically makes it invisible.)

To do this set the viewDistance of the ssSnowMask to 0. When you want to edit again, set it to 80.

If you want to clean up the map code a bit, you can replace the materialId of the ssSnowMask with the materialId of the ssReserved1 layer. Then you can also remove the seasons_mask_mat material and the invisible_mask_diffuse file and file reference. You will need to re-add this all when you want to edit, so only do it on the to-be-published export.

## Notes

#### Limitations

Even though the snowmask stops rotting of bales inside buildings, it does still visually rain. That is a limitation in the game and can't be solved by Seasons.

#### Wrong size density file

If you changed your map from 5 channels (previous guide) to 1 channel, you might get this error:
```
Error: GDM file has wrong number of channels (5 should be 1)
```
To solve it, convert the Seasons gdm file to a png with the GRLE converter from Giants, and re-open your map in the editor.

#### Previous versions

For Seasons 2.0, a bunch of new density layers will be needed. The density map created using the current and previous manuals will be valid, but not all 2.0 functionality will be available.

All maps created with previous manuals are still valid, but you can update.


## Tips and tricks

Set the viewDistance of ssSnowMask to 800 to make it visible from far away for an overview. It is takes more performance.
