---
title: Scripting
tags: [modding, scripting]
keywords: mod, modding, script, scripting, lua
last_updated: 2019-05-05 21:00:00 +0100
summary: ""
ref: scripting
permalink: /mods/seasons19/manual/modding/scripting/
---

# Scripting
{:.no_toc}

Learn how to take advantage of the Seasons mod in your own mods and scripts.

* TOC
{:toc}


## Detecting and accessing Seasons

When Seasons is active, it will create a new global named `g_seasons`. When this variable is not `nil`, it will contain nearly all classes of Seasons.

There is a single way to detect if Seasons is active on a savegame. That is by testing the global variable `g_seasons`. Do not use `g_modIsLoaded`, as the name of the Seasons mod might be different between players.

To access a Seasons class, use an index on `g_seasons`. The index name is different per class. For `ssEnvironment` it is `g_seasons.environment`, and for the weather manager it is `g_seasons.weatherManager`. The exact names can be found in the respective classes in our GitHub repository.


## Normalizing over the season length

In Seasons, everything that has income or cost is normalized over the length of a season. This means that it does not matter at what season length the player plays at, a year has the same cost and income. The length of a season only determines how much real time a player can put into their seasons.

If you make a mod that has an input and/or an output, you should normalize this as well. If you do not, on lower season length settings, the cost can be too high, while on longer season settings, the income might be seen as a cheat.

In this guide, we take as an example a fictional hydrogen fuel generator: there is an object that has water and power as input, and outputs fuel into a tank that can be used to fill vehicles. (The resulting fuel is cheaper than gas at the tank.)

The non-normalized version outputs a consistent 50 liters per day, as long as water is supplied in its tank and there is space in the hydrogen tank. Let's call this a productivity of 50l/day.

In Seasons, if the productivity is not normalized, a player running 3 days per season generates 600 liters per year, while a player running 12 day seasons generates 2400 liters per year. This becomes an issue: there is the same amount of fields on a map, the same amount of possible crops, the same amount of vehicles that can be bought from the same money. Also, players on longers seasons skip nights and days more often. Keeping productivity the same will result in empty tanks.

Enough reason to normalize it. Seasons uses 6 days per season as the vanilla equivalent. That means a season is 6 vanilla days or 24 vanilla days go into a year. You can use the same number, or a different one.

Below is a simple code example of the first step in the porcess. Somewhere in the object creation, the productivity is set as a value. (This is a best practice as it can be changed by other code.) Maybe it is even loaded from an object XML. If Seasons is active, we store that original productivity and also calculate the normalized productivity and use that instead.

```lua
function HydrogenGenerator:onCreate()
    self.productivity = 50 -- liters per day

    -- ...

    if g_seasons then
        self.originalProductivity = self.productivity
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysInSeason
    end
end
```

That is basically it, were it not that the length of a Season can change: a player can change the length in the menu during gameplay.

For this there is a new listener available.

```lua
function HydrogenGenerator:onCreate()
    self.productivity = 50 -- liters per day

    -- ...

    if g_seasons then
        self.originalProductivity = self.productivity
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysInSeason

        g_seasons.environment:addSeasonLengthChangeListener(self)
    end
end

function HydrogenGenerator:delete()
    if g_seasons then
        g_seasons.environment:removeSeasonLengthChangeListener(self)
    end
end

function HydrogenGenerator:seasonLengthChanged()
    self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysInSeason
end
```

In the above code, the object is added to the list of listeners. It is also removed once deleted. If the length of a season changes, `seasonLengthChanged()` is called.

If you want to finish it off and allow easy access by other scripts, you can add a `setProductivity()` function:

```lua
function HydrogenGenerator:setProductivity(productivity)
    self.productivity = productivity

    if g_seasons then
        self.originalProductivity = self.productivity
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysInSeason
    end
end
```

You could call this function from within `onCreate` to remove the redundant code.

## Environment listeners

As seen in use above, Seasons adds new listeners usable by other mods.

 - Season length changed
   - Add: `g_seasons.environment:addSeasonLengthChangeListener(target)`
   - Remove: `g_seasons.environment:removeSeasonLengthChangeListener(target)`
   - Call: `target:seasonLengthChanged()`

 - Season changed
   - Add: `g_seasons.environment:addSeasonChangeListener(target)`
   - Remove: `g_seasons.environment:removeSeasonChangeListener(target)`
   - Call: `target:seasonChanged()`

 - Transition changed
   - Add: `g_seasons.environment:addTransitionChangeListener(target)`
   - Remove: `g_seasons.environment:removeTransitionChangeListener(target)`
   - Call: `target:transitionChanged()`

 - Visual season changed
   - Add: `g_seasons.environment:addVisualSeasonChangeListener(target)`
   - Remove: `g_seasons.environment:removeVisualSeasonChangeListener(target)`
   - Call: `target:visualSeasonChanged()`

## Notes
