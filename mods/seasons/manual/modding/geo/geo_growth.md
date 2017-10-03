---
title: Growth
tags: [modding, geo]
keywords: guide, modding, geo, growth
last_updated: 2017-10-03 22:16:15 +0100
ref: geo_growth
permalink: /mods/seasons/manual/modding/geo/growth
---

# Growth for GEO mods
{:.no_toc}

GEO mods can create their own growth. Doing so is quite a complex undertaking and requires a lot of thinking and testing.

If you have any questions regarding growth, contact theSeb on Slack.

* TOC
{:toc}

## Adding new fruits

When adding new fruits, make a `seasons_growth.xml` with *just the new fruits*. Do not put all the existing fruits that do not change in the file. Also, have `overwrite="false"` on top. Now, the values of Seasons itself will be kept, and the values for the new fruits are _added_.

It is crucial that you do not copy values from the default growth configuration, so that any changes and patches will work in the new GEO as well.
