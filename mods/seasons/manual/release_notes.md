---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.1.0](#version-110)
- [Version 1.0.0](#version-100)

{% anchor h2 %}Version 1.1.0{% endanchor %}
This version is 100% compatible with save games created with Mod Contest version of Seasons.

#### Fixes
- German translation has an error regarding germination temperatures
- Grass is wrongly removed around the edge of a field when using a cultivator
- Hail never shows in multiplayer when generated when already joined
- Hay bales do not rot
- Low HP machines with high maintenance have insane repair costs
- Placeables don't  mask in snowmask after load of savegame
- Snow is not removed under vehicles, bales and pallets
- Snow tracks can't be disabled
- Train storage silo has its prices not adjusted
- Upkeep of animals is not adjusted and normalized
- Weather unnecessarily resets when changing settings

#### Improvements / changes
- Added adjusted and better textures by KimG and BulletBill
- Adjusted distance limits for tree growth
- Adjusted normalization of bale rotting
- General code improvements
- Improved growth for winter crops (limited to stage 2 in autumn mostly for visual purposes)
- Pigs now give birth both in autumn and in spring (used to be only in spring)
- Reduced time for free demo of vehicles to 30 min

#### New features
- Added debug console commands for vehicle repair and fruit growth manipulation
- Added longer seasons (up to 24 days per season)
- Added new system for script-less GEO mods
- Added texture replacement for shapes with multiple materials
- Grass now rots in tippers, just like grass bales
- New visual seasons algorithm depending on weather and latitude
- Straw and hay now rots in tippers, just like bales (during rain)

{% anchor h2 %}Version 1.0.0{% endanchor %}
Initial release
