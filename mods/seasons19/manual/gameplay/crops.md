---
title: Crops
tags: [gameplay]
keywords:
last_updated: 2019-06-16 20:00:00 +0100
summary: ""
ref: gp_crops
permalink: /mods/seasons19/manual/gameplay/crops
---

# Crops

At the beginning of a new game, the mod will reset all fields that have crops to the harvested stage. This is to simulate the fact that you just bought the farm and the fields haven't been worked since the last harvest.

If you have activated the Seasons mod on an existing save game, you will be prompted if you wish to reset all fields. We highly recommend to start a new game though.

Vanilla growth is completely disabled. The mod controls all growth of fruits, including pine trees, which take 5 years to become fully grown and harvestable after 2 years since you planted them.

A year is broken up into 12 transitions. Each season has 3 transitions. They are called early, mid and late and the new growth system follows real life as much as possible, so crops can only be planted and harvested at certain times of the year. The growth happens at midnight when there is a change in transition (change between early, mid, late). The growth is distributed between planting and harvesting and since most crops have only 4 visible growing growth stages there can be several transitions between each time you see crops growing.

There is a planting and harvesting calendar included in the Seasons menu as a reference.
{% include big_image.html title="Planting calendar" url="/assets/img/mods/seasons/screenshots/menu.jpg" %}

Winter will wither certain crops grass will be knocked back to stage 2 in the winter. If you plant crops in a transition that is not within the planting window in the calendar, it will die. Another factor which determines whether your crops will germinate is the germination temperature of crops and the current soil temperature. The germination temperature for all crops can be seen in the Seasons menu and the current soil temperature is shown in the HUD. If the soil temperature if below the germination temperature, then the sown crops will not germinate. They will not die though as long as you are within the planting window. For example, spring barley has a planting window of early, mid and late spring. So, if you plant barley in early spring, but the soil temperature is too low, it will only grow in mid or late spring, or in the worst case, in early summer.

Crops, except for grass and oilseed radish, are only harvestable in the final stage, unlike in vanilla. The final stage of growth is represented by the first harvestable stage in the growth overview screen in the Esc menu. As soon as you see a crop reach the first harvestable stage, it means the crop is ready is harvest - it is the final stage. Harvesting can only be done when moisture content of the crop is sufficiently low. After rain the crop needs time and sunny weather to dry. Moist summer nights can also occur when it will be impossible to harvest. This feature can be switched off by going to the Seasons menu (`Alt + S` or `L1 + Options`) and then going to the settings tab (Crop Moisture). Crops can be foraged / whole cropped at the same growth states as vanilla.

Spraying, or spreading, fertiliser can now only be done in the initial growing stages.

Custom fruits are handled gracefully by using barley's growth patterns. Map makers can choose to modify the growth patterns of vanilla fruits and also make the mod aware of custom fruits by supplying custom growth patterns for them. Also, Seasons GEO Mods can supply their own growth patterns.

## Q: My crops keep disappearing?!
A: You are seeding in the wrong season. You can look in the Seasons menu to find out when you can plant each crop. Like in real life, if the soil becomes too cold, crops will not grow. This means winter crops needs to be planted before the temperature drops too much in autumn. You will also have to wait in spring until the soil is warm enough for seeds to germinate in the soil. The temperature limit for sowing is set for each fruit in the growth.xml file.

## Q: Which crops can be planted in the autumn?
A: Currently poplar, grass, oilseed radish, wheat, barley and canola. Anything else will die during the winter.

## Q: Does the mod support non-standard fruits?
A: Yes. Any non-default fruits will follow the same growth pattern as barley. For more complex and interesting growth, a map maker should create their own seasons_growth.xml file and include it in the map for the additional fruits

## Q: How does the growth work?
A: There are 12 transitions during a year. A year is made up of 4 seasons. Therefore each season has 3 transitions. We do not consider these as months. Instead, we think of them as early, mid and late transitions of a season. So, spring would be broken up into early spring, mid spring and late spring. Most crops can be planted in spring and they will grow. Crops planted in the summer will not grow and will die, except for grass, poplar and oilseed radish. These can be planted any time except for when the soil is frozen. No growth happens during winter. Any crops left that should have been harvested in summer or autumn will wither and die at the beginning of winter.

## Q: What are the growth patterns for all crops? If I plant crop x in season y when will it be ready to harvest?
A: Please refer to the Seasons growth calendar in the game (`Alt + S` by default on PC, `L1 + Options` on console).

## Q: How does season length work with the transitions?
A: Season length can be set to 3, 6, 9, up to 24 days. So, if season length is set to 3 days, that means early season will be day 1, mid will be day 2 and late will 3.

- Season length 6 days - early: [days 1-2] mid: [days 3-4] late: [days 5-6]
- Season length 9 days - early: [days 1-3] mid: [days 4-6] late: [days 7-9]
- Season length 12 days - early: [days 1-4] mid: [days 5-8] late: [days 9-12]
- etc.

You can see the number of days also in the calendar.


## TODO

- PCF
- Weather based
