---
title: "Seasons 19: Growth"
date: 2019-07-19 17:00:00 +0100
author: theseb
header:
  image: /assets/img/blog/growth19/crop.jpg
excerpt_separator: <!-- more -->
---

One of the major design goals for Seasons was to remove the feeling that you were stuck in ground hog day – every day was exactly the same perfect summer’s day. In the morning you could plant crops and you would be harvesting them that same afternoon. Seasons 17 took steps to remove that feeling and gave the player the opportunity to follow a typical farming year with penalties for planting crops at the wrong time. This was better than a ground hog day, but playing through multiple years could also become monotonous and the feeling of ground hog year could creep in. Once a player understood the growth calendar and planted at the right time they were always guaranteed a 100% success rate.

<!-- more -->

We’ve made some changes in this regard in Seasons 19. Instead of killing entire fields of crops when they were planted at the wrong time, we’ve implemented a feature that I lovingly called patchy crop failure, or PCF for short. PCF, unsurprisingly, does exactly what it says on the tin: it causes patches of failed crops based on temperature and moisture. This helps to introduce an element of randomness into the crops' growth patterns, since these conditions have annual variances. Every crop has been split into 3 states: seeded, young and mature and each of those states has different frost and drought resistances.

{% include big_image.html title="A damaged crop" url="/assets/img/blog/growth19/crop.jpg" %}

Throughout each day the current temperature and moisture levels are checked and if they exceeded the parameters, patches of your crop will be damaged randomly. PCF causes planted crops to become germination failed. Young plants become harvested and mature plants become withered. These transition states were chosen because they make the most sense visually.

{% include big_image.html title="Info screen with crop resistance information" url="/assets/img/blog/growth19/ui.jpg" %}

Default weather is mostly quite gentle and can be thought of as "easy mode" when it comes to the potential of crop damage. For example, you are not likely to see much frost in your first spring. This creates the opportunity for longer planting windows, especially for those more sensitive plants that used to die if planted in early spring. Similarly, planting in the middle of the summer would cause some crops to die. This does not happen anymore. Instead the crops may try to grow, but if you plant outside the planting window, they are unlikely to mature before winter. Killing in the winter has been moved forward as well. The default growth algorithm now kills all mature crops in the transition between early and mid-winter. This will make all the players who love to harvest potatoes and sugarbeet in the winter very happy, but if the late autumn or early winter are harsh, some parts of the crop may get damaged. 

There are some compromises to be made in terms of game play as we move towards a more natural and weather influenced growth. Previously the player feedback loop was quick – you planted at the wrong time within a few days max in the next period you could see the impact of a wrong decision. Now a bad decision may not become apparent as quickly, so using the information provided in the Seasons menu about planting and harvesting times and crop resistances are the keys to success.

For GEO makers, the choice is still there. If you wish to stick to the old way of doing things and want to kill crops planted at the wrong time immediately, you can still do it. You can also manipulate the resistance values of all the crops too. It is also possible to create a map with interesting additional crops with special resistances, for example drought resistant barley and then add this new crop and its growth pattern into the GEO mod. We will be creating a manual to help you migrate your old growth files to the Seasons 19 format.

The topic of crop damage brings the question of crop insurance. It is something that we discussed, but in the end could not find a way to bring this into the game without it feeling like a huge cheat and hence there is currently no crop insurance in Seasons 19.
