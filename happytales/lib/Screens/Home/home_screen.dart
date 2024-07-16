import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:happytales/Screens/Home/fairy_tales.dart';
import 'package:happytales/Screens/Home/maintab_bar.dart';
import 'package:happytales/Screens/Home/moral_stories.dart';
import 'package:happytales/Screens/Home/top_picks.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List topPicksArr = [
    {
      "name": "The Tortoise and the Hare",
      "author": "Aesop",
      "img": "assests/images/Tortoise_hare.jpg",
      "content": "Once upon a time, in a forest far away, there was a speedy hare who loved to brag about how fast he could run. He often teased the tortoise for being so slow. One day, the tortoise, tired of the hare's boasting, challenged him to a race. The hare laughed and accepted the challenge, thinking it would be an easy win. On the day of the race, all the animals gathered to watch. The race began, and the hare zoomed ahead, quickly disappearing from sight. Confident of his victory, the hare decided to take a nap under a shady tree, thinking he had plenty of time. Meanwhile, the tortoise kept moving, slow and steady, never stopping. He passed by the sleeping hare and continued toward the finish line. When the hare woke up, he saw the tortoise near the finish line. He sprinted as fast as he could, but it was too late. The tortoise crossed the finish line first and won the race. The animals cheered for the tortoise, and the hare felt ashamed. He learned that day that slow and steady wins the race, and that overconfidence can lead to failure.",
      "moral":"Slow and Steady wins the race. Overconfidence can lead to failure."
    },
    {
      "name": "The Lion and the Mouse",
      "author": "Aesop, Bernadette Watts",
      "img": "assests/images/lion_mouse.jpg",
      "content": "Once upon a time, in a dense forest, there lived a mighty lion. One day, after a hearty meal, the lion was taking a nap under a tree. A little mouse, scurrying around, accidentally ran across the lion’s paw and woke him up. The lion caught the mouse with his huge paw. The tiny creature trembled in fear and begged for his life. “Please, mighty lion, spare my life! If you let me go, I promise I will help you one day.” The lion laughed at the thought of a tiny mouse helping the king of the jungle, but he was in a good mood and decided to let the mouse go. A few days later, the lion was roaming the forest when he got caught in a hunter’s net. He struggled to free himself but couldn’t break the strong ropes. His roars of anger and frustration echoed through the forest. The mouse heard the lion’s cries and rushed to help. When he saw the lion trapped, he started gnawing at the ropes with his sharp little teeth. After a while, he managed to create a hole big enough for the lion to escape. “You laughed at me when I said I would help you,” said the mouse, “but now you see that even a little mouse can help a mighty lion.” The lion was very grateful to the mouse and thanked him for his help. From that day on, they became good friends.",
      "moral":"A kindness is never wasted, no matter how small."
    },
    {
      "name": "The Three Little Pigs",
      "author": "James Halliwell-Phillipps",
      "img": "assests/images/ThreeLittlePigs.jpg",
      "content": "Once upon a time, there were three little pigs who lived with their mother. One day, they decided it was time to leave home and build their own houses. The first little pig was very lazy. He quickly built his house out of straw. It was easy and didn’t take much time. The second little pig worked a bit harder and built his house out of sticks. It was stronger than the straw house but still not very sturdy. The third little pig worked very hard and built his house out of bricks. It took a lot of time and effort, but it was very strong. One day, a big bad wolf came to the straw house. He knocked on the door and said, “Little pig, little pig, let me come in!” The little pig replied, “NO WAY!” “Then I’ll huff and I’ll puff and I’ll blow your house in!” the wolf roared. He huffed and he puffed and he blew the straw house down. The little pig ran to his brother’s stick house. The wolf followed and knocked on the stick house door. “Little pigs, little pigs, let me come in!” “NO WAY!” the two little pigs replied. “Then I’ll huff and I’ll puff and I’ll blow your house in!” The wolf huffed and he puffed and he blew the stick house down. The two little pigs ran to their brother’s brick house. The wolf followed and knocked on the brick house door. “Little pigs, little pigs, let me come in!” “NO WAY!” the three little pigs replied. “Then I’ll huff and I’ll puff and I’ll blow your house in!” The wolf huffed and he puffed, but he couldn’t blow the brick house down. He tried and tried but the house was too strong. The wolf decided to try another way to get in. He climbed up on the roof and tried to come down the chimney. But the third little pig had a plan. He made a big fire in the fireplace and put a pot of boiling water on it. When the wolf came down the chimney, he fell right into the pot of boiling water. He howled in pain and ran away, never to be seen again. The three little pigs lived happily ever after in their strong brick house.",
      "moral":"Hard work and dedication lead to success."
    },
  ];

  List moralArr = [
    {
      "name": "The Ant and the Grasshopper",
      "author": "Aesop",
      "img": "assests/images/Ant_Grasshopper.jpg",
      "content": "Once upon a time, in a beautiful meadow, lived an Ant and a Grasshopper. The Ant was always busy working hard, gathering food for the winter, while the Grasshopper spent his days singing, dancing, and playing in the sun. One warm summer day, the Grasshopper saw the Ant carrying a heavy piece of grain and called out to him, “Hey, Ant! Why don’t you take a break and come sing and dance with me? There’s plenty of food now!” The Ant, who was sweating under the weight of the grain, paused and looked at the Grasshopper. “I’m storing food for the winter,” he replied. “When the cold weather comes and there’s no food to be found, I’ll be safe and sound with a full pantry. You should do the same.” The Grasshopper laughed. “Why worry about the winter now? There’s plenty of time for that. Come and enjoy the sunshine with me!” But the Ant continued to work hard, gathering food every day. The Grasshopper kept playing and singing, enjoying the warm weather and the plentiful food, never giving a thought to the coming winter. As time passed, the days grew shorter, and the weather became colder. The leaves fell from the trees, and soon the ground was covered in a blanket of snow. The Grasshopper, who hadn’t prepared for the winter, found himself shivering and hungry. There was no food to be found anywhere. Desperate and cold, the Grasshopper went to the Ant’s house and knocked on the door. “Ant, please help me!” he pleaded. “I’m starving and freezing. I didn’t store any food for the winter. Can you share some of your food with me?” The Ant, feeling sorry for the Grasshopper, opened the door and invited him inside. “Grasshopper,” the Ant said kindly, “I worked hard all summer while you played. Now, you are cold and hungry because you didn’t think ahead. I will share my food with you, but let this be a lesson for the future.” The Grasshopper, feeling grateful and ashamed, thanked the Ant and promised to be more like him in the future. He learned that there is a time for work and a time for play and that it’s important to prepare for the future. From that day on, the Grasshopper worked hard, gathering food and storing it away for the winter. And when the next winter came, he was warm and well-fed, just like the Ant.",
      "moral":"Work today to save for tomorrow."
    },
    {
      "name": "The Thirsty Crow",
      "author": "Lyle Lee Jenkins",
      "img": "assests/images/Thirsty_crow.jpg",
      "content": "Once upon a time, on a hot summer day, a crow was flying high in the sky. The sun was blazing, and the land below was dry and parched. The crow was very thirsty and desperately needed a drink of water. He flew over fields, forests, and villages, searching for water, but he couldn’t find any. Just as the crow was about to give up hope, he spotted a water jug in the distance. Excited, he flapped his wings and flew down to the jug, hoping to quench his thirst. But when he reached it, he found that the jug was almost empty. There was only a little bit of water at the bottom, and the neck of the jug was too narrow for the crow to reach it with his beak. The crow tried to push his beak into the jug, but he couldn’t reach the water. He even tried to tip the jug over, but it was too heavy. The crow was very thirsty and getting worried. “What am I going to do?” he thought. “I need to drink this water, but I can’t reach it!” Just then, the clever crow had an idea. He looked around and saw some pebbles scattered on the ground nearby. He flew over to the pebbles, picked one up in his beak, and dropped it into the jug. The pebble made a little splash, and the water rose slightly. The crow realized that if he kept dropping pebbles into the jug, the water level would rise high enough for him to reach. So, he picked up another pebble and dropped it into the jug. And then another. And another. One by one, the crow kept dropping pebbles into the jug. Slowly but surely, the water level began to rise. The crow worked hard, not giving up, even though he was very thirsty and tired. Finally, after dropping many pebbles into the jug, the water level rose high enough for the crow to reach with his beak. He took a long, refreshing drink of water. He felt happy and relieved. His clever plan had worked! The crow flew away, feeling proud of himself. He had used his brains and hard work to solve his problem. From that day on, the crow remembered that with a little ingenuity and perseverance, he could overcome any obstacle.",
      "moral":"Necessity is the mother of invention."
    },
    {
      "name": "The Goose That Laid the Golden Eggs",
      "author": "Aesop",
      "img": "assests/images/Goose_GoldenEggs.jpg",
      "content": "Once upon a time, in a village far away, there lived a poor farmer named Jack and his wife. They had a small cottage and a few farm animals, including a goose. One day, to their amazement, the goose laid a shiny golden egg. Jack and his wife couldn’t believe their luck! They sold the golden egg and soon became very wealthy. Every day, the goose continued to lay a golden egg. As time passed, Jack and his wife grew greedy. They thought to themselves, 'If we could get all the golden eggs at once, we could be richer much faster'.So, they decided to cut open the goose to take out all the golden eggs inside. To their dismay, when they opened the goose, they found that it was just like any other ordinary goose. There were no golden eggs inside. They had lost their precious goose and now had no way to get any more golden eggs. Jack and his wife realized their mistake too late. They had been greedy and had lost everything they had gained.",
      "moral":"Greed can lead to one's downfall."
    },
    {
      "name": "The Honest Woodcutter",
      "author": "Aesop",
      "img": "assests/images/Honest_Woodcutter.jpg",
      "content": "Once upon a time, in a small village nestled beside a dense forest, there lived a poor woodcutter. He worked hard every day cutting trees and selling firewood in the market to make a living. One day, while cutting wood near a river, the woodcutter accidentally dropped his axe into the water. The river was deep, and he couldn’t retrieve it on his own. He sat down by the riverbank, feeling sad and hopeless. As he lamented his lost axe, a magical fairy appeared from the river. She asked him what was wrong, and the woodcutter explained his predicament. The fairy took pity on him and dove into the water. After a moment, she emerged with a shiny golden axe in her hand. 'Is this your axe?' asked the fairy. The woodcutter looked at the beautiful golden axe and said, 'No, my axe was not made of gold. It was just a simple iron axe.' The fairy smiled at his honesty and appreciated his integrity. She then dived back into the water and returned with the woodcutter’s actual axe. This time, he recognized it immediately and gratefully accepted it. Impressed by the woodcutter’s honesty, the fairy rewarded him by giving him both the golden axe and his own iron axe. Overjoyed and grateful, the woodcutter thanked the fairy and promised to always be honest in his dealings. From that day on, the woodcutter prospered. He worked diligently and honestly, earning respect from everyone in the village.",
      "moral":"Honesty is the best policy."
    },
    {
      "name": "The Dog and Its Reflection",
      "author": "Aesop",
      "img": "assests/images/Greedy_dog.jpg",
      "content": "Once upon a time, there was a hungry dog roaming the streets in search of food. After a while, he came across a butcher's shop with a juicy bone in the display. The dog's mouth watered at the sight of the bone, and he immediately wanted to have it. The butcher noticed the dog and decided to have some fun. He threw the bone to the dog, who caught it eagerly. Holding the bone in his mouth, the dog ran to a nearby pond. As he looked into the water, he saw his reflection and thought, 'There's another dog with an even bigger bone! I want that bone too.' Without thinking, the greedy dog barked at his reflection, hoping to scare the other dog away and take its bone. As he opened his mouth to bark, the bone he was holding fell into the water with a splash. To his dismay, the dog realized that the other dog in the water was just his own reflection. There was no other bone. He had lost the bone he had originally and now had nothing.",
      "moral":"Be content with what you have."
    },
    {
      "name": "The Fox and the Crow",
      "author": "Aesop",
      "img": "assests/images/Fox_crow.jpg",
      "content": "Once upon a time, in a sunny meadow near a bustling village, there was a clever fox and a beautiful crow. The crow had just found a tasty piece of cheese and perched herself on a branch of a tall tree. The aroma of the cheese caught the attention of the fox passing by. He stopped and looked up at the crow, who was holding the cheese in her beak. The fox, always cunning and curious, decided to play a trick on the crow. 'Good day, Mrs. Crow!' the fox called out. 'You look splendid today, and if your voice is as beautiful as your plumage, you must be the queen of all birds.' The crow, flattered by the fox's words, wanted to prove him right. She opened her beak to sing, but as she did, the cheese fell to the ground. The fox quickly snatched it up and ran away into the forest. The crow was left feeling foolish and disappointed. She realized that she had been tricked by the sly fox's flattery.",
      "moral":"Do not trust flatterers."

    },
  ];

  List fairytaleArr = [
    {
      "name": "Cinderella",
      "author": "Charles Perrault",
      "img": "assests/images/Cinderella.jpg",
      "content": "Once upon a time, in a faraway kingdom, there lived a kind and beautiful girl named Cinderella. She lived with her stepmother and two stepsisters, who were mean and made Cinderella do all the chores in the house. One day, an invitation arrived at their house. It was from the royal palace, inviting all the maidens to attend a grand ball where the prince would choose a bride. Cinderella was overjoyed, but her stepmother and stepsisters were cruel to her. They gave her extra chores to do and made it seem like she couldn't go to the ball. Cinderella was sad, but her fairy godmother appeared just in time. With a wave of her wand, she turned a pumpkin into a beautiful carriage, mice into horses, and Cinderella's ragged dress into a magnificent gown. She even gave Cinderella glass slippers. But the fairy godmother warned her that the magic would end at midnight. Cinderella arrived at the ball and danced with the prince all night. They had a wonderful time, but as the clock struck midnight, Cinderella remembered the warning. She rushed away, leaving behind one of her glass slippers. The prince, enchanted by Cinderella, searched the kingdom for the maiden whose foot would fit the glass slipper. When he found Cinderella, her stepsisters tried to fit into the slipper, but it was too small for them. Cinderella tried on the slipper, and it fit perfectly. The prince recognized her from the ball, and they were married soon after. Cinderella forgave her stepsisters and invited them to live in the palace with her, where they all lived happily ever after.",
      "moral":"Good people are always rewarded at the right time"
    },
    {
      "name": "Snow White and the Seven Dwarfs",
      "author": "The Brothers Grimm",
      "img": "assests/images/snowhite.jpg",
      "content": "Once upon a time, in a kingdom far away, there lived a beautiful princess named Snow White. She had skin as white as snow, lips as red as roses, and hair as black as ebony. Snow White's stepmother, the Queen, was very vain and jealous of Snow White's beauty. One day, the Queen's magic mirror told her that Snow White was now the fairest in the land, not her. Enraged, the Queen ordered a huntsman to take Snow White into the forest and kill her. But the kind-hearted huntsman couldn't bring himself to harm Snow White, so he let her go. Lost and frightened in the forest, Snow White stumbled upon a tiny cottage. Inside, she found everything small and neat, belonging to seven dwarfs who worked in a nearby mine. They welcomed Snow White into their home. Meanwhile, the Queen discovered Snow White was still alive. Disguising herself as an old peddler woman, she tricked Snow White into biting a poisoned apple. Snow White fell into a deep sleep that could only be broken by true love's kiss. The dwarfs, heartbroken, placed Snow White in a glass coffin. One day, a handsome prince who had heard of Snow White's beauty came to the forest and kissed her. Snow White woke up, and they fell in love. They were married, and Snow White invited the dwarfs to live in the palace with them, where they all lived happily ever after.",
      "moral":"Vanity will not take you far, but kindness will"
    },
    {
      "name": "Sleeping Beauty",
      "author": "Perrault, Charles",
      "img": "assests/images/Sleeping_beauty.jpg",
      "content": "Once upon a time, in a grand castle, there lived a king and queen who had a beautiful daughter named Aurora. They invited all the fairies in the kingdom to Aurora's christening, except for one wicked fairy who was angered by this exclusion. During the ceremony, the wicked fairy appeared and cursed Aurora. She proclaimed that on her sixteenth birthday, Aurora would prick her finger on a spindle and fall into a deep sleep, from which she could only be awakened by true love's kiss. A good fairy softened the curse by declaring that Aurora would not die but instead sleep until awakened by true love. To protect Aurora, the king and queen ordered all spindles in the kingdom to be burned. Aurora grew up happily with no knowledge of the curse. However, on her sixteenth birthday, while exploring the castle, she discovered an old spinning wheel and pricked her finger. As foretold, Aurora fell into a deep sleep, and a thick forest of thorns grew around the castle. Many years passed, and a prince heard of the beautiful princess under the spell. Determined to break it, he fought through the thorns and reached the castle. He kissed Aurora, breaking the curse. Aurora woke up, and they fell in love instantly. The kingdom rejoiced, and Aurora and the prince were married in a grand celebration.",
      "moral":"True love conquers all obstacles"
    },
    {
      "name": "Beauty and the Beast",
      "author": "Gabrielle-Suzanne Barbot de Villeneuve",
      "img": "assests/images/Beauty_beast.jpg",
      "content": "Once upon a time, in a small village, there lived a kind and beautiful girl named Belle. She loved reading books and dreamed of adventure beyond her small town. Belle lived with her father, a quirky inventor named Maurice. One day, Maurice set off on a journey but got lost in the forest. He stumbled upon a magnificent castle hidden deep in the woods, belonging to a fearsome Beast. The Beast was once a handsome prince cursed by an enchantress for his arrogance. He lived alone in the castle with his magical servants, who had been transformed into household objects. When Maurice tried to take a rose from the garden as a gift for Belle, the Beast captured him. Belle, worried about her father, found the castle and offered to take her father's place as the Beast's prisoner. The Beast agreed, hoping Belle's presence might break the curse. At first, Belle was frightened by the Beast's appearance and temper. However, as time passed, she discovered his kind heart and began to see beyond his exterior. Meanwhile, the servants, transformed into objects, secretly hoped Belle could break the curse. One day, Belle's love for the Beast broke the curse just as he was dying. The Beast transformed back into the handsome prince he once was. The castle was filled with joy as the servants also returned to their human forms. Belle and the prince were married, and they lived happily ever after in the castle. Their love story taught everyone that true beauty lies within, not in outward appearances.",
      "moral":"True beauty comes from the inside"

    },
    {
      "name": "Rapunzel",
      "author": "The Brothers Grimm",
      "img": "assests/images/Rapunzel.jpg",
      "content": "Once upon a time, in a kingdom far away, there lived a kind and beautiful couple who longed for a child. They lived next to a magnificent garden belonging to an enchantress named Gothel. The wife, who was expecting a baby, craved the rapunzel plant growing in the garden. Desperate to please his wife, the husband climbed over the garden wall to fetch the rapunzel. Caught by Gothel, he begged for mercy. Impressed by his wife's beauty, Gothel agreed to spare him if they gave her their child once it was born. True to her word, when the baby girl was born, Gothel took her away and named her Rapunzel. She locked Rapunzel in a tall tower hidden deep in the forest, with no stairs or door, and only a window at the top. Rapunzel grew into a beautiful young woman with long, golden hair that Gothel used to climb up to the tower. One day, a handsome prince heard Rapunzel singing from the tower. Mesmerized by her voice, he found the hidden tower and called out to her. Rapunzel, lonely and curious, let down her long hair, and the prince climbed up. They became friends and, eventually, fell in love. Gothel discovered their secret visits and angrily cut off Rapunzel's hair, sending her into exile in the wilderness. But true love prevailed. The prince found Rapunzel and, upon seeing her tears, Rapunzel's hair magically grew back. They returned to the prince's kingdom, where they were married and lived happily ever after.",
      "moral":"Never give up on something we love"
    },
    {
      "name": "Hansel and Gretel",
      "author": "Jacob and Wilhelm Grimm",
      "img": "assests/images/Hansel_Gretel.jpg",
      "content" : "Once upon a time, in a small village near a dense forest, there lived a poor woodcutter with his two children, Hansel and Gretel, and their stepmother. Times were hard, and there was often not enough food to go around. The stepmother, worried about their survival, convinced the woodcutter to abandon the children in the forest. One night, Hansel overheard their plan. He gathered white pebbles and filled his pockets. The next day, as they walked deeper into the forest, Hansel dropped the pebbles along the way. When the woodcutter and his wife left them alone, Hansel and Gretel followed the pebbles back home. But the stepmother was determined. She led them even deeper into the forest the next day. This time, Hansel left a trail of breadcrumbs. However, birds ate the crumbs, and they were lost. As they wandered through the forest, they came upon a cottage made of gingerbread, candy, and cakes. Hungry and tired, they began to eat the house. Suddenly, an old woman came out and invited them in, promising food and shelter. Unbeknownst to them, she was a wicked witch who lured children to eat them. The witch locked Hansel in a cage, planning to fatten him up, and made Gretel her servant. Every day, the witch checked Hansel's finger to see if he was getting plump. Clever Hansel tricked her by sticking out a bone instead, and the witch, with poor eyesight, was fooled. One day, the witch grew impatient and decided to eat Hansel anyway. She asked Gretel to check the oven to see if it was hot enough. Sensing the witch's plan to push her in, Gretel pretended not to understand. Frustrated, the witch showed her, and quick-thinking Gretel shoved the witch into the oven and closed the door. Gretel freed Hansel, and they found the witch's treasure. Filling their pockets with jewels, they made their way back home, guided by birds and animals. They found their father, who had been worried and heartbroken after their stepmother had died. Hansel, Gretel, and their father lived happily ever after, never to be hungry again.",
      "moral" : "Resourcefulness and courage can overcome even the darkest of challenges."
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  child: Transform.scale(
                    scale: 1.7,
                    origin: Offset(0, media.width * 0.8),
                    child: Container(
                      width: media.width,
                      height: media.width,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 175, 227, 1),
                        borderRadius: BorderRadius.circular(media.width * 0.5),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 15),
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Row(
                        children: [
                          Text(
                            "Our Top Picks",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      leading: Container(),
                      leadingWidth: 1,
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      width: media.width,
                      height: media.width * 0.8,
                      child: CarouselSlider.builder(
                        itemCount: topPicksArr.length,
                        itemBuilder: (
                          BuildContext context,
                          int itemIndex,
                          int pageViewIndex,
                        ) {
                          var iObj = topPicksArr[itemIndex] as Map? ?? {};
                          return TopPicks(iObj: iObj);
                        },
                        options: CarouselOptions(
                          autoPlay: false,
                          enlargeCenterPage: true,
                          viewportFraction: 0.45,
                          aspectRatio: 1,
                          enlargeFactor: 0.4,
                          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Moral Stories",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.9,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        scrollDirection: Axis.horizontal,
                        itemCount: moralArr.length,
                        itemBuilder: ((context, index) {
                          var bObj = moralArr[index] as Map? ?? {};
                          return MoralStories(bObj: bObj);
                        }),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(
                            "Classic Fairy Tales",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: media.width,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                        scrollDirection: Axis.horizontal,
                        itemCount: fairytaleArr.length,
                        itemBuilder: ((context, index) {
                          var cObj = fairytaleArr[index] as Map? ?? {};
                          return FairyTales(cObj: cObj);
                        }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaintabBar(), // Move the MaintabBar here
    );
  }
}
