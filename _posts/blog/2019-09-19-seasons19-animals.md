---
title: "Seasons 19: Animals"
date: 2019-09-24 16:00:00 +0200
author: rahkiin
header:
  image: /assets/img/blog/whatsnew19/animals.jpg
excerpt_separator: <!-- more -->
---

*This is a guest post written by Adam, also known as Zugs. He has helped us with the new animal system in Seasons 19 for Farming Simulator 19.
Adam has contacted countless sources, such as farmers, nutritionists, veterinarians and agri-governments, to gather the best data possible. Together with him and his knowledge we created a system that we think is interesting, challenging and close enough to real life. In this post he will be explaining more about the animals, their breeds and their design. Note that all numbers in this post are prone to change for rebalancing.*

<!-- more -->

The new version of Seasons for FS19 brings a plethora of new features and a new way of looking at animals in the game. From Cattle to Pigs and Horses to Chickens, every single species in the game has been worked from the ground up to operate more realistically, based on real life data and specially designed systems. This data have been gathered from industry professionals, studies and knowledgeable individuals alike and have allowed us to truly represent how animals should have been represented in the game in the first place.

In the base game, all we had was a base animal with the same stats and the only difference was the variations in color we got to choose from. We thought this was very boring, bland and most importantly unrealistic. As some of you may notice, now each species has their own individual breeds that they are based off of.

Each breed was chosen carefully based on a variety of factors that cemented their purpose in the game and made sure they were a perfect fit for our purposes. Some breeds within a species have a different use than others such as dairy versus beef with cattle. By doing this, the player can now take their own route with animals and really pinpoint what they want to do.

* TOC
{:toc}

## Cattle

For cattle, tremendous work was done to simulate a variety of different systems such as realistic milk production, beef production, feed consumption etc based on breed, age, weight and health. Each breed we chose had to fit the category they were filling and introduce their unique natural characteristics into the game.

### Breeds

Cattle were separated into two groups. Beef and Dairy.

 - Beef:
   - Limousin
   - Saler
   - Brahman
 - Dairy:
   - Holstein
   - Ayrshire

### Cattle: Beef

With Beef cattle what we wanted to do is try something a little different. So instead of buying breeding stock and breeding the cattle out to produce calves to be later sold as beef, we decided that we wanted to simulate a feeder operation. What a feeder operation is, is buying weaned calves at around 650lbs and feeding them until they are around 1,200lbs to 1,400lbs and then selling them. The player can keep the cattle for longer, but selling at 1,200lbs to 1,400 lbs will be the most cost efficient method due to the cattle having the best lean meat ratio over older and heavier animals which would have more fat content.

With this method, no breeding is necessary and the way to profit is straight forward. For beef cattle we have three choices; Limousins, Salers and Brahman as seen above. Limousins are known as the carcass breed and are have a natural efficiency in converting feed to meat. This means they can consume the same amount of feed than other animals of the same size but grow quicker. The Saler on the other hand is not quite as feed efficient as the Limousin but can be bought for cheap and is a great for starting beef farmers on a budget. And finally the Brahman is a heat tolerant specific breed that grows fast and performs well on marginal feed.

### Cattle: Dairy

With Dairy cattle we really wanted to make things more realistic and add new aspects of owning dairy animals that were not possible before now. And we did just that. Cattle now are already artificially inseminated at purchase and will give birth at the end of gestation. The gestation period is 9 months. You can start to milk them for 10 months after the birth of a calf and then the cattle will have to be rested for 2 months during their dry period. This is just before they give birth. Currently, 3 months after the birth of a calf, the cow will be artificially inseminated again automatically.

Milking will also continue during gestation. In early lactation for a Holstein for example (Under 100 days of milking), cows will produce the most milk per day. In late lactation (over 200 days of milking), cows will the least amount of milk per day. Currently Holsteins will produce 10,756 kg of milk per year in game and Ayrshire’s will produce 8,077 kg.

### Cattle: Feed Consumption

To calculate the required feed consumption of an animal, a calculation is done based on the bodyweight of the cow. This percentage depends on the breed, age and the type of cattle discussed. This formula usually only calculates the dry matter intake but a step was added to calculate the amounts on an “as is” basis. Dry matter is the food an animal consumes with the moisture weight taken out of the total weight of the food.

