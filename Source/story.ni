"pride" by Melissa Oshiro

The story creation year is 2014. 
The story headline is "Exploring the estate". 
The story genre is "Literature". 
Release along with a website.
Release along with cover art.

when play begins:
	say "You are Elizabeth Bennet, and you are at Mr. Bingley's Netherfield estate. Your sister Jane is sick, so you came to visit. You hope to try help her get back to health, but you mostly want to explore the place." 

the description of the player is "You are Elizabeth Bennet, aka Lizzy. Your dress is slightly muddy from the walk to the estate and your hair is not in the best shape. Oh well."

rule for deciding whether all includes something:
	stop.

Rule for printing a parser error when the latest parser error is the nothing to do error:
	say "That's not behavior befitting a lady." instead.
	
Main room is a room. description of main room is "A large room that leads to an office to the west, a ballroom to the east, the dining room to the north. You see a staircase next to the dining room doorway."

Main room is east of office. 
The office is a room. description of office is "A large room with a desk and sofas. Paintings hang on one wall and large windows are on another and the kitchen door to the north."

desk is a thing. desk is not portable. desk is in office. 
description of desk is "That is mahogany."

drawers is a thing. drawers is not portable. drawers is in office. description of drawers is "Beautiful white with gold trim."

office-windows is a thing. office-windows is scenery in office. understand "windows" as office-windows. description of windows is "You see a lawn bordered with trees and a small lake in the distance. It's a wonderful view."

paintings is scenery in office. description of paintings is "Exquisite paintings of foreign scenery."

pouring is an action applying to one thing. Understand "pour [thing]" as pouring. 

pitcher is a thing. pitcher is in kitchen. description of pitcher is "A white clay water pitcher that has designs of birds and flowers on it. You should pour some water for Jane, maybe."

instead of pouring pitcher: say "You take the water pitcher and pour a glass of water for Jane.";
	remove pitcher from play;
	move water to player.

instead of pouring water: say "You take the water pitcher and pour a glass of water for Jane.";
	remove pitcher from play;
	move water to player.

 kitchen is a room. water is a thing. water is in kitchen. water is undescribed.

kitchen-door is a door. understand "door" as kitchen-door. kitchen-door is south of kitchen and north of office. kitchen-door is closed.

Bingley is a male person. Bingley is in the office. Description of Bingley is "A good-looking man with a friendly personality. Very charming."

Instead of talking to bingley: say "Bingley tells you that Jane is still a bit unwell, but no worries- she will be in good health soon. He has enjoyed her company thusfar."

dining room is a room. dining room is east of kitchen and north of main room. description of dining room is "A lavish room with a long table that can sit at least 20 people in the middle. Wood shelves line the walls."

shelves is a thing. shelves is not portable. shelves is in dining room. Description of shelves is "Decorative plates and figurines sit on the intricately carved mahogany shelves."

the dining-table is a thing. understand "table" as the dining-table. dining-table is not portable. the dining-table is in dining room. 
description of the dining-table is "A long mahogany table with chairs to match. A blue silk runner is positioned in the middle of the table. Candle holders are placed along the runner."

looking under to is an action applying to one thing. Understand "look under [something]" as looking under. 

