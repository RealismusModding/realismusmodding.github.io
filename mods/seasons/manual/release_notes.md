---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.3.1](#version-131)
- [Version 1.3.0](#version-130)
- [Version 1.2.1](#version-121)
- [Version 1.2.0](#version-120)
- [Version 1.1.0](#version-110)
- [Version 1.0.0](#version-100)

## Version 1.3.1
*Released on August 22nd*

This version is 100% compatible with save games created with earlier versions of Seasons.
To play Seasons 1.3 and higher you need at least version 1.5.3 of Farming Simulator 2017.

#### Fixes
- Calendar was inconsistent after reloading the game.
- Compaction of chaff is still possible after driving in snow now.
- Days until repair was not correct in the vehicle in-game screen after changing season length.
- Fix possible MP sync issues (only showed up with a dedicated server)
- Prevent multi materials nodes garbage collection.
- Repair is now always possible even for old, used vehicles.
- Skipping night now takes less long to finish when going through a transition.
- Some equipment got very large upkeep costs.
- Support straw harvest early placeables.
- Tedder will turn grass to hay in wet crop conditions if crop moisture is turned off
- Text color of germination temperature is now correct even with mouse-over.
- Unit change of temperature now updates calendar correctly.
- Weekday of the forecast now aligns with the finances page.
- When having no animals, the health is not influenced anymore.

#### Improvements
- Growth now allows more complex GEO mods.
- Improved reliability of Skip Night.
- Improved texts and information.
- No maintenance costs for equipment that has no dailyUpkeep.
- No overtime pay in weekends.
- Pigs are now more profitable.
- Repair cost is capped at 10% of original price.
- Vehicle GUI shows daily tax for vehicles and tax + repair for other equipment.
- Vehicle upkeep in the game menu is now only red when maintenance is required.
- You can now spread manure when soil is frozen.

#### Notes
- This update is only for PC!


## Version 1.3.0
*Released on December 15th*

This version is 100% compatible with save games created with earlier versions of Seasons.
To play Seasons 1.3 and higher you need at least version 1.5.3 of Farming Simulator 2017.

#### New features
- Now available on console (Xbox and PS4) as well.
- NPCs now use the crop calendar for their planting and missions.
- Repairing is now done in the configure / sell dialog. You can only sell when the vehicle is repaired or when it is totalled.
- Walking and driving in snow produces sound.

#### Fixes
- Added missing Brazilian translations.
- Daylight saving time has been fixed for the southern hemisphere.
- With local multiplayer, the settings are now shown correctly.

#### Improvements
- Animals sell for less when their health is below 80%, but for more when above 80%.
- Initial growth reset and snow is done during the loading of the game, not after starting.
- Show warning when trying to drive with a turned off engine.
- Straw and hay heaps only rot when it rains now, not during a transition change.
- The animals overview now shows 'Health' instead of 'Productivity' to better reflect its meaning.
- The calendar is now better accessible with scrolling and selections.
- Vast performance improvements on snow, growth and rotting.

#### Notes
- All non-scripted GEO mods work on console too, once going through our and Giants QA.
- Modders can add the snow mask, replacement textures and admirers to their console maps.
- The multiplayer settings fix and change in straw/hay reducation did not make it on console for patch 1.53.
- Using version 1.2.1 or below on Patch 1.5.3 is not recommended due to changes in the engine that required changes in Seasons.


## Version 1.2.1
*Released on November 15th*

This version is 100% compatible with save games created with earlier versions of Seasons.
To play Seasons 1.2 and higher you need at least version 1.5.1 of Farming Simulator 2017.

#### Fixes
- Fixed bug with repair costs for machinery with high operating hours.
- Nights were too short and dawn too early, that is now rectified.
- Sell price of placeables can't go above buy price anymore.
- Texts in Skip Night dialog are now correct.

#### Improvements
- Cost of repairs for forestry equipment improved.
- The Wopstr is now more sensitive.


## Version 1.2.0
*Released on November 9th*

This version is 100% compatible with save games created with earlier versions of Seasons.
To play Seasons 1.2 and higher you need at least version 1.5.1 of Farming Simulator 2017.

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

#### Notes
- Added warning about fruit density layers not being same size as terrain.
- Alpha Blending of tree billboard is now turned off by default. See the [guide](/mods/seasons/manual/modding/1-2-checklist#tree-alphablending-is-now-not-disabled-by-default)
- The 4Real Module Crop Destruction patch has been removed, as Giants fixed the mod.
- To play Seasons 1.2 you need at least version 1.5.1 of Farming Simulator 2017.


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
