---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.1.0](#version-110)
- [Version 1.0.0](#version-100)

## Version 1.1.0
This version is 100% compatible with save games created with Mod Contest version of Seasons.

#### New features
- Added debug console commands for vehicle repair and fruit growth manipulation
- Added longer seasons (up to 24 days per season)
- Added new system for script-less GEO mods
- Added texture replacement for shapes with multiple materials
- Grass rots in tippers, just like grass bales
- New visual seasons algorithm depending on weather and latitude
- Straw and hay now rots in tippers, just like bales (during rain)

#### Improvements / Changes
- Added adjusted and better textures by KimG and BulletBill
- Adjusted distance limits for tree growth
- Adjusted normalization of bale rotting
- Adjusted pigs to give birth both in autumn and in spring (used to be only in spring)
- General code improvements
- Improved growth for winter crops (limited to stage 2 in autumn mostly for visual purposes)
- Reduced time for free demo of vehicles to 30 min (only works for base configuration vehicles & equipment)
- Repairs are required at least once a year, instead of twice.

#### Fixes
- German translation had an error regarding germination temperatures
- Germination didn't work properly after fast forwarding through multiple transitions
- Grass sometimes did not regrow in spring after the first year
- Grass was wrongly removed around the edge of a field when using a cultivator
- Hail never showed in multiplayer for already joined players
- Hay bales did not rot
- Low HP machines with high maintenance had insane repair costs
- Snow tracks couldn't be disabled
- Snow was not removed under vehicles, bales and pallets
- Snowmask not properly generated for placeables after load of savegame
- Train storage silo fees were not adjusted
- Upkeep of animals was not adjusted and normalized per year
- Weather was unnecessarily reset when changing settings

## Version 1.0.0
Initial release
