---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.0.1](#version-101)
- [Version 1.0.0](#version-100)

## Version 1.0.1
<!-- *Released on August 6th, 2019* -->
*To be released*

***NOTE***: We recommend removing all grass/semidry/hay from your map before updating. This updates fixes some issues with the grass system. The game does not break if you don't remove your grass but it might give weird drying and rotting behavior for those heaps. This update also fixes the growth issues. Weirdness might persist until the next winter when everything dies and creates a clean slate.

- Add Season admirer support for placeables.
- Add a three hour delay to any rotting and drying of grass. [#240,#163]
- Add fix for the handtool synchronisation issue also to the mod.
- Add more safety checks for animals and growth for badly set up maps.
- Add semidry support for forage harvesters. [#272]
- Add support for multiple fill units when measuring.
- Added Brazilian translation by fatikki.
- Added Dutch and Czech translations.
- Added Italian translation by Matteo7810 and Lorenzos.
- Added Polish translation by Ch3mi and Kacper.
- Added Spanish translation by Vanquish.
- Added better mask areas for DE placeables.
- Added collision and clear areas to water pump. [#221]
- Adjust sleeping times based on daylight. [#279]
- Adjust the pig food mixture to match the new food groups. [#245]
- Adjust when workers turn on their lights.
- Compress snow on heaps. [#156]
- Corrected pig data.
- Fix French translation for Dorper. [#187]
- Fix direct seeding by overwriting the basegame value afterwards. [#184]
- Fix economy history price calculations. [#224]
- Fix for weather forecast. [#223]
- Fix input propagation issue. [#193]
- Fix issue with custom fruits that have no max fertilization state. [#222]
- Fix multiplayer transfer of season length. Was broken for 18+. [#149]
- Fix scrolling of crops list with gamepad. [#172]
- Fix shop DoF when disableDoF is active. [#255]
- Fix the growth disabling issues.
- Fix the repair setup for contract borrowed vehicles. [#162]
- Fix translation formatting for the PCF text.
- Fix tree growth time. [#196]
- Fix warning for working on frozen ground. [#184]
- Fix water usage for animals. [#248]
- Fix weather synchronization. [#244]
- Fixed issue with initial wear amount at 0.1.
- Fixed issue with snow in shop. [#257]
- Fixed pig data. [#188]
- Fixed removal of snow piles when thawing. [#147]
- Fixed snow falling in fill units that can't remove the snow. [#220]
- Fixed snow falling in shovels that were in a tipping angle. [#294]
- Fixed the rotation yield calculations to use return periods. [#261]
- Fixed weed damage scaling regarding days per season.
- Hay will never turn to semi-dry but rot instead.
- Improved German translation [#237]
- Improved switching between rain and snow based on temperature.
- Improved visual seasons loading. [#249]
- Improved weather generation. [#219]
- Increased initial soil water content and prevent drought damage on a new save.
- Lower loose silage prices in line with bales. [#263]
- Made shearing seasonal. Fix production and reproduction of sheep. Sheep only get pregnant in autumn. [#208]
- Make sowing helper recognize the new planted state. [#241]
- Prevent an engine crash when adding too many height types (basegame issue).
- Put new ambient sound in the environment audio group. [#211]
- Remove all snow when disabling it in the settings.
- Remove all swaths before putting down snow. [#147]
- Remove semidry grass on first snowfall.
- Require less straw for animals. [#275]
- Round snow height on savegame load. [#156]
- Update Russian translations.
- Update feed amounts of horses. [#206]
- Update pig foodgroups to not include a POTATO SUGARBEET group. [#158]
- Update pig prices. [#253]
- Updated German translations. [#281]
- Updated US Seasons mask.
- Updated crop rotation yield factors.
- Windrowers drop whatever they picked up, also semi-dry.


We are aware of the following issues (and others) and working on fixing them:
- Weird behavior of planted field state regarding lime, fertilizing, and so on.
- Partly used bales get deleted.

## Version 1.0.0
*Released on July 24th, 2019*

Initial release. For all changes compared to Seasons 17, see our [What's new? article]({{ site.baseurl }}{% post_url blog/2019-07-11-seasons19 %}).
