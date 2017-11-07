---
title: Maintenance, repair and Seasons
date: 2017-11-07 12:30:00 +0100
author: reallogger
header:
  image: /assets/img/blog/repair/workshop.jpg
---

There have been many questions about the repair feature in Seasons and why there is both a repair and maintenance cost. Here we explain some of the reasoning and background.

Seasons adds more days between each harvest compared to vanilla so it became apparent that it was needed to change the vehicle upkeep for the mod. Some considerations were done for gameplay reasons and there were some restrictions by the game (for instance being compatible with the vehicle upkeep interface). In general we wanted to reduce upkeep as this is one of the main cost items in vanilla. Also we wanted the overall vehicle cost to be better aligned with age and how much you use it. Equipment that is not used should have lower upkeep than equipment that is used often.

{% include big_image.html title="Repairs" url="/assets/img/blog/repair/workshop.jpg" %}

We added repair as a gameplay feature as taking care of your machinery is an important part of a farmers routine. Having the daily check is too cumbersome for gameplay, but the wish was to represent for instance the overhaul of combines before harvest and that it becomes more expensive to do repairs if you don't follow the prescribed service intervals.

Repair and maintenance costs are scaled with the number of days per season so it becomes the same annual cost no matter the length of the season you use (assuming that you use the machinery the same amount of hours annually). A further consequence is then that if you play on a 3 day season length you will pay more per day than on a 24 day season length. Summarized over the year it will be the same.

We only added manual repair for motorized machinery (i.e. with Motorized specialization). Everything else is automatically repaired at midnight, mainly due to gameplay. We did not think it would be popular if you needed to manually repair everything.

The maintenance cost is thought to represent taxes, insurance and daily maintenance (equipment needed for maintenance, lubrication, the usual small stuff that breaks and is replaced quickly). Naturally you might not have insurance on pallet forks and some of them have no movable parts so basically there is no daily maintenance needed. But it is impossible in the game to differentiate everything with lots of different functions. For motorized machinery the daily maintenance is 3% of the value and independent of how much you use it.

The repair cost is representing major repairs, normally done in a workshop or similar. This cost is dependent on the age, the total hours on the machine and the hours since last repair. If you find repair cost to become high, it might be time to replace it with a new model.

The costs algorithms have been calibrated to real life data on maintenance of agricultural machinery. Where no data was found, assumptions were made.

If you choose to not repair according to the given intervals (currently once a year), repair will become more expensive and there is also a probability that your machinery will break down.
