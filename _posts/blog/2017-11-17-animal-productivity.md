---
title: Animal productivity
date: 2017-11-17 13:00:00 +0100
author: reallogger
header:
  image: /assets/img/blog/animalProductivity/cows.jpg
description: In Seasons version 1.2 came a new feature that controls the productivity of animals. This post explains the background and effects.
excerpt_separator: <!-- more -->
---

_This post is part of a series with background information on Seasons. The previous post was about [ground wetness](/blog/2017/11/09/ground-wetness)._

**Note**: this post is about version 1.2.1 of Seasons. Any future changes might be added below in notes.

In Seasons version 1.2 came a new feature that controls the productivity of animals. The productivity of animals are now calculated as an average over time, which means that there are no immediate effects for changes in diet. The productivity is now more a measure of healthiness.

<!-- more -->

{% include big_image.html title="Cows" url="/assets/img/blog/animalProductivity/cows.jpg" %}

When playing Farming Simulator without Seasons the visible productivity of animals are dependent on what they are fed, whether pigs and cows have straw and that they enough water to drink. Also, if their feeding area is dirty (i.e. less than 10% cleanliness) the productivity is reduced.

With Seasons the birth rate, wool and milk production (here termed output) varies through the year. Cows give birth in summer, sheep in spring while pigs give birth both in spring and autumn. On many farms today, animals give birth all year round, but we still wanted to keep this as a seasonal aspect. Sheep produce wool in spring and summer, simulating sharing after the cold winter. Milk production also varies throughout the year.

The combination of output being the instantaneous result of diet, water and straw and the seasonal variations of output from the animals was not realistic. It is not like the milk production will increase by 20% just because the cows are suddenly being fed grass. One could also “cheat” by feeding minimum amounts during seasons when output was small or none.

We wanted to reflect that it will take time to develop a healthy stock of animals. In Seasons version 1.2 the output from the animals are dependent on a productivity over time, i.e. average productivity. The average productivity is now displayed in the animals menu instead of the productivity. This means that even though all throughs are full, you might not see 100%. The average productivity is updated every hour, but since only whole percentages are shown it might take a day or even more before you see the productivity changing. The starting productivity was set to 80% (might be increased to 90% in a future version), to make the player invest in an animal, and to break making easy profit by buying low and directly selling high.

Below are some examples with average productivity for cows in some different scenarios.

#### Example 1: Variations in cow maximum average productivity

When using default growth in Seasons (i.e. no GEO) there is no grass growth in winter. Without feeding grass, the maximal productivity is 80%, which means the average productivity also will be affected. Assuming then that the cows are fed hay/silage/TMR as well has plenty of water and straw, the average productivity will develop like the line plotted in the figure below.

{% include big_image.html title="Maximum cow productivity" url="/assets/img/blog/animalProductivity/cowMax.png" %}

#### Example 2: Reduced productivity for a short time

In this example, the productivity is reduced for a short time. This might for instance be that one runs out of silage or hay. Two scenarios are modelled:
1. Productivity goes down to 55% for 1 day (for instance running out of grass and TMR, leaving only hay or silage in the through)
2. Productivity goes down to 28% for 5 days (feeding only grass)
Both scenarios assume cows have straw. The figure below shows the effect with a reduced diet from day 10 in the first year.

{% include big_image.html title="Short term reduced productivity" url="/assets/img/blog/animalProductivity/cowReduced.png" %}

#### Example 3: Trying to increase average productivity of cows for more births

In the last example, the effect of trying to increase average productivity before when cows give birth in summer is investigated. Let’s say only hay or silage is fed (no TMR or grass, but the animals have water and straw). Then in spring and summer the player fills all throughs, attempting to increase the average production before cows giving birth in summer.

{% include big_image.html title="Trying to increase average productivity before summer" url="/assets/img/blog/animalProductivity/cowDesperate.png" %}

