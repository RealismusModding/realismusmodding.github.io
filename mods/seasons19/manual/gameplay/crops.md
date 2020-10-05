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

If you have activated the Seasons mod on an existing save game, you will be prompted if you wish to reset all fields. We highly recommend to start a new game though to ensure that all of the systems such as weather and growth are working correctly in sync.

Vanilla growth is completely disabled. The mod controls all growth of crops, including pine trees, which take 5 years to become fully grown and harvestable after 2 years since you planted them.

A year is broken up into 12 periods. Each season has 3 periods. They are called early, mid and late and the new growth system follows real life as much as possible, so crops can only be planted and harvested at certain times of the year. Germination happens every night at midnight and growth into further crops states happens at in the transitions between periods. The growth is distributed between planting and harvesting and since most crops have only 4 visible growing growth stages there can be several periods between each time you see crops growing.

There is a planting and harvesting calendar included in the Seasons menu as a reference.
{% include big_image.html title="Planting calendar" url="/assets/img/mods/seasons/screenshots/menu.jpg" %}

Winter will wither certain mature crops and grass will be knocked back to stage 2 in the winter. Another factor which determines whether your crops will germinate is the germination temperature of crops and the current soil temperature. The germination temperature for all crops can be seen in the Seasons menu and the current soil temperature is shown in the HUD. Soil moisture can be obtained by using the measurement tool. If the soil temperature is below the germination temperature, then the sown crops will not germinate. Be wary of droughts and freezing temperatures, as these conditions can cause patches of some of your crops to fail to germinate.

Patchy crop failure is a great new feature in Seasons 19. Every crop has been split into 3 states: seeded, young and mature and each of those states has different frost and drought resistances. Throughout each day the current temperature and moisture levels are checked and if they exceeded the parameters, patches of your crop will be damaged randomly. PCF causes planted crops to become germination failed. Young plants become harvested and mature plants become withered.

{% include big_image.html title="Info screen with crop resistance information" url="/assets/img/blog/growth19/ui.jpg" %}

Default weather is mostly quite gentle and can be thought of as “easy mode” when it comes to the potential for crop damage. For example, you are not likely to see much frost in your first spring. This creates the opportunity for longer planting windows, especially for those more sensitive plants that used to die if planted in early spring. Similarly, planting in the middle of the summer would cause some crops to die. This does not happen anymore. Instead the crops may try to grow, but if you plant outside the planting window, they are unlikely to mature before winter. Killing in the winter has been moved forward as well. The default growth algorithm now kills all mature crops in the transition between early and mid-winter. This will make all the players who love to harvest potatoes and sugarbeet in the winter very happy, but if the late autumn or early winter are harsh, some parts of the crop may get damaged.

{% include big_image.html title="A damaged crop" url="/assets/img/blog/growth19/crop.jpg" %}

Crops, except for grass and oilseed radish, are only harvestable in the final stage. The final stage of growth is represented by the first harvestable stage in the growth overview screen in the Esc menu. As soon as you see a crop reach the first harvestable stage, it means the crop is ready to harvest - it is the final stage. Harvesting can only be done when moisture content of the crop is sufficiently low (less than 20% moisture content). After rain the crop needs time and sunny weather to dry. Moist summer nights can also occur when it will be impossible to harvest. This feature can be switched off by going to the Seasons menu (`Alt + S` or `L1 + Options`) and then going to the settings tab (Crop Moisture). Crops can be foraged / whole cropped at the same growth states as vanilla.

Spraying, or spreading, fertiliser can now only be done in the initial growing stages.

Custom fruits are handled gracefully by using barley's growth patterns. Map makers can choose to modify the growth patterns of vanilla fruits and also make the mod aware of custom fruits by supplying custom growth patterns for them. Also, Seasons GEO Mods can supply their own growth patterns.

Weeds will sprout on untreated fields as soon as the soil temperature is high enough. Default soil temperature for weed germination is 4 degrees Celsius, but this can be changed by a GEO mod, or a custom map. This means that weeds can appear on your fields during cultivation and seeding operations, before your crop has started to grow.

{% include big_image.html title="Weeds" url="/assets/img/blog/whatsnew19/weeds.jpg" %}

Weeds grow in clumps randomly and the yield is only impacted on patches where the weeds are visible. The rest of the field is not impacted. You can confirm this by using the field info window.

Initially weeds are small and can be removed by a mechanical weeder, or by spraying, but they will mature when the soil temperature reaches around 12 degrees. Mature weeds can only be killed by spraying. Spraying not only kills all weeds but also has a preemptive effect. Once a field is sprayed it will not grow more weeds, until it is harvested, because default in-game mechanics plant weeds every time the player harvests a field. Weeds will wither and die when the soil temperature is below 0 degrees Celsius. The preemptive effect means that players can spray their field even before seeding and before any weeds are visible to safeguard against weed related yield losses.

#### Q: Why is cotton and sugarcane blank in the Seasons growth calendar?
**A**: Because they will not grow in the default growth. These crops can be grown when using an appropriate GEO mod.

#### Q: Which crops can be planted in the autumn?
**A**: Currently poplar, grass, oilseed radish, wheat, barley, oat and canola. Anything else is likely to die during the winter. To increase the likelihood of your winter crops surviving until the spring, plant them early enough in the autumn so that they germinate and sprout before the winter. Young wheat, barley, canola and oat have better frost resistance than seeds.

#### Q: Does the mod support non-standard fruits?
**A**: Yes. Any non-default fruits will follow the same growth pattern as barley. For more complex and interesting growth, a map maker should create their own `crops.xml` file and include it in the map for the additional fruits


#### Q: What are the growth patterns for all crops? If I plant crop x in season y when will it be ready to harvest?
**A**: Please refer to the Seasons growth calendar in the game (`Alt + S` by default on PC, `L1 + Options` on console).

#### Q: How does season length work with the periods?
**A**: Season length can be set to 3, 6, 9, up to 24 days. So, if season length is set to 3 days, that means early season will be day 1, mid will be day 2 and late will 3.

- Season length 6 days - early: [days 1-2] mid: [days 3-4] late: [days 5-6]
- Season length 9 days - early: [days 1-3] mid: [days 4-6] late: [days 7-9]
- Season length 12 days - early: [days 1-4] mid: [days 5-8] late: [days 9-12]
- etc.

You can also see the number of days in the calendar.


