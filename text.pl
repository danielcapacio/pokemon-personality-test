/*
 * defining personality values for each type in the order:
 * [extraversion, conscientiousness, agreeableness, neuroticism, openness]
 */
values_type(water, [3, 3, 8, 1, 3]).
values_type(steel, [8, 7, 2, 3, 2]).
values_type(rock, [7, 6, 1, 2, 3]).
values_type(psychic, [4, 6 ,6 ,8 ,9]).
values_type(poison, [5, 9, 2, 4, 1]).
values_type(normal, [5, 5, 5, 5, 5]).
values_type(ice, [1, 9, 1, 1, 1]).
values_type(ground, [7, 7, 5, 4,7]).
values_type(grass, [8, 9, 9, 1, 9]).
values_type(ghost, [1, 1, 9, 8, 9]).
values_type(flying, [1, 2, 4, 2, 4]).
values_type(fighting, [9, 9, 2, 4, 5]).
values_type(fairy, [1, 9, 4, 2, 3]).
values_type(electric, [6, 1, 4, 9, 5]).
values_type(dragon, [1, 6, 3, 2, 4]).
values_type(dark, [4, 3, 6, 2, 1]).
values_type(bug, [7, 5, 2, 5, 3]).

% questions
question_label_1('You stand in front of the mirror after finishing your 5-step K-beauty \nmorning skincare routine. Hair is set, teeth brushed, and your best clothes equipped.\nWhat would you rate yourself out of 10? \n(1 = I would still be a rat, 10 = I would be a very beautiful rat)').
question_label_2('The sky thunders and lightning strikes every 5 seconds. There is a heavy rainstorm and \nthe wind feels like a tornado. You just finished shopping from Costco and arrived at your car. \nAfter unloading, do you return the shopping cart to the designated area in a parking lot 70 meters \naway? \n(1 = never, I am a horrible person, 10 = always, even if it means I get struck by lightning)').
question_label_3('You are at McDonalds and the card machine prompts you to donate 37% of your order to \nsave children. The cashier deeply stares into your soul. How likely are you to crumble under the \npressure and donate? \n(1 = never, 37% is too much, 10 = It is for a good cause after all…)').
question_label_4('You are lying in your bed at 1:00 AM trying to fall asleep. Out of nowhere, a memory \nfrom 3 years ago of you miserably failing a handshake with your friend resurfaces. How likely are \nyou to start kicking your blanket? \n(1 = never, past mistakes don’t affect me, 10 = always, I did \nthis tonight)').
question_label_5('One day, you magically turn into a dog. You are strolling the streets of Tokyo on a \nsunny day and behind the falling leaves of sakura leaves, you spot the most beautiful dog you have \never seen. Do you ask him or her out? \n(1= never, I am a cat person 10= always, life is too short to be worried about being a dog)').

