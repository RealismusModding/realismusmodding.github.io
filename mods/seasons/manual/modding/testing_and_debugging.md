---
title: Testing and Debugging
tags: [modding]
keywords: guide, modding, testing, debugging
last_updated: 2017-09-25 17:14:00 +0100
summary: "Test and debug your mods using handy tools"
ref: testing_and_debugging
permalink: /mods/seasons/manual/modding/testing-and-debugging
---

# Testing and Debugging
{:.no_toc}

Testing if your mod works as it should and fixing issues that appear is one of the most important parts of creating good mods. There are plenty of tools to help in this endevour.

* TOC
{:toc}

## Console commands

When working on mods, make sure to enable the in-game developer console. It will allow your to see errors directly when they are created. It will also give you access to console commands.

To enable to console, open the game.xml in your Farming Simulator folder, and change game.development.controls to `true`.

To use the console, open the game and press ~ on Windows (the key left of the 1), or § on Mac. Press it again to start input for commands. Press it once more to close the console.

### Commands supplied by the game

This is a small list of useful commands.

 - TODO

If you have cheats enabled by adding `-cheats` to your startup command, you will have access to these too:

 - gsFillVehicle to fill a tipper with a material
 - gsSetFieldFruit to set the fruit of a field

To find any command, type `gs` and then tab through them.

### Commands supplied by Seasons

The following commands are supplied by Seasons and useful for testing maps and other mods.

#### Change height of snow

Add or remove a single layer of snow, or remove all snow.

Usage: `ssAddSnow`, `ssRemoveSnow`, `ssResetSnow`

#### Set visual season

Sets the visual-only season. It updates the daylight, texture replacements and everything else connectec to the visual season system. To reset to the actual season, use the command with the season you were at.

Very useful for testing custom texture replacements and lighting.

Usage: `ssSetVisualSeason season`, where `season` is summer, winter, autumn, spring.

#### Reset all growth

Resets all growth, as if a new savegame was started.
Usage: `ssResetGrowth`

#### Repair current vehicle

Repairs the vehicle you currently control.
Usage: `ssRepairVehicle` (cheats only)

#### Repair all vehicles

Repairs all vehicles.
Usage: `ssRepairAllVehicles` (cheats only)
