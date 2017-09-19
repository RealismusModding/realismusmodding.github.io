---
title: Best Practices
tags: [modding]
keywords:
last_updated: 2017-06-07 22:16:15 +0100
summary: "Use best practices when making your mod, to work well with both the game and Seasons"
ref: best_practices
permalink: /mods/seasons/manual/best-practices
---

# Best Practices
{:.no_toc}

Use best practices to make your mods both compatible with the game (even after patches), and mods, such as Seasons.
Seasons generally assumes GIANTS quality mods, so keeping to their style is a near-guarantee it will work with Seasons as well.

* TOC
{:toc}

## Maps

Maps are big and complex, and everyone makes them in a different way. There are a couple of things to look out for, especially in the beginning when setting up your map.

### Large maps require correctly sized density files

When increasing your terrain size, from 1025 to 4097, for example, you need to increase the size of your foliage as well. If you forget this, you might get growth issues with Seasons. Also, you will have big tramlines with crop destruction. The same holds for other density layers (gdm or grle files). It will require more memory but you lose precision and data otherwise. Remember that when making a 4x or 16x map, you are already requiring a lot more memory than with 1x maps.

Also make sure you resize the Seasons density file accordingly. If you do not, very odd errors might show up when playing.

## Vehicles

Are you making a new vehicle? Read these best practices for good integration in both the game and for compatibility with Seasons.

### Specializations and code

Do not write your own specializations, but reuse vanilla ones. For example, if you make a baler, use the `Baler` spec, do not roll your own. This way, mods will recognize your vehicle as an actual baler.
If you need to add functionality to your vehicle, use other specs on top of your main spec, or make a small one for your specific machine, like `CompressingBaler54`.

## Bales

Baling and bales are a nice addition to the game, but their visual appearance and functionality is completely disconnected: you need to configure its size and properties, those are not retrieved from the model.

### Custom bales

Add user attributes for the bales size to the `i3d` file. For square bales, use `baleWidth`, `baleHeight` and `baleLength`. For round bales (with attribute `isRoundbale` to `true`), use `baleWidth` and `baleDiameter`.
If a bale is a wrapped bale, make sure to set the boolean user attribute `supportsWrapping` to `true`. This way the game understands it is wrapped and Seasons does the fermentation when the contents is grass or silage.

The values all have a default, for the size of the bales in the game. It is important to use the actual sizes, in proportion to the bale capacity. Seasons uses the uncompressed bale size (by computing geometric volume) to determine if a bale is beyond use. If the fill level is lower than the geometric volume (as in, the bale is less than fully uncompressed), it falls apart and is removed from the game.