% define personality types with their corresponding images and explanations
personality_type(bug, 'assets/images/xpm/typings/bug.xpm', 'Bug-type Pokémon embody traits such as resourcefulness, persistence, and attention \nto detail, which are often valued in human problem-solving and \nanalytical skills. People with these traits tend to be analytical, \nobservant, and detail-oriented, with a natural talent for finding creative \nsolutions to problems. They are also adaptable and can easily \nthink on their feet in challenging situations.').
personality_type(dark, 'assets/images/xpm/typings/dark.xpm', 'Dark-type Pokémon embody traits such as intelligence, cunning, and loyalty, \nwhich are often valued in human interactions. People with these \ntraits tend to be highly intelligent and analytical, able to \nread and understand motivations and emotions of those around them. They are also \nloyal to their close friends and family, but can be \nperceived as mysterious or unpredictable to others.').
personality_type(dragon, 'assets/images/xpm/typings/dragon.xpm', 'Dragon-type Pokémon embody traits such as strength, resilience, and ambition, \nwhich are often admired in human leaders. People with these \ntraits tend to be ambitious, driven, and focused, always pushing \nthemselves to achieve their goals. They are also passionate about \ntheir work and tend to inspire those around them with \ntheir charisma and leadership.').
personality_type(electric, 'assets/images/xpm/typings/electric.xpm', 'Electric-type Pokémon embody traits such as energy, curiosity, and innovation, \nwhich are often valued in human creativity and ingenuity. People \nwith these traits tend to be curious and playful, with \na natural talent for innovation and problem-solving. They are also \nhighly energetic and driven, always seeking out new challenges and \nadventures.').
personality_type(fairy, 'assets/images/xpm/typings/fairy.xpm', 'Fairy-type Pokémon embody traits such as empathy, compassion, and creativity, \nwhich are often valued in human artists and caregivers. People \nwith these traits tend to be highly empathetic and compassionate, \nwith a natural talent for helping others. They are also \nhighly creative and imaginative, often drawn to the beauty and \naesthetics of the world around them.').
personality_type(fighting, 'assets/images/xpm/typings/fighting.xpm', 'Fighting-type Pokémon embody traits such as discipline, focus, and determination, \nwhich are often valued in human athletes and high-achievers. People \nwith these traits tend to be highly disciplined and focused, \nwith a strong sense of purpose and direction. They are \nalso highly motivated and driven, always striving to improve themselves \nand their skills.').
personality_type(fire, 'assets/images/xpm/typings/fire.xpm', 'Fire is a type of element that is often associated \nwith passion, energy, and intensity. In humans, a fiery personality \nmay manifest as being bold, confident, and assertive, with a \nstrong sense of purpose and a desire to achieve their \ngoals. Similarly, Fire-type Pokémon like Charmander and Arcanine are known \nfor their fiery personalities and fierce fighting abilities. However, just like \nin humans, a fiery personality can also be proneto impulsivity, \nimpatience, and a quick temper. It is important for both \nFire-type Pokémon and humans with a fiery personality to learn to \nmanage their emotions and channel their energy in productive ways, rather \nthan letting it lead to conflict or burnout.').
personality_type(flying, 'assets/images/xpm/typings/flying.xpm', 'Flying-type Pokémon embody traits such as freedom, independence, and confidence, \nwhich are often valued in human adventurers and risk-takers. People \nwith these traits tend to be highly independent and self-sufficient, \nwith a natural talent for exploration and adventure. They are \nalso highly confident and assertive, with a strong sense of \nself and a desire to soar to new heights.').
personality_type(ghost, 'assets/images/xpm/typings/ghost.xpm', 'Ghost-type Pokémon embody traits such as mystery, introspection, and sensitivity, \nwhich are often valued in human artists and introspective individuals. \nPeople with these traits tend to be highly sensitive and \nintrospective, with a natural talent for exploring the mysteries of \nthe world around them. They are also highly imaginative and \ncreative, drawn to the beauty and complexity of the world \naround them.').
personality_type(grass, 'assets/images/xpm/typings/grass.xpm', 'Grass is a type of element that is often associated \nwith growth and vitality. In humans, a growth-oriented personality may \nmanifest as being curious, open-minded, and willing to learn and \nexplore new things. Similarly, Grass-type Pokémon like Treecko and Snivy \nare known for their agility and versatility, able to traverse \nthe treetops with ease and launch powerful Grass-type moves like \nBullet Seed and Leaf Blade. However, just like in humans, \na growth-oriented personality can also be prone to being too \nrestless and constantly seeking novelty. It is important for both \nGrass-type Pokémon and humans to find a balance between exploring \nnew things and being grounded in the present moment.').
personality_type(ground, 'assets/images/xpm/typings/ground.xpm', 'Ground-type Pokémon embody traits such as stability, practicality, and patience, \nwhich are often valued in human professionals and leaders. People \nwith these traits tend to be highly practical and goal-oriented, \nwith a natural talent for finding stability and balance in \ntheir lives. They are also highly patient and resilient, able \nto weather the storms of life and emerge stronger on \nthe other side.').
personality_type(ice, 'assets/images/xpm/typings/ice.xpm', 'Ice-type Pokémon embody traits such as purity, clarity, and intuition, \nwhich are often valued in human healers and intuitives. People \nwith these traits tend to be highly intuitive and empathetic, \nwith a natural talent for healing and helping others. They \nare also highly focused and disciplined, able to channel their \nenergy and intention toward their goals with clarity and purity.').
personality_type(normal, 'assets/images/xpm/typings/normal.xpm', 'Normal-type Pokémon embody traits such as adaptability, balance, and versatility, \nwhich are often valued in human professionals and problem-solvers. People \nwith these traits tend to be highly adaptable and versatile, \nable to handle a variety of tasks and challenges with \nease. They are also highly balanced and pragmatic, able to \nfind the middle ground between different perspectives and opinions.').
personality_type(poison, 'assets/images/xpm/typings/poison.xpm', 'Poison-type Pokémon embody traits such as cunning, strategy, and perseverance, \nwhich are often valued in human strategists and planners. People \nwith these traits tend to be highly strategic and analytical, \nable to anticipate and plan for potential obstacles and challenges. \nThey are also highly persevering and resilient, able to overcome \nsetbacks and obstacles with determination and focus.').
personality_type(psychic, 'assets/images/xpm/typings/psychic.xpm', 'Psychic-type Pokémon embody traits such as intuition, insight, and sensitivity, \nwhich are often valued in human healers and intuitives. People \nwith these traits tend to be highly empathetic and intuitive, \nable to sense and understand the emotions and motivations of \nothers. They are also highly insightful and introspective, with a \nnatural talent for exploring the mysteries of the mind and \nspirit.').
personality_type(rock, 'assets/images/xpm/typings/rock.xpm', 'Rock-type Pokémon embody traits such as strength, endurance, and resilience, \nwhich are often valued in human athletes and adventurers. People \nwith these traits tend to be highly resilient and enduring, \nable to handle the challenges and obstacles of life with \nstrength and determination. They are also highly focused and disciplined, \nable to channel their energy and intention toward their goals \nwith focus and determination.').
personality_type(steel, 'assets/images/xpm/typings/steel.xpm', 'Steel-type Pokémon embody traits such as strength, resilience, and determination, \nwhich are often valued in human professionals and leaders. People \nwith these traits tend to be highly disciplined and focused, \nwith a natural talent for finding stability and balance in \ntheir lives. They are also highly resilient and enduring, able \nto weather the storms of life and emerge stronger on \nthe other side.').
personality_type(water, 'assets/images/xpm/typings/water.xpm', 'Water is a type of element that is often associated \nwith calmness and adaptability. In humans, a calm and adaptable \npersonality may manifest as being patient, flexible, and able to \ncope with changes and challenges. Similarly, Water-type Pokémon like Mudkip \nand Lapras are known for their tenacity and adaptability, able \nto thrive in a variety of environments and learn moves \nlike Surf and Hydro Pump to help them in battle. \nHowever, just like in humans, a calm personality can also \nbe prone to being too passive and indecisive. It is \nimportant for both Water-type Pokémon and humans to learn to \nassert themselves when necessary and not let their calm nature \nlead to inaction.').

% pokemon names
personality_name(bug, 'Caterpie').
personality_name(dark, 'Darkrai').
personality_name(dragon, 'Dratini').
personality_name(electric, 'Pikachu').
personality_name(fairy, 'Togepi').
personality_name(fighting, 'Riolu').
personality_name(fire, 'Charmander').
personality_name(flying, 'Pidgey').
personality_name(ghost, 'Misdreavus').
personality_name(grass, 'Treecko').
personality_name(ground, 'Cubone').
personality_name(ice, 'Vanilluxe').
personality_name(normal, 'Eevee').
personality_name(poison, 'Koffing').
personality_name(psychic, 'Mew').
personality_name(rock, 'Regirock').
personality_name(steel, 'Klink').
personality_name(water, 'Mudkip').
