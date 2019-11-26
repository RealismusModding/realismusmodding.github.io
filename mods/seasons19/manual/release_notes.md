---
title: Release notes
ref: release_notes
---

# Release notes
The release notes contain the changed made in every version after the initial release.

- [Version 1.1.0](#version-110)
- [Version 1.0.1](#version-101)
- [Version 1.0.0](#version-100)

## Version 1.1.0
*To be released*

Most important changes:
- Console release.
- Grass growth has been updated to fix second-year growth.
- New animal screen in the Seasons menu with more details. Old screen has been removed.
- Animals now have a name (number) so you can identify them easier.
- Fixes for some special cases with maps and other mods.
- Fix for massive amounts of snow in special case.
- Fixes for the weather generation freezing gameplay.
- Improved weather generation.
- Added snow contracts (need map support).
- Improved helper AI.
- Fixed crop rotation effects.

All changes:
- Aborting animals if low health. [#315]
- Add IDs to animals (custom names).
- Add a new screen for animals.
- Add age classifiers to animal screen.
- Add error checks for when salt, snow or grass can't be added to the map. (Game will not load)
- Add fix for when a fruit is in a geo but not in the map fruittypes. [#477]
- Add missing material effect for semi dry grass in mower. [#433]
- Add more lenience to cutters for withered and germination failed patches. (Both appear in patches in Seasons. Starting in such patch still is not possible.)
- Add more safety checks around animal food for mod maps. [#324]
- Add new icon for semidry. [#437]
- Add new visuals.xml format that has better support for memory usage (required for console).
- Add nil checks for rotVolume. [#424]
- Add shovel access to missions. (Also allows shovelling potatoes and beets). [#453]
- Add snow contracts (need map changes).
- Add spraying of the planted state.
- Add weather verification on load. With invalid weather a rebuild is done. (For restoring existing savegames) [#457]
- Add weeding of planted state. [#181]
- Added Chinese Simplified translations by liuzhenyu811.
- Added grass regrowths after harvest to allow two full cuts of grass per year.
- Added horse renaming to the animal screen.
- Added safeguard due to weather event crash. [#328 and others]
- Adjust a piece of mission code to update mission parameters regularly. [#340]
- Adjust parallel food group capacities based on eatWeight. [#429]
- Adjusted detection area and heuristics of weed to fix NPCs and missions. [#405]
- Allow grass to regrow after being cut earlier. [#365]
- Allow spraying certain fillTypes on frozen ground
- Animals will not get pregnant and already pregnant animals will abort if health is low. [#315]
- Change the hardcoded economy category of bales to a detection using the economy configuration. [#201]
- Change water and straw display to liters.
- Continued weather fixes.
- Correctly adjust food intake calculations for season length. [#383]
- Delay visual switch at load so it works on clients. [#379]
- Directly update all animal pens when a pump is placed for direct feedback. [#309]
- Do not delete perfectly fine bales. [#296]
- Do not re-use DMM and change them. Fixes weird weed replanting issues. [#283]
- Do not show fruits in crop rotations that are not installed in the map. [#452]
- Do now load values and show fruits that have not been installed into the map. [#382,#355]
- Ease requirements of bale missions. [#344]
- Ensure clouds appear before rain. [#373] + several weather improvements
- Fix AI for cutter so silage works again at headlands. [#485]
- Fix Italian capitalization. [G#30098]
- Fix animal selection issue. [#320]
- Fix automatic input issue with rotation planner. [#316]
- Fix basegame issue where the fill plane of liquid manure pits is not updated when loading the save.
- Fix basegame issue with lights during rain. [#417]
- Fix bug with custom animal types and growth factors.
- Fix call issue in growth manager.
- Fix double-talk in Russian translation. [G#30101]
- Fix for crop moisture toggle in settings not working. [#258]
- Fix for extremely deep snow with snow turned off. [#319]
- Fix for loading savegames with filltypes that do not exist anymore.
- Fix for weird value of dayTime that is >24h, causing a whole day of events to be cleared. [#420]
- Fix generation of the crop drying forecast in MP clients.
- Fix harvesting of potatoes when crops are wet with the pulled harvester. [#410]
- Fix horse riding scale income. [#346]
- Fix initial state of season admirers in MP clients. [#368,#379,#368]
- Fix initial weather building for transition events. [#444]
- Fix issue in animal menu when a husbandry has spillage incorrectly set up. [#432]
- Fix issue in environment onDayChange updates with lag.
- Fix issue with ID generation when buying into a trailer.
- Fix issue with not using the grazing mask.
- Fix moisture toggle for treshing. [#258]
- Fix nil error when measuring terrain without crop. [#409]
- Fix non-monotonic keyframes for lighting in Snowy Lands. [#254]
- Fix pallet update override. [#441,#446]
- Fix rotting of hay (used to be always at midnight, now when raining). [#326]
- Fix rounding of negative numbers. [G#30072]
- Fix support for the Claas Uniwrap which makes bales with wrapping state smaller than 1. [#463]
- Fix text length of Czech translations. [G#30102]
- Fix tree scanning. [#358]
- Fix wear on borrowed machines. [#459]
- Fix windrower AI for semidry. [#440]
- Fix wrong boolean check causing animals to become female when they are bought as female. [#305]
- Fix wrong network call. [#472]
- Fix yield output of Crop Rotation. [#337]
- Fixed reading of crop rotation values for HUD. [#336]
- Fixed status bars passing the 100% in animals frame.
- Hide the basegame animals page.
- Higher moisture for growing crops.
- Improve textures on the waterpump. [#146]
- Improve update of grass in winter so the rotation at the start of the new year is correct. [#365]
- Improve updating of liquid manure plane. [#492]
- Improved German translation. [#462]
- Improved crop moisture model.
- Improved drying delay. Fixed issue with rotten hay in the height map. Improve delay performance. [#396]
- Improved economy history syncing. [#217]
- Improved loading of data from crops file to allow partial overrides. [#321]
- Improved snow/rain switching code. [#466]
- Improved syncing of weather data to prevent some cases on out-of-sync weather and freezes. [#430]
- Improved time synchronisation when sleeping and fast-forwarding.
- Improved tree scanning in multiplayer. [#378]
- Increase NPC field work speed so weeds get cared for better
- Increase animal Ids to 9999. Sync using integer, not float.
- Increase size of docked text so it fits Italian and French. Add full stop to Czech. [G#30087]
- Increased feed consumption.
- Increased pig value.
- Load placeable type every time the mod loads. [G#29631]
- Look at the next N days starting from current time so savegames with daytime below 10AM keep their weather. [#476]
- Lower bga silage income by 25% to balance more with silage sales. [#478]
- Lower distance at which a water pump has effect.
- Lower food intake for sheep a bit.
- Lower water pump water price. Just cost of the pumping, not the water. [#486]
- Make crop drying simulation on exact hours to fit better with start/end times of events. Add a check for wrong event times.
- Mark builtin masks as painted. [#348]
- No more grass bale rotting before first midnight. [#307]
- Normalize wrapping state so tools and code recognizes it as such. [#463]
- Oilseed radish removed from crop rotation planner. [#317]
- Only change names of animals if a realistic version is available.
- Optimize bale rotting by running it every 15 ingame minutes instead of every tick. [#5]
- Optimize bale swapping code with build-one tables. [#144]
- Reduced placeable upkeep.
- Remove extra fertilizer on perfect rotations: did not work as expected for direct seeding.
- Remove great demands for products that sell for 0. [#479]
- Remove use of event before a nil check causing freezes. [#444]
- Revalidate grass based missions when grass is cut. [#260]
- Run node scratch code on server only, as its already synced. Fixes repaint issue on clients. [#362]
- Send snow height event on game loaded so in MP the SnowAdmirer works better. [#404]
- Show new game season dialog after clicking start. [G#29727]
- Show spring message on new savegame.
- Show year in statistics. [#269]
- Small weights are shown with more decimals.
- Sync average productivity to clients (animal health). [#274]
- Tone down PCF
- Update German translation. [G#29675]
- Update NPCs to do more weeding and spraying. [#283]
- Update missing texts in CS and ES with English.
- Update savegame version.
- Update the order of nodes of snow areas to match foliage areas. [#450]
- Update the resetSprayArea filter to include our higher max spray level. Fixing un-plowable spots.
- Update wear duration. [#109, #482]
- Update weed code: for planted state, only allow preventative spraying. (Weeds would be reset by the planter anyways). But do always set the visible spray channel even if no actual spray was needed. [#283]
- Updated Brazilian and Czech translations.
- Updated Polish translation. [G#30088]
- Updated Polish translations.
- Updated german translation
- Updated italian translation.
- Updated math for NPC update speed. [#401]
- Use base directory on the map xml filename.
- Use center of water trough with smaller radius to find pumps instead of center of placeable. [#325]
- Use food group fill type names in animal menu for better content indication. [#428]
- When generation of weather fails, always rebuild to prevent cascading errors. Also show callstack. [#457]

## Version 1.0.1
*Released on August 7th, 2019*

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
