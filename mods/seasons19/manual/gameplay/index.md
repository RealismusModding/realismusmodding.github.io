---
title: Gameplay
tags: [gameplay]
keywords:
last_updated: 2019-06-16 20:00:00 +0100
summary: ""
ref: gameplay
permalink: /mods/seasons19/manual/gameplay/
---

# Gameplay

A new game starts on the first day of spring with all fields reset to being harvested, thus simulating a farm that you have bought, which hasn't been looked after for some time. It is not possible to start at another time of the year. You will have to start by ploughing, cultivating and seeding your fields before the planting season is over.

Nearly all aspects of the game have been changed to suit the seasons.

General activities for each season (note that this is with no GEO mod. With GEO mods, this can differ):
* Spring - ploughing, cultivating, fertilising, sowing, spraying
* Summer - spraying, harvesting, mowing grass and baling hay
* Autumn - harvesting, ploughing, cultivating, fertilising, sowing, spraying
* Winter - animal care, vehicle and equipment maintenance, forestry

Winters are especially hard because you will not be able to mow any grass for your animals. All their food must come from hay bales and silage you already made. YOu will need to take care of your animals all year.

### Daylight

The lengths of days and nights have been adjusted to suit the seasons, so nights will be longer in the winter than in the summer. In winter it might be light for only 8 hours while in summer it is nearly 17 hours. The seasonal effects of sunlight is dependent on latitude, which can be changed in a GEO mod. For default Seasons the sunlight fits southern UK.

### Season Length

Each season consists of 3 periods, referred to as early, mid or late in the game. Since there are 4 seasons in a year, there are 12 of these periods. Because each season consists of 3 periods, the season length can only be set to a multiple of 3 days. 3 days is the minimum season length, which would mean a period lasting one day and a full year lasting 12 days. We have chosen 24 days as the maximum. A 24 day season length will result in each period lasting 8 days and a full year lasting 96 days.

To change the season length open the Seasons menu (`Alt + S` by default, or `L1 + Options` on console) and navigate to the settings page where you can change the value. The settings are automatically saved.

### Warnings for Gameplay

We do not officially support activating the seasons mod on an existing save game. Instead we recommend that you start a new game. However, using an existing save game is possible and probably will work. We just will not be able to help if things go wrong. Always make a backup of your save game before activating Seasons. We are not responsible for corrupt save games.

If you are using a fast forward mod, keep within the below thresholds, otherwise the game will get out of sync with the extra load of seasons:
- Do not fast forward faster than 6000x on singleplayer (preferable even slower)
- Do not fast forward faster than 1200x on multiplayer (120x is even better)

Pause the fast forwarding every 1 or 2 days for everything to catch up.

### Mod Conflicts

*Note: on console, there are no scripts other than those approved directly by Giants, and players do not need to worry about conflicts. If there are issues, please report.*

The Seasons mod touches almost all parts of the game. It will therefore conflict with a lot of script mods. Here is a list of types of mods that will conflict if they have not been updated specifically for Seasons:
- Any mod that manipulates the weather
- Any mod that manipulates growth
- Any mod that changes animals
- Any 'season manager' type mods
- Any mod that changes fruit prices, but this conflict will mostly be unnoticeable to the player


# New Features in Seasons 19

## Growth

The growth system in Seasons 19 has received a revamp. No longer is every year the same and neither is success predetermined. Look out for bad weather destroying your crops, whether it be frost or droughts. Crop rotation plays a large role in keeping the fields full of nutrients and ensuring good yields, so plan ahead by using the crop rotation planner.

### Improved weeds

Farming Simulator 19 added weeds, weeding and spraying. Seasons changes the default behavior of weeds by growing them slowly in patches instead of across entire fields.

Weeds grow in patches only when the temperature is right. They sprout all over the place as small weeds and mature when it gets warm. When it gets too cold they will start to die on their own. We have implemented preemptive spraying. If you spray early on you will not get weeds on the field until you harvest. Mechanical weeders can only remove young weeds and have no preemptive function.

### Weather-influenced growth

Three new growth states have been added: planted, germinated and germination Failed

Germination happens every day, as long as the soil temperature is high enough.

In Seasons 17 entire fields of crops would die, if they were planted at the wrong time of the year. In Seasons 19 the growth and germination system have been redesigned to be more natural and life like. Dry spells and frost can damage parts of your fields, so it's important to try and plant at the right time and when conditions look favourable in the weather forecast.

