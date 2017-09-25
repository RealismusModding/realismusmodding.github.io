---
title: Checklist for 1.2
ref: 1_2_checklist
permalink: /mods/seasons/manual/modding/1-2-checklist
---

# Checklist for 1.2

This is a small checklist for maps to fully support Seasons 1.2. This also includes changes to make sure you are compatible with future versions of Seasons, as known at the time of writing by the developers.

## Tree alphablending is now not enabled by default

Since 1.1 Seasons has new tree textures that included alphaBlending. Some maps took advantage of this.
For performance reasons, alphaBlending has been disabled again. However, if you want your map to use alphaBlending, there is an option to enable it again.

In your `seasons_textures.xml` file, add an attribute to the `<textures>` tag: `alphaBlending="true"`. Then Seasons will use the alphaBlending version of all trees.

Note that performance is considerbly worse when using alphaBlending.

## Seasons mask

We made the Seasons mask smaller: we removed the 4 bits that were unused until 2.0. For 2.0 we have new changes planned. You can make your map use less memory by removing the layers not called 'ssSnowMask' from the FoliageMultiLayer. Then re-save the map.
