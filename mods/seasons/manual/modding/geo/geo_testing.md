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


{% anchor h2 %}ModHub QA Testing{% endanchor %}

When you upload your mod to Giants ModHub, Giants will attempt to test it.
- The in-game growth overview is the same as the supplied screenshot.
- Seasons can start a new save game with the GEO mod, without errors.
- The modDesc.xml contains a seasons tag with a minimum version of 2, and type 'geo'.

That the growth works according to the overview will not be tested.