It is possible for crops planted too late to germinate, but they will never mature. Check the Seasons calendar and make sure to plant crops at the correct times.

Crops have 3 maturity states: planted, young and mature. All crops have 3 resistance ratings, depending on their maturity state. A new help page has been added into the Seasons menu to show the resistance ratings for each maturity state, per plant.


### Crop Rotation


Crop rotation is the practice of growing different crops in succession that are beneficial to each other. Successful forward planning and execution of your rotations will bring increased yields and reduce the need to fertilize. A yield effect of 120% of vanilla is possible by using the most beneficial rotations and crops.


Crops are divided into crop categories and have dependencies that determine whether a preceding crop category is favourable, neutral or unfavourable for yield. Some crops are more suitable to grow several years in succession, while others require more variation.


It is also possible to leave a field to rest and restore for a year (in the mod this is termed keeping it fallow). Most common crop rotations should be possible to simulate, including the effects of double cropping.


In the field info HUD you will see the crop categories of the two previously planted crops. Together with a rotation planner this will be an important tool for planning the next crop to plant.

#### Rotation planner

The crop rotation planner is a new tool specially made for players to plan their rotations ahead. It can hold four rotations (one per column) and they are saved, even in multiplayer.

{% include big_image.html title="Winter with snow" url="/assets/img/blog/whatsnew19/winter.jpg" %}

## Weather

The new sky and the removal of the skybox system asked for a complete rewrite of the weather system with more details, variety and immersion.

The new cloud system has been integrated with new weather generation that allows more events every day. Rain in the morning, cloudy in the afternoon and thunder at night: these are all possible.

Wind speed and direction is modelled. The wind speed is a key attribute to how quickly grass dries. The income from wind turbines are also dependent on wind speed and with very strong winds they will shut down. Visually turbines will also follow the wind direction.

### Detailed forecast and uncertainty

The weather forecast is much more detailed. Not only does it feature minimum temperature, average temperature and maximum temperature, but also wind speed and probability of precipitation. Expected precipitation is also shown. As drying of hay requires good weather, the suitability of the weather for drying grass is indicated in the forecast (more information on this feature in the below section on grass). On top of that, the next 24 hours are detailed in 3-hour blocks for even more frequent information.

However, the forecast is not completely certain: the further away into the future, the more uncertain it is. A rain predicted in 5 days time might not actually happen.

The weather-people don't know everything, so it is useful to check the forecast regularly!

### Snow and the mask

Some small changes to the Seasons mask: we now fall back on the tip collision. This has become possible with new engine changes. This makes it possible to have high snow even on unprepared maps.

Bale rotting still requires a fully prepared map with a special Seasons mask, so that every spot that is expected to cover for rotting also performs that function.

Placeables from the basegame have received their own masking area so they fit better. Map makers likely need to do this as well to further improve their maps for snow.

{% include big_image.html title="An animal pen with cattle" url="/assets/img/blog/whatsnew19/animals.jpg" %}

## Animals

The animals system has received a complete overhaul with new complexities and more depth. The age, weight and gender of each animal you own is simulated.

Food intake of each animal depends on their age and their weight. Weight gain also depends on their age and weight and on what they are fed. To maximize weight gain the best feed has to be provided.

Cattle can produce either manure, or slurry (liquid manure), but not both. What they produce depends on whether they have straw. This aligns better with how real farms are run. Not using straw will cause a slight decrease in productivity, but slurry is much easier to handle and worth more to a farmer than manure.

Care for the health of the animals has become of utter importance. Keeping them overnight in a trailer will kill the animals due to lack of food, water, and movement.

Hens lay eggs. To get chicks, get a rooster. Ideal is 1 rooster per 8 hens. The chance of breeding decreases with less roosters. If brooding, no eggs.

Raising animals for meat production is now possible. As animals gain weight and age, their growth rate decreases, while feed intake generally follows weight. The key to maximizing profits is to find the balance point between optimal weight and age of the animals. Price per kg is higher for younger animals and weight gain will slow down as an animal ages.

### Breeds

Seasons 19 includes real life animal breeds and each breed has its purpose. Some breeds are meant for meat production, while others are specific breeds for milk, wool and egg production.

For instance cattle is now divided into five breeds: Limousin, Saler, Holstein, Ayrshire and Brahman. These all are different. Limousin, Saler and Brahman are meat breeds, so steers are bought at 300 kg weight for fattening. They have different price and weight gains. Holstein and Ayrshire are meant for dairy operations, so 2 year old heifers are available for purchase. Their milk output will follow lactation cycles. The mod assumes that artificial insemination is carried out and that a 14 month gestation cycle is followed (9 month gestation and 5 months between gestations).