[referenced dylan vodzak's The Prank]
Instead of looking under dining-table when the Cat is lost:
	move cat to dining room;
	now the cat is found;
	say "You see a cat!".
	
[HAHAHHAHAHAH]
Cat is a thing. Cat can be found or lost. cat is a lost. Cat is not portable. 

description of Cat is "A fat tabby cat with blue eyes. It seems curious about you, but it doesn't move."

petting is an action applying to one thing. Understand "pet [thing]" as petting. 

instead of petting cat: say "The tabby nuzzles into your hand and purs. She is very soft."

ballroom is a room. ballroom is east of main room. description of ballroom is "A large spacious room with marble floors and large windows on one wall. A grand chandelier hangs from the ceiling and marble columns near the walls. Paintings hang on all walls."

[jesus christ darcy what you doin]
At 9:10 AM: 
	move darcy to location of player;
	say "It seems that Darcy appeared out of nowhere. He's just watching you. He'll leave soon."
 
At 9:11 AM: move darcy to hallway.

At 9:20 AM: 
	move darcy to location of player;
	say "It seems that Darcy appeared out of nowhere again. You ignore him."
	
At 9:21 AM: move darcy to hallway.

At 9:30 AM: 
	move darcy to location of player;
	say "It seems that Darcy appeared out of nowhere. Darcy says: I hope you found your sister."

At 9:31 AM: move darcy to hallway.

[Piano part from Ms. Kiang]
Instead of playing a topic listed in the Table of Songs, say "[song entry][line break]".

piano is a thing. piano is in ballroom. piano is fixed in place. description of piano is "A shiny, black grand piano. You know your sister Mary would fall in love with it."

Understand "play [text]" as playing. Playing is an action applying to one topic.
Carry out playing:
	say "That doesn't sound right."

Table of Songs
Topic	song
"CDEFGABC"	"You play a nice scale."
"piano/song"	"Play specific notes. Maybe a scale? A nice song?"
"Anaconda"	"My anaconda don't."
"Clair de Lune"	"Nicely played. Very soothing."

Miss Bingley is a female person. Miss Bingley is in ballroom.

Instead of asking miss bingley about a topic listed in the Table of miss bingley's Replies, say "[reply entry]".

Report asking miss bingley about something:
	say "Miss bingley has nothing to say about [the topic understood]. Try asking her about other things such as the piano or darcy instead." instead.

Table of miss bingley's Replies
Topic	Reply
"piano"	"Why don't you play something for me?"
"darcy"	"Such a dashing man, isn't he? He never humors me though."
"jane"	"She's upstairs."

Instead of talking to miss bingley, say "Miss bingley asks you to play the piano."

stairs is an open door. stairs is up of main room and above main room.

hallway is a room. hallway is up of stairs. description of hallway is "A narrow hall with a floral carpet across the length. A bathroom is to the east and a bedroom to the north and west."

Darcy is a male person. Darcy is in hallway. description of Darcy is "A prideful man that is almost unbearable. He is decent-looking and very rich, but that is all he has going for him. The prick."

talking to is an action applying to one thing. Understand "talk to [somebody]" as talking to. 

instead of talking to darcy, say "Good day, Miss Elizabeth."

Instead of asking the darcy about a topic listed in the Table of Darcy's Replies, say "[reply entry]".

Report asking Darcy about something:
	say "Darcy has nothing to say about [the topic understood]. Try asking him about other things such as Jane or the weather." instead.

Table of Darcy's Replies
Topic	Reply
"Jane"	"She's in the north bedroom."
"Medicine"	"Did you check the bathroom?"
"Weather"	"The weather is quite cool today, isn't it? Not many clouds in the sky either."

bathroom is a room. bathroom is east of hallway. description of bathroom is "A bathtub is seated in the right corner and a toilet to the left. A sink with a mirror cabinet is against the wall to the left of the toilet."

wash basin is a thing. wash basin is in bathroom. wash basin is not portable. description of wash basin is "A white marble basin in front of the lavishly framed mirror. Maybe you should clean up a little; you're kind of dirty."

washing is an action applying to one thing. Understand "wash [thing]" as washing. 

hands is a thing.  hands is part of player. hands is undescribed.

face is a thing. face is part of player. face is undescribed.

instead of washing hands, say "You feel clean now!"

instead of washing face, say "Ahh, nice cool water is refreshing."

toilet is a thing. toilet is in bathroom. toilet is not portable. description of toilet is "Even the toilet is nicely decorated. Embossed flowers on the seat."

using is an action applying to one thing. Understand "use [thing]" as using.
instead of using toilet, say "You don't feel the urge to relieve yourself." 

[describe cabinet and add more things in cabinet]
cabinet is a closed openable container. cabinet is in bathroom. cabinet is not portable. description of cabinet is "A fancy wooden cabinet with a carved squirrel on the top."

mirror is a thing. mirror is not portable. mirror is in bathroom. description of mirror is "You see yourself in the mirror. Your hair looks terrible."

medicine is a thing. medicine is in cabinet. description of medicine is "A green glass medicine bottle about the size of your hand. The liquid looks brown and gross and really old.."
	
[put more things in bedroom]
north bedroom is a room. north bedroom is north of hallway. description of north bedroom is "A decent-sized room. A window is on the far wall and shelves line the wall to the left. A wardrobe is next to the window. You see Jane lying on the bed in the middle of the room."

window is a closed openable container. window is in north bedroom. window is not portable. description of window is "Closed bay windows that have floral curtains pulled to each side."

instead of opening window, say "You open the windows to let some fresh air in and a cool breeze flows through your hair. You have a nice view of the Netherfield estate from here. You admire the well-trimmed trees of the back garden and the lush forest in the distance."

wardrobe is a closed openable container. wardrobe is fixed in place. wardrobe is in north bedroom.
instead of opening the wardrobe, say "You see a few exquisite dresses hanging and some shoes at the bottom."

dresses is a thing. dresses is in wardrobe. dresses is not portable. description of dresses is "Full, lacy gowns. You wonder whose they are."

Jane is a female person. Jane is in north bedroom. description of Jane is "Your dear sick sister, lying in bed with a cold. Ask her about bingley to lift her spirits, perhaps."

instead of talking to jane, say "Jane smiles at you."

Report asking jane about something:
	say "Jane has nothing to say about [the topic understood]. Try asking her about other things such as the window or Bingley." instead.
	
Instead of asking the jane about a topic listed in the Table of jane's Replies, say "[reply entry]".

Table of Jane's Replies
Topic	Reply
"windows"	"The view is great from the window. Did you see the garden?"
"Bingley"	"Oh, he's such a great man. He and his sister have been nothing but kind to me."
"her health"	"I'm still feeling unwell. Hopefully I get better soon because I feel like a burden."

west bedroom is a room. west bedroom is west of hallway. description of west bedroom is "A large bedroom that doesn't look very lived in. A four-poster bed is on the east wall and paintings hang on the walls. A wardrobe and a dresser sits next to the bed. A small piano sits across the room from the bed and a sofa in the middle."

[give water and medicine]
Instead of giving water to Jane: 
	end the story finally saying "Jane thanks you for the water and she looks refreshed. You did your best to help your sister and it seems like she is getting better! 
	THE END"
	
Instead of giving medicine to Jane: 
	end the story finally saying "Oops! turns out that medicine had expired ten years ago. You just killed Jane.
	THE END"
	
[shortest route
w
n
pour water
e
s
up
n
give water to jane]