To do this we take the body weight of the animal, so for example a 1200lbs cow and multiply that by 2.5% for example. So 2.5% of their body weight is what they should eat a day. Remember 2.5% is calculating the dry matter feed intake. Because most grass / dry hay is made up of about 15% water and silage is made up of much more we had to decide that the moisture content we would go with would be the grass/hay value. So we do the calculation to find the dry matter intake and divide that number by 0.85 (100-15). So 1200 x 0.025 = 30. 30 / 0.85 =  35.3. So a 1200lbs cow at 2.5% takes 35lbs as is feed intake. This calculation is done for beef cows as dairy cows eat much more than their beef counterparts and eat a combination of different things as well. Many more calculations are done internally to make these values work, but this is the base one used to actually find the values.

On top of this, with Dairy breeds for example, they eat more than just grass/hay/silage and need the best of the best when it comes to nutrition. You would provide supplements etc when feeding them. Because the game has no functionality in this way, we have included the weight amounts for those nonexistent feeds in the total feed value. So if a Holstein cows eat 10lbs of grass, 10lbs of Hay, 10lbs of Silage and 10lbs of Dairy Supplement in real life (numbers are just used as an example) the in game weight for total feed consumption (Grass, Hay/Silage or TMR) will be 40lbs even though we only can feed Grass, Hay/Silage and TMR and no supplements in game. So we're trying to simulate real total feed numbers in every calculation done.

## Pigs

A lot of work was done on pigs to simulate two types of real life systems. All of these systems are covered below under “Pigs: The Three Types of Operations”. Four breeds were chosen based on a variety of factors and how well they fit out criteria and the goals we had in mind. The four breeds are Yorkshire, Berkshire, Spotted and Gloucestershire Old Spot. The breeds were grouped into groups of two in order to introduce the player to two new pig management systems. Farrow to Feeder and Feeder to Finish.

### Pigs: The Three Types of Operations

#### Farrow to Feeder
A farrow to feeder operation involves breeding sows and then selling the piglets to finishing operations when they weigh 30 to 60 pounds. We chose 60lbs as the piglets would be about eight weeks old. In real life, compared to a farrow to finish operation, this option reduces the need for facilities, operating capital, feed amounts and manure handled. The biggest drawback of this system is that producers, with a small number of animals, are at the mercy of aggressive and unstable feeder pig markets. Meaning prices fluctuate constantly. Another thing that can be noted is the fact that piglets in real life when starting dry food are usually fed a different ration than breeding stock.

##### Feeder to Finish
Feeder to finish operations buy feeder pigs weighing 30 to 60 pounds (60lbs in our case) at about 8 weeks of age and feed them to a market weight of about 280 pounds or about 6 months old. In real life, fancy setups or facilities are not needed and can be run fine within modest and existing buildings. This system allows for minimum overhead requirements, low labor, and no long term commitments like in Farrow to Feeder and Farrow to Finish operations.
This method also offers an opportunity for grain farmers to use homegrown feeds to finish pigs without having to manage breeding stock on top of it. So one feed type and mixture can be used for all animals. Source, health, and quality of purchased feeder pigs are all the biggest factors in ensuring a successful startup. Ideally, all feeder pigs should originate from a single farm to maintain consistency and reduce potential herd health problems.

##### Farrow to Finish
A farrow to finish operation involves breeding sows and then feeding the piglets until they reach a market weight of about 280 pounds (6 months old). So the entire process from birth to finish is done by the same farmer. The entire production period takes around 10 months to complete; Comprised of 4 months for breeding/gestation and 6 months to raise the piglets to market weight. Of the three systems, farrow to finish has the greatest long run market potential and flexibility. This system also demands the most capital and labor, and requires a long term commitment to the swine business as a whole. Another thing that can be noted is that in real life, different feeds would be required for piglets, feeder pigs and breeding stock.

### Pigs: Breeds

 - Farrow to Finish:
   - Yorkshire
   - Spotted
 - Feeder to Finish:
   - Berkshire
   - Gloucestershire Old Spot

### Pigs: Other Changes

In the Farrow to Finish operation, when piglets are born they weigh in at about 2-4lbs. They are weaned at about 13-15lbs or 21-25 days. Their birth weight and weaning age are all dependant on the breed. As well, when the data on these breeds was collected, the data was organized into 6 separate growing stages consisting of Birth, Wean, Nursery, Grower, Finisher and Mature. Each had their separate values listed for age, feed amount per day, average gain per day and weight range.

This was done to better visualize how the player will interact with the animals as well as pinpoint specific gains and growth patterns as the animal ages. For pigs it is recommended if you are doing a Farrow to Finish operation, it is best practice to separate animals of different weights so you can better manage your stock and In game and do a little role-playing if you want. This also allows you to keep breeding stock and piglets away from larger pigs. Just have fun with it.

