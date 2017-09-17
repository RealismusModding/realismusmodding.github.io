---
title: Testing GEO mods
tags: [modding]
keywords: guide, modding, geo, testing
last_updated: 2017-06-07 22:16:15 +0100
ref: geo_testing
permalink: /mods/seasons/manual/modding/geo/testing
---

# Testing GEO mods

If you made, or are making, a GEO mod it is important to test that it works properly and does not break Seasons, or the game in general.


## ModHub QA Testing

When you upload your mod to Giants ModHub, Giants will attempt to test it.
- The in-game growth overview is the same as the supplied screenshot.
- Seasons can start a new save game with the GEO mod, without errors.
- The modDesc.xml contains a seasons tag with a minimum version of 2, and type 'geo'.

If the GEO mod is not created by Realismus Modding, make sure that:
- The author is not 'Realismus Modding'
- The filename of the mod does not contain "RM" (as in `FS17_RM_GEO_Wales`)

It is preferable to call the zip name `FS17_GEO_<area>`.

That the growth works according to the overview will not be tested.
