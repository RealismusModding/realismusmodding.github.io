---
title: Checklist for 1.2
ref: 1_2_checklist
permalink: /mods/seasons/manual/release-notes/1-2-checklist
---

# Checklist for 1.2

This is a small checklist for maps to fully support Seasons 1.2. This also includes changes to make sure you are compatible with future versions of Seasons, as known at the time of writing by the developers.

## Resize the Seasons density mask to the fruit size

See [the warning about the density size](https://www.realismusmodding.com/mods/seasons/manual/modding/maps/seasons-mask#warning-for-density-size).

The seasons_density.gdm should have the same resolution as the fruit densities. For a 1x map that is 4096x4096. For a 4x map it is 8192x8192.
To change the size without much work, and without need to redraw the mask, convert the gdm to a png file using the GRLE converter from GIANTS. Then resize the png file in an image editor using bicubic resizing. (Then each pixel is divided into 4 pixels without adding grays. It is very important no gray colors are added).
Then save the file and remove the old gdm file. Resave the map in the Giants Editor to create a GDM again.

You can now also improve the snowmask as it has twice the precision.

## Tree alphablending is now not enabled by default

Since 1.1 Seasons has new tree textures that included alphaBlending. Some maps took advantage of this.
For performance reasons, alphaBlending has been disabled again. However, if you want your map to use alphaBlending, there is an option to enable it again.

In your `seasons_textures.xml` file, add an attribute to the `<textures>` tag: `alphaBlending="true"`. Then Seasons will use the alphaBlending version of all trees.

Note that performance is considerbly worse when using alphaBlending.
