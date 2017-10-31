---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.2.0](#version-120)
- [Version 1.1.0](#version-110)
- [Version 1.0.0](#version-100)

## Version 1.2.0
*Unreleased*

This version is 100% compatible with save games created with earlier versions of Seasons.

#### New features
- Added a ground wetness model.
- Added a measurement tool to get information on trees, bales, crops and more.
- Added economy information in the Seasons menu, with historic data for a year.
- Animal production is made dependent on the average productivity over time.
- Machinery does not become dirty when the ground is frozen.
- Skip Night can skip to either morning or dawn.
- Skip Night works in multiplayer now too.

#### Fixes
- Fixed bug in repair cost for old machinery.
- Fixed economy factors on fruits and animals, now correct.
- Fixed edge case bugs when dealing with new fruits.
- Fixed Esc GUI showing the repair interval wrongly.
- Fixed growth debug console commands which stopped working in 1.1.
- Updated text in manual about grass bales.
- Vehicle demo did not account for configurations in sell price.

#### Improvements
- Added check for density map sizes.
- Better handling of fruits in growth file that aren't in the map.
- Better model for snow melting.
- Forecast and day information is now sharper and better aligned.
- Game difficulty no longer affects crop moisture.
- General code refactor and improvements.
- Increased performance when loading game.
- Loan cap is now 80% of equity instead of 30%.
- Potatoes and sugar beets can be harvested when crop is wet.
- Repair factors for conveyors and front loaders added.
- Sell price decrease of machinery made more consistent with increase in repair cost (functions of age and operatingTime).
- Straw and hay bale prices are brought back to vanilla level, while silage bale prices are lowered to be more in line with the hay bale price.
- Upkeep of pigs has been reduced and birthrate has been increased (i.e. improved profitability).

### Notes
- Added warning about fruit density layers not being same size as terrain.
- Alpha Blending of tree billboard is now turned off by default. See the [guide](/mods/seasons/manual/modding/1-2-checklist#tree-alphablending-is-now-not-disabled-by-default)
- The 4Real Module Crop Destruction patch has been removed, as Giants fixed the mod.

## Version 1.1.0
*Released on July 26th*

This version is 100% compatible with save games created with Mod Contest version of Seasons.

#### New features
- Added debug console commands for vehicle repair and fruit growth manipulation.
- Added longer seasons (up to 24 days per season).
- Added new system for script-less GEO mods.
- Added texture replacement for shapes with multiple materials.
- Grass rots in tippers, just like grass bales.
- New visual seasons algorithm depending on weather and latitude.
- Straw and hay now rots in tippers, just like bales (during rain).

#### Improvements / Changes
- Added adjusted and better textures by KimG and BulletBill.
- Adjusted distance limits for tree growth.
- Adjusted normalization of bale rotting.
- Adjusted pigs to give birth both in autumn and in spring (used to be only in spring).
- General code improvements.
- Improved growth for winter crops (limited to stage 2 in autumn mostly for visual purposes).
- Reduced time for free demo of vehicles to 30 min (only works for base configuration vehicles & equipment).
- Repairs are required at least once a year, instead of twice.

#### Fixes
- German translation had an error regarding germination temperatures.
- Germination didn't work properly after fast forwarding through multiple transitions.
- Grass sometimes did not regrow in spring after the first year.
- Grass was wrongly removed around the edge of a field when using a cultivator.
- Hail never showed in multiplayer for already joined players.
- Hay bales did not rot.
- Low HP machines with high maintenance had insane repair costs.
- Snow tracks couldn't be disabled.
- Snow was not removed under vehicles, bales and pallets.
- Snowmask not properly generated for placeables after load of savegame.
- Train storage silo fees were not adjusted.
- Upkeep of animals was not adjusted and normalized per year.
- Weather was unnecessarily reset when changing settings.

## Version 1.0.0
*Released on June 9th*

Initial release.
