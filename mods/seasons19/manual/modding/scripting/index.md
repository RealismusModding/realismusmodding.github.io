---
title: Scripting
tags: [modding, scripting]
keywords: mod, modding, script, scripting, lua
last_updated: 2019-06-16 21:00:00 +0100
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

When Seasons is active, it will create a new global named `g_seasons`. This global contains the Seasons instance. You can use it to access the whole mod.

There is a single way to detect if Seasons is active on a savegame. That is by testing the global variable `g_seasons`. Do not use `g_modIsLoaded`, as the name of the Seasons mod might be different between players.

To access information from Seasons, find it inside this global. For example, the number of days per season can be found at `g_seasons.environment.daysPerSeason`.

We are not documenting all functions of the mod. You can find the code online or inside the mod. If you have questions, feel free to reach out to the team.


## Normalizing over the season length

In Seasons, everything that has income or cost is normalized over the length of a season. This means that it does not matter at what season length the player plays at, a year has the same cost and income. The length of a season only determines how much real time a player can put into their seasons.

If you make a mod that has an input and/or an output, you should normalize this as well. If you do not, on lower season length settings the cost can be too high, while on longer season settings the income might be seen as a cheat.

*Note*: incomePerHour of a placeable is automatically normalized by Seasons.

In this guide, we take as an example a fictional hydrogen fuel generator: there is an object that has water and power as input, and outputs fuel into a tank that can be used to fill vehicles. (The resulting fuel is cheaper than gas at the tank).

The non-normalized version outputs a consistent 50 liters per day, as long as water is supplied in its tank and there is space in the hydrogen tank. Let's call this a productivity of 50l/day.

In Seasons, if the productivity is not normalized, a player running 3 days per season generates 600 liters per year, while a player running 12 day seasons generates 2400 liters per year. This becomes an issue: there is the same amount of fields on a map, the same amount of possible crops, the same amount of vehicles that can be bought from the same money. Also, players on longers seasons skip nights and days more often. Keeping productivity the same will result in skewed gameplay.

Enough reason to normalize it. Seasons uses 6 days per season as the vanilla equivalent. That means a season is 6 vanilla days or 24 vanilla days go into a year. You can use the same number, or a different one.

Below is a simple code example of the first step in the process. Somewhere in the object creation, the productivity is set as a value. (This is a best practice as it can be changed by other code.) Maybe it is even loaded from an object XML. If Seasons is active, we store that original productivity and also calculate the normalized productivity and use that instead.

```lua
function HydrogenGenerator:onCreate()
    self.productivity = 50 -- liters per day

    -- ...

    if g_seasons ~= nil then
        self.originalProductivity = self.productivity
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysPerSeason
    end
end
```

That is basically it, were it not that the length of a Season can change: a player can change the length in the menu during gameplay.

For this a new message is available from the message center:

```lua
function HydrogenGenerator:onCreate()
    self.productivity = 50 -- liters per day

    -- ...

    if g_seasons ~= nil then
        self.originalProductivity = self.productivity
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysInSeason

        g_messageCenter:subscribe(SeasonsMessageType.SEASON_LENGTH_CHANGED, self.onSeasonLengthChanged, self)
    end
end

function HydrogenGenerator:delete()
  g_messageCenter:unsubscribeAll()
end

function HydrogenGenerator:onSeasonLengthChanged()
    -- Here we use the original productivity!
    self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysPerSeason
end
```

In the above code we subscribe to the season length changed message. This message is received by the handler. We update the productivity accordingly.

If you want to finish it off and allow easy access by other scripts, you can add a `setProductivity()` function:

```lua
function HydrogenGenerator:setProductivity(productivity)
    self.productivity = productivity

    if g_seasons ~= nil then
        if self.originalProductivity == nil then
            self.originalProductivity = self.productivity
        end
        self.productivity = self.originalProductivity * 6 / g_seasons.environment.daysPerSeason
    end
end
```

You could call this function from within `onCreate` to remove the redundant code.

## Messages in the message center

##### The season changed
`SeasonsMessageType.SEASON_CHANGED`

arguments: (season)

##### The visual season changed
`SeasonsMessageType.VISUAL_SEASON_CHANGED`

arguments: (visualSeason)

##### Period changed
`SeasonsMessageType.PERIOD_CHANGED`

arguments: (period)

##### Year changed
`SeasonsMessageType.YEAR_CHANGED`

arguments: (year)

##### Length of the seasons changed
`SeasonsMessageType.SEASON_LENGTH_CHANGED`

arguments: (length)

##### Weather changed
`SeasonsMessageType.WEATHER_CHANGED`

arguments: none

##### Change in freezing/not freezing temperature of either air or soil
`SeasonsMessageType.FREEZING_CHANGED`

arguments: none

##### Change in height of snow (visually)
`SeasonsMessageType.SNOW_HEIGHT_CHANGED`

arguments: none

##### A vehicle was repaired
`SeasonsMessageType.VEHICLE_REPAINTED`

arguments: (vehicle, atSellingPoint)

