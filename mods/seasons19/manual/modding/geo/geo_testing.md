---
title: Testing
tags: [modding, geo, testing]
keywords: guide, modding, geo, testing
last_updated: 2019-06-16 20:00:00 +0100
ref: geo_testing
permalink: /mods/seasons19/manual/modding/geo/testing
---

# Testing GEO mods

If you made, or are making, a GEO mod it is important to test that it works properly and does not break Seasons, or the game in general.


## ModHub QA Testing

When you upload your mod to Giants ModHub, Giants will attempt to test it.
- The in-game growth overview is the same as the supplied screenshot.
- Seasons can start a new save game with the GEO mod, without errors.
- The modDesc.xml contains a seasons tag with a minimum version of 10, and type 'geo'.

If the GEO mod is not created by Realismus Modding, make sure that:
- The author is **not** 'Realismus Modding'
- The filename of the mod does not contain "RM" (as in `FS19_RM_GEO_Wales`)

It is preferable to call the zip name `FS19_GEO_<area>`.

That the growth works according to the overview will not be tested.
