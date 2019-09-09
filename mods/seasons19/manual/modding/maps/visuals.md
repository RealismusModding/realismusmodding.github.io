---
title: Visual Adjustments
tags: [modding, maps, textures]
keywords: guide, modding, maps, textures, shape, material
last_updated: 2019-06-16 20:00:00 +0100
summary: "Add custom texture replacements to a map to complete the seasonal feel"
ref: maps_visuals
permalink: /mods/seasons19/manual/modding/maps/textures
---

# Visual Adjustments
{:.no_toc}

Learn how to replace your custom foliage textures in different seasons and how to replace textures for any object on your map depending on the season. This requires good knowledge of the i3d system. Using the visuals system is the most complex of all the moddability of Seasons.

*Note*: Whenever we talk here about a 'season', it in reality is the 'visual season'. These two do not match exactly but depend on the latitude and weather. For example, a hot spring could cause summer textures to show earlier, and a cold summer could cause autumn textures to show earlier. The settings for this can be found in `latitudeSeason.xml` in the mod `data` folder.

* TOC
{:toc}

## Tree textures

Seasons 19 brings a new tree texturing system, made in collaboration with GIANTS Software: custom shaders. These new shaders transform the visuals of the trees gradually throughout the year. Leafs grow slowly in spring and fall off in winter.

This new system required a complete re-do of the texture format for the trees. These textures have been generated from the original source-material of the trees by GIANTS Software. It is (nearly) impossible to generate proper textures without the source material and all the tooling. If you are interested in doing so, however, please contact the development team.

We recommend to stick to the supported trees delivered with Seasons. These trees are:
- From Farming Simulator 19:
  - Maple
  - Birch
  - Volume tree
- From Farming Simulator 17:
  - Oak
- And any evergreen tree (does not change colors so needs no changes).

*Note*: The maple from Farming Simulator 17 is _not_ supported.

It is however still possible to make the trees change textures using the system available in Seasons17. See the 'Custom seasonal textures' section. They will have hard-switches at night instead of smooth transitions.

The state of the tree shader is determined by the visual season setup provided with the mod. Just like the Seasons17 version the mod provides curves for varying latitides. It is very unlikely any change here is needed by the map maker. The latitude of the map is determined by the used GEO mod, or by the latitude provided with the weather file in the map. If you do need a different curve, you can copy the `latitudeSeason.xml` file into your mods Seasons data folder and adjust accordingly.

## Custom seasonal textures

To start replacing any visuals, create a new `visuals.xml` file to your Seasons data folder (more info about this folder at [the map modding introduction](/mods/seasons19/manual/modding/maps/)). You also need to create a material holder that contains all your new textures. You can copy the one supplied by Seasons. Do not forget to copy the shapes file as well, and to remove all materials and shapes you are not using.

For every texture you want to replace, find the shape in your map. Then find the material it references and copy this material to the material holder. Also add the shaders and other files the material uses.

Make the material point to the new textures you want to use.

For example: the original material in your map is the following:

```xml
<File fileId="1204" filename="$data/maps/textures/european/props/flowerPots_diffuse.png"/>
<File fileId="1205" filename="$data/maps/textures/european/props/flowerPots_normal.png"/>
<File fileId="1206" filename="$data/maps/textures/european/props/flowerPots_specular.png"/>
...
<Material name="flowerPots_mat" materialId="533">
    <Texture fileId="1204"/>
    <Normalmap fileId="1205" bumpDepth="0"/>
    <Glossmap fileId="1206"/>
</Material>
```

Now we copy this to the material holder and adjust it with new files.

```xml
<!-- make sure the file IDs are unique -->
<File fileId="1" filename="seasons/textures/flowerPots_diffuse_winter.png"/>
<File fileId="2" filename="$data/maps/textures/european/props/flowerPots_normal.png"/>
<File fileId="3" filename="$data/maps/textures/european/props/flowerPots_specular.png"/>
...

<!-- the material ID also has to be unique -->
<Material name="flowerPots_mat_winter" materialId="1">
    <Texture fileId="1"/>
    <Normalmap fileId="2" bumpDepth="0"/>
    <Glossmap fileId="3"/>
</Material>
```