One other note for pigs are the changes done to feed. Before feed ingredients consisted of Corn (50%), Wheat/Barley (25%), Soybean/Canola/Sunflower (20%) and Beets/Potatoes (5%). Now they are setup as follows:

- Corn: 50%
- Wheat/Barley: 25%
- Soybean/Canola/Sunflower: 25%

## Sheep

With sheep we wanted to introduce a few changes to gameplay and give each of the breeds purpose. Instead of just choosing a color of sheep you can now choose individual breeds each with their own strongpoint’s and weaknesses. We have also introduced a Wool specific breed.

### Sheep: Breeds

 - Meat:
   - Suffolk
   - Dorper
   - Dorset
 - Wool:
   - Merino


### Sheep: Breeds and Their Differences

### Suffolk
The Suffolk is a large breed of sheep that grows very fast. It also produces a modest amount of wool for the size it carries. But as with everything there are tradeoffs for the quick growth and performance. For one it requires a lot of feed as adult, more than any other breed.  It is slow maturing as its mature weight is around 250lbs for ewes and 375lbs for rams. So if you’re looking for a fast maturing sheep this may not be the breed for you. They are relatively prolific but not as prolific as the Dorper. They’re also great for 100-140lbs lambs, as smaller lambs of the breed may not have the leanness the market calls for.

#### Dorper
A medium sized hair/wool breed that grows fast but produces no wool to sell. The Dorper is the most prolific breed on the list meaning it will have the most amount of lambs per lambing. Its smaller frame also makes it fast maturing and requires little feed as an adult compared to other breeds. Great for 85-100 lbs lambs as they tend to fetch the highest prices at this weight compared to other breeds.

#### Dorset
The Dorset is another large breed of sheep that grows moderately fast and produces a good amount of wool for its size. It requires a medium amount of feed as an adult so in-between that of the Suffolk and Dorper. It is relatively prolific and great for 50 -85 lbs lambs.

#### Merino
The Merino is a medium breed that is used soley for wool production. Given this fact, it would not be the breed of choice if meat were one of your priorities. The Merino grows slowly, is not very prolific but doesn’t require a lot of feed as an adult. Given that it is a Wool breed, it quintuples wool production of the other available breeds.

### Sheep: The Purchase

When you purchase a sheep, regardless of breed you are purchasing a female animal. These animals will still breed as the player will have to pretend that they have a male animal in the pens or that breeding is done automatically. Although it should be noted that sheep are not artificially inseminated at this point.

## Chickens

With chickens, we wanted to add a lot of variety in the gameplay and the way we choose our breeds. Instead of having all chickens perform and produce the same, we have split them into three groups each with their own unique purpose. They are: Egg layer, meat bird and hybrid. Each breed grows differently, has their own unique traits and feed requirements etc.

### Chickens: Breeds

 - Eggs:
   - White Leghorn
 - Meat:
   - Cornish Cross
 - Hybrid:
   - Rhode Island Red

### Chickens: Breeds and Their Differences

#### White Leghorn (Eggs):
This is the bird of choice if eggs are what you want to produce.  It requires less feed than the meat specific and hybrid breeds and produces the most amount of eggs. Currently in game that number is set to an equivalent of 300 eggs per year.

#### Cornish Cross (Meat):
This meat breed is extremely fast growing and top producing meat bird. It can be raised and sold relatively fast. Especially in comparison to the other breeds. It requires a lot of feed though, to meet its requirements.

#### Rhode Island Red (Eggs/Meat):
The RIR is a hybrid breed meaning it both produces eggs and can be sold for meat. Currently the Rhode Island Red produces an equivalent to 250 eggs per year. Being that it is a hybrid breed, its feed requirements fall in between that of its layer and meat specific counterparts.

### Chickens: At Purchase

When you first purchase each of the above birds, depending on the breed they may be chicks or full grown chickens. Currently when you purchase a Cornish Cross, you will be buying chicks. You will grow out these chicks until they are of size. When you buy White Leghorns you will be purchasing ready to lay chickens that will start producing automatically. And finally when you purchase Rhode Island Reds, you will also be purchasing chicks.

### Chickens: Breeding and incubation

If you choose to have a rooster and begin to raise chicks the rule of thumb is 8 chickens to 1 rooster. Keep in mind that if you have a rooster and want your hens to produce chicks, these chickens will become broody and will stop laying. So production for these broody birds will stop.