The other animals have similar characteristics to create a more varied, realistic and interesting animal gameplay.

### Horses

The horses have received a special treatment. They have been redesigned into a different type of gameplay: a livery stable. The gameplay tries to emulate a farm that provides housing and basic care of a horse for its owner.

A horse can be brought to the farm in exchange of no money. It has to be fed, cleaned and ridden every day. Depending on how much care it gets, an income is provided every day. Some breeds require more riding to earn the same amount of money as other breeds. Horses also provide more money when they are very fit.

This all comes at a high risk: an unhealthy animal can die. This will cost quite a bit of money as repayment to the owner.

### Grazing

The grazing mod from Farming Simulator 17 has been integrated directly into Seasons 19. Animals in pens that have grass will consume the grass as a replacement for the grass in the trough. Be careful, as the grass in a pen can be completely eaten already. This depends on the size of the pen, the amount of animals, and the time of year.

The changes of the animal pens into placeables that plant their own grass, together with more engine changes, allow for automatic detection of the grass. No map changes are required. The only requirement is that the animal pen has grass.

### Water pump

The animals require a lot of attention. Daily feeding, daily watering, maybe even daily riding. The water requirements of the animals have been corrected to be more realistic. To make it easier for players to have water in the troughs a new water pump can be placed near the animal pen. It will automatically keep the water level of the water troughs at a minimum of 15%. The water cost is subtracted from your account.

{% include big_image.html title="Grass being mown" url="/assets/img/blog/whatsnew19/grass.jpg" %}

## Better grass handling

The engine and script changes in Farming Simulator 19 allowed for many new features. Two of those are a multi-step grass drying process and improved rotting.

A new multi-step drying process has been added to create hay. When cutting wet grass, it needs to be tedded. Afterwards it needs to dry in the sun to become hay. When cutting dry (low moisture) grass, it does not need tedding but still needs to dry.
This means that making hay now depends on the weather. Good planning is required. The more detailed forecast will certainly help here.

If hay is left in the rain it will turn wet again, and afterwards it will start to rot. Freshly mown wet grass will not rot before the second night after mowing.

Hay and straw rots when kept outside in the rain. However, straw and hay heaps inside buildings will not rot anymore, like was the case in Seasons 17. Grass still always rots, as this material is wet. With the new drying system described above, it will take two days instead of one for the rotting to start on grass heaps.

{% include big_image.html title="An autumn scene" url="/assets/img/blog/whatsnew19/autumn.jpg" %}

## Improved visuals and audio

<!-- trees -->

Seasons 19 has received a new system for tree visuals: custom shaders. Together with GIANTS, the team has created new shaders and special custom textures. The trees gradually change their looks, instead of the sudden color switch in Farming Simulator 17. The leaves grow in spring until fully grown in summer, after which they will brown for autumn.
The color of the tree depends on the time of year, the tree and on the weather.

<!-- Lighting -->

The lighting of Seasons has been rewritten to fully fit the new lighting system of Farming Simulator 19. It removes the moon in favor of darker nights and improves the dawn and dusk lighting. The amount of daylight depends on the time of the year and the location of the GEO.

<!-- Sky -->

The new weather system fully integrates with the new cloud system. A varying amount of clouds are shown throughout the day and move with the wind direction. With these changes the weather during the night can be truly dramatic and beautiful.

On top of the cloud system, Seasons adds a new weather event: storms. Storms produce thunder and an occasional lightning effect that will light up your fields.

### Immersive ambient sound system

Seasons replaces the wind and rain sounds of the basegame with a new system. This new system ties in tightly with the visuals: it is possible to hear how fast the wind is blowing or how heavy it rains or hails.

A large set of sounds is being mixed in real time to create the desired effects both inside a vehicle and outside a vehicle.

A new set of flags is added to the map sound system to allow for quiet birds in the winter.

{% include big_image.html title="A vehicle that needs repair and a repaint" url="/assets/img/blog/whatsnew19/repair.jpg" %}

## Adjusted vehicle maintenance and repair

The Seasons 17 repair system has been replaced by the standard one from FS19, but new algorithms have been added to calculate sell and repair prices. Also, the scratches (visible wear) has been separated from the vehicle repair. To improve the performance of your vehicle you can repair. To make the vehicle nice and shiny again you will need to repaint the vehicle. This is costly, depending on the size and complexity of the machine.