The new material will need to have the exact same setup as the original otherwise it will not work or throw errors on console! This includes any custom shader. So if it uses a billboard shader, the new seasonal material also needs to use this exact shader.

The last step in the material holder is to make the material be held by a shape (otherwise it will not load):

```xml
<Shape shapeId="1" name="my_new_texture_spring" visibility="false" nodeId="1" materialIds="1" distanceBlending="false" castsShadows="true" receiveShadows="true" />
```

Make the shape point to the correct material, and give it a unique node ID. The name you put here needs to be unique as well. Make it descriptive.

The last step is updating your `visuals.xml` file. Find the shape in your map again, and remember the shape name, and the name of the parent shape. If the name of the parent shape is semantically related to your replacing shape, use the name-childName system:

```xml
<spring>
    <shape name="pine_stage6" childName="LOD0Attachments" to="pine_stage6_attachments_spring" />
</spring>
```

If that is not the case, only use the name of the shape you want to replace textures of. Only do this when the name of the shape itself is descriptive enough. (e.g., using LOD0Attachments above only will replace all branches of all trees on the map with pine, instead of just those of the pine trees).

```xml
<winter>
    <shape name="special_windmill" to="special_windmill_winter" />
</winter>
```

*Tip*: Try to understand what is happening in the files delivered with Seasons.

## Foliage texture overrides

As with the previous version of the mod, foliage can be replaced depending on the season. This system has been rewritten though, because Farming Simulator 19 replaced its foliage system.

### Hiding a foliage in a specific season

Hiding a foliage in a specific season is very easy:

```xml
<spring>
    <foliage name="bush01" visible="false" />
</spring>
```

Here we hide the `bush01` foliage in spring. Note that the name must exactly match the name of the `FoliageType` in the map i3d.
The foliage will automatically show up in other seasons.

### Replacing a texture

To replace a foliage texture, both the original and new texture has to be inside the map. In Seasons17 this could be achieved by a material replacement. In Farming Simulator 19 this is not possible because of the complexity of the LOD system in the new foliage. Instead, we need to put the new foliage-textures inside a foliage layer onto the map.

In your map, add a new foliage by copying the one you want to update in a specific season. We will use `bush01` as example here.

Copy the bush01.xml and bush01.i3d files to your map foliage assets and rename them to bush01Winter.i3d, bush01Winter.xml. Then in the map i3d, add a new foliage type:

```xml
<FoliageType name="bush01" foliageXmlId="154"/>
<FoliageType name="bush01Winter" foliageXmlId="154000"/> <!-- new -->
```

Now add the new bush01Winter.xml as file with your new foliageXmlId to the files list:

```xml
<Files>
    ...
    <File fileId="154000" filename="../foliage/bush01Winter.xml"/>
    ...
</Files>
```

Make sure all the paths are correct. For the ID you need to choose something that is not already in use.

When you think you got it correct, open the map in the editor and see if it still loads without errors. You should also be able to paint the new foliage (don't do this).

Now use the bush01Winter.i3d to point to your new textures. Do not forget to update the LODs as well.

The last step is to update your `visuals.xml` for Seasons:

```xml
<winter>
    <foliage name="bush01" to="bush01Winter" />
</winter>
```

Seasons will now automatically change the bush01 visuals to the bush01Winter visuals in the winter, and switch them back in the other seasons.

## Disabling Depth of Field

An often requested feature by map makers is to disable depth of field for their map. We have added this to Seasons:

```xml
<visuals disableDoF="true">
```

## Console

If you map is invited to get to console by GIANTS, you need to adjust your `visuals.xml` to contain the `memoryUsage` attribute. This is a whole number of bytes. This reserves VRAM slots for the GEO mod so the console does not crash.

```xml
<materials memoryUsage="1024000">
```

## Notes and Warnings

Make sure any XML files starts with the `<?xml .......` header. Not with anything else. It might work but will not pass console validation. You can verify your XML files using the [W3C validator](https://www.w3schools.com/xml/xml_validator.asp).
